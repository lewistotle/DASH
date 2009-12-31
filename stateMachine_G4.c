/*
 ============================================================================
 Name        : StateMachine_G4.c
 Author      :
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */


#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

#include "stateMachine_G4.h"

#define configMAXIMUM_NUMBER_OF_STATE_MACHINES		50
#define configMAXIMUM_STATE_HIERARCHY_DEPTH			16

enum { REQUIRED_STATE_MACHINE_EVENTS } ;

stateMachine_t*	stateMachines[configMAXIMUM_NUMBER_OF_STATE_MACHINES] ;


void iterateStateMachine(	stateMachine_t* sm) ;


stateMachine_t* allocateStateMachineMemory(		uint16_t sizeInBytes,
												uint16_t eventQueueDepth,
												stateMachineConstructor_t constructor)
{
	stateMachine_t*	instance = malloc(sizeInBytes) ;

	if(instance)
	{
		event_t** eventQueue = (event_t**)malloc(eventQueueDepth * sizeof(event_t*)) ;

		if(eventQueue)
		{
			initializeEventQueue(&instance->eventQueue, eventQueue, eventQueueDepth) ;

			memset((char*)instance,		0, sizeInBytes) ;
			memset((char*)eventQueue,	0, eventQueueDepth * sizeof(event_t*)) ;

			constructor(instance) ;
		}
	}

	return instance ;
}


void deallocateStateMachineMemory(				stateMachine_t* instance, stateMachineDestructor_t destructor)
{
	if(instance != 0)
	{
		destructor(instance) ;

		free((char*)instance) ;
	}
}


bool registerStateMachine(			stateMachine_t* sm)
{
	if(sm)
	{
		uint8_t	statetMachineIndex ;

		for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
		{
			if(stateMachines[statetMachineIndex] == NULL)
			{
				stateMachines[statetMachineIndex] = sm ;

				return true ;
			}
		}
	}

	return false ;
}

bool unregisterStateMachine(		stateMachine_t* sm)
{
	if(sm)
	{
		uint8_t	statetMachineIndex ;

		for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
		{
			if(stateMachines[statetMachineIndex] == sm)
			{
				stateMachines[statetMachineIndex] = NULL ;

				return true ;
			}
		}
	}

	return false ;
}


void iterateAllStateMachines(	void)
{
	uint8_t	statetMachineIndex ;

	for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
	{
		if(stateMachines[statetMachineIndex] != NULL)
		{
			iterateStateMachine(stateMachines[statetMachineIndex]) ;
		}
	}
}


char*			eventTypes[]			= { "SUBSTATE_GET_INFO", "SUBSTATE_ENTRY", "SUBSTATE_INITIAL_TRANSITION", "SUBSTATE_EXIT" } ;
char*			responseTypes[]			= { "IGNORED", "HANDLED", "TRANSITION" } ;
static event_t	initialTransitionEvent	= { SUBSTATE_INITIAL_TRANSITION } ;
static event_t	enterEvent				= { SUBSTATE_ENTRY } ;
static event_t	exitEvent				= { SUBSTATE_EXIT } ;


stateHandlerResponse_t callStateHandler(stateMachine_t* sm, state_t* state, event_t* event)
{
	stateHandlerResponse_t	response ;

#ifdef TRACING_ENABLED
	printf("\t\t\tCalling state: %s, event: %s, ", state->stateName, event->eventType <= SUBSTATE_EXIT ? eventTypes[event->eventType] : "<USER_EVENT>") ;
#endif

	response = ((callStateHandler_t)(state->handler))(sm, event) ;

#ifdef TRACING_ENABLED
	printf("response: %s ", responseTypes[response]) ;
#endif

	if(response == TRANSITION)
	{
#ifdef TRACING_ENABLED
		printf("to %s ", ((state_t*)(sm->nextState))->stateName) ;
#endif
	}

#ifdef TRACING_ENABLED
	printf("\n") ;
#endif

	return response ;
}


void iterateStateMachine(	stateMachine_t* sm)
{
#ifdef TRACING_ENABLED
	printf("\titerating %s\n", sm->stateMachineName) ;
#endif

	/* First of all, is the machine initialized? If not, take care of that. */

	if(!sm->stateMachineInitialized)
	{
#ifdef TRACING_ENABLED
		printf("\t\tinitializing...\n") ;
#endif

		sm->currentState = (state_t*)sm->topState ;

		callStateHandler(sm, sm->currentState, &enterEvent) ;

		sm->stateMachineInitialized	= true ;
		sm->forceTransition			= true ;
	}

	/* Any pending events? */

	if((!isEmpty(&sm->eventQueue)) || (sm->forceTransition))
	{
		event_t*				eventToProcess ;
		state_t*				stateBeingProcessed	= sm->currentState ;
		stateHandlerResponse_t	action ;

		if(sm->forceTransition)
		{
			sm->forceTransition	= false ;
			eventToProcess		= &initialTransitionEvent ;
		}
		else
		{
			eventToProcess = Remove(&sm->eventQueue) ; ;
		}

		sm->nextState = (state_t*)0 ;	/* just a little housecleaning */

#ifdef TRACING_ENABLED
		printf("\t\tProcessing event...\n") ;
#endif

		/* Now run the event through the hierarchy starting at the current state
		 * and going all the way to the top looking for either the event to be
		 * handled or a transition taken. If the event is not one of the required
		 * state machine events and it is ignored, move up to the parent state
		 * and try again. When the top is reached, bail... */

		do
		{
			action = callStateHandler(sm, stateBeingProcessed, eventToProcess) ;

			if((action == IGNORED) && (eventToProcess->eventType > SUBSTATE_EXIT))
			{
				stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;

#ifdef TRACING_ENABLED
				printf("\t\t\t\t\t\t\tmoving to parent: %s\n", stateBeingProcessed ? stateBeingProcessed->stateName : "<root>") ;
#endif
			}
			else
			{
				/* The event was handled or a transition was taken.
				 * In either case, no need to continue up the chain. */

				break ;
			}
		} while(stateBeingProcessed) ;

		if(action == TRANSITION)
		{
			state_t*	source	= sm->currentState ;
			state_t*	target	= sm->nextState ;

			/* There are 8 different cases here. They are handled in case of complexity... */

			if(source == target)
			{
#ifdef TRACING_ENABLED
				printf("\t\t\t\tSelf transition.\n") ;
#endif

				/* Self transition. Exit and then re-enter the same state */

				callStateHandler(sm, source, &exitEvent) ;
				sm->currentState = target ;
				callStateHandler(sm, target, &enterEvent) ;
			}
			else if(source == (state_t*)(target->parent))
			{
#ifdef TRACING_ENABLED
				printf("\t\t\t\tTransition to direct child.\n") ;
#endif

				/* target is a direct child of the source. Only need to enter
				 * the target here without having to exit the source. */

				sm->currentState = target ;
				callStateHandler(sm, target, &enterEvent) ;
			}
			else if((state_t*)(source->parent) == (state_t*)(target->parent))
			{
#ifdef TRACING_ENABLED
				printf("\t\t\t\tTransition to direct peer.\n") ;
#endif

				/* A direct peer transition within the same parent state.
				 * Exit the source and then enter the target. */

				callStateHandler(sm, source, &exitEvent) ;
				sm->currentState = target ;
				callStateHandler(sm, target, &enterEvent) ;
			}
			else if((state_t*)(source->parent) == target)
			{
#ifdef TRACING_ENABLED
				printf("\t\t\t\tTransition to direct parent.\n") ;
#endif

				/* target is the direct parent of the source. Only need to exit
				 * the source without having to re-enter the target since it
				 * was already active. */

				sm->currentState = target ;
				callStateHandler(sm, source, &exitEvent) ;
			}
			else
			{
				state_t*	sourceHierarchy[configMAXIMUM_STATE_HIERARCHY_DEPTH] ;
				uint8_t		sourceIndex ;
				state_t*	targetHierarchy[configMAXIMUM_STATE_HIERARCHY_DEPTH] ;
				uint8_t		targetIndex ;
				state_t*	LCA ;
				uint8_t		entryIndex ;
				uint8_t		exitIndex ;

				/* This is where things start to get complicated... */

#ifdef TRACING_ENABLED
				printf("\t\t\t\tScanning source hierarchy...\n") ;
#endif

				sourceIndex			= 0 ;
				targetIndex			= 0 ;
				stateBeingProcessed	= source ;

				do
				{
					sourceHierarchy[sourceIndex++] = stateBeingProcessed ;

#ifdef TRACING_ENABLED
					printf("\t\t\t\t\tsourceHierarchy[%d] = %s\n", sourceIndex - 1, stateBeingProcessed->stateName) ;
#endif

					if(stateBeingProcessed == target)
					{
						uint8_t	exitIndex = 0 ;

#ifdef TRACING_ENABLED
						printf("\t\t\t\t\t\tFound target as ancestor of source\n") ;
#endif

						sourceIndex-- ;

						while(exitIndex < sourceIndex)
						{
#ifdef TRACING_ENABLED
							printf("\t\t\t\t") ;
#endif

							callStateHandler(sm, sourceHierarchy[exitIndex], &exitEvent) ;

							exitIndex++ ;
						}

						sm->currentState = target ;

						break ;
					}

					stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;
				} while(stateBeingProcessed) ;

				if(sm->currentState != target)
				{
#ifdef TRACING_ENABLED
					printf("\t\t\t\tScanning target hierarchy...\n") ;
#endif

					targetIndex			= 0 ;
					stateBeingProcessed	= target ;

					do
					{
						targetHierarchy[targetIndex] = stateBeingProcessed ;

#ifdef TRACING_ENABLED
						printf("\t\t\t\t\ttargetHierarchy[%d] = %s\n", targetIndex, stateBeingProcessed->stateName) ;
#endif

						if(stateBeingProcessed == source)
						{
#ifdef TRACING_ENABLED
							printf("\t\t\t\t\t\tFound source as ancestor of target\n") ;
#endif

							while(targetIndex--)
							{
#ifdef TRACING_ENABLED
								printf("\t\t\t\t") ;
#endif
								callStateHandler(sm, targetHierarchy[targetIndex], &enterEvent) ;
							}

							sm->currentState = target ;

							break ;
						}

						targetIndex++ ;
						stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;
					} while(stateBeingProcessed) ;
				}

				if(sm->currentState != target)
				{
					uint8_t	LCAindex = 0 ;

#ifdef TRACING_ENABLED
					printf("\t\t\t\tStill haven't found relationship. Scanning for LCA...\n") ;
#endif
					LCA			= 0 ;
					entryIndex	= targetIndex - 1 ;
					exitIndex	= sourceIndex - 1 ;
#ifdef TRACING_ENABLED
					printf("\t\t\t\t\tentryIndex = %d, exitIndex = %d\n", entryIndex, exitIndex) ;
#endif

					while(sourceHierarchy[exitIndex] == targetHierarchy[entryIndex])
					{
						LCA = sourceHierarchy[exitIndex] ;

						entryIndex-- ;
						exitIndex-- ;

#ifdef TRACING_ENABLED
						printf("\t\t\t\t\tCurrent LCA candidate: %s\n", LCA->stateName) ;
#endif

						LCAindex++ ;
					}

#ifdef TRACING_ENABLED
					printf("\t\t\t\t\tLCA of %s and %s is: %s\n", source->stateName, target->stateName, LCA->stateName) ;
					printf("\t\t\t\t\tentryIndex = %d, exitIndex = %d\n", entryIndex, exitIndex) ;
#endif

					sourceIndex	= exitIndex + 1 ;
					exitIndex	= 0 ;

					while(exitIndex < sourceIndex)
					{
#ifdef TRACING_ENABLED
						printf("\t\t\t\t") ;
#endif

						callStateHandler(sm, sourceHierarchy[exitIndex], &exitEvent) ;

						exitIndex++ ;
					}

					targetIndex = entryIndex + 1 ;

					while(targetIndex--)
					{
#ifdef TRACING_ENABLED
						printf("\t\t\t\t") ;
#endif
						callStateHandler(sm, targetHierarchy[targetIndex], &enterEvent) ;
					}

					sm->currentState = target ;
				}
			}

			/* Now force an initial transition event that will cause the
			 * target state to execute any initial transactions it might
			 * have so the next iteration through this loop will catch it. */

			sm->forceTransition = true ;
		}
	}

#ifdef TRACING_ENABLED
	printf("\t\tEvent queue empty.\n") ;
#endif
}
