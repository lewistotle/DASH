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


stateMachine_t* allocateStateMachineMemory(		uint16_t sizeInBytes)
{
	stateMachine_t*	instance = malloc(sizeInBytes) ;

	if(instance)
	{
		memset((char*)instance, 0, sizeInBytes) ;
	}

	return instance ;
}


void deallocateStateMachineMemory(				stateMachine_t* instance)
{
	if(instance != 0)
	{
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


char*	eventTypes[]	= { "SUBSTATE_GET_INFO", "SUBSTATE_ENTRY", "SUBSTATE_INITIAL_TRANSITION", "SUBSTATE_EXIT" } ;
char*	responseTypes[]	= { "IGNORED", "HANDLED", "TRANSITION" } ;


stateHandlerResponse_t callStateHandler(stateMachine_t* sm, state_t* state, event_t* event)
{
	stateHandlerResponse_t	response ;

	printf("\t\t\tCalling state: %s, event: %s, ", state->stateName, event->eventType <= SUBSTATE_EXIT ? eventTypes[event->eventType] : "<USER_EVENT>") ;

	response = ((callStateHandler_t)(state->handler))(sm, event) ;

	printf("response: %s ", responseTypes[response]) ;

	if(response == TRANSITION)
	{
		printf("to %s ", ((state_t*)(sm->nextState))->stateName) ;
	}

	printf("\n") ;

	return response ;
}


void iterateStateMachine(	stateMachine_t* sm)
{
	static event_t	initialTransitionEvent	= { SUBSTATE_INITIAL_TRANSITION } ;
	static event_t	enterEvent				= { SUBSTATE_ENTRY } ;
	static event_t	exitEvent				= { SUBSTATE_EXIT } ;
	bool			forceTransition			= false ;
	static int iterationMax = 10 ;

	printf("\titerating %s\n", sm->stateMachineName) ;

	/* First of all, is the machine initialized? If not, take care of that. */

	if(!sm->stateMachineInitialized)
	{
		printf("\t\tinitializing...\n") ;

		sm->currentState = (state_t*)sm->topState ;

		callStateHandler(sm, sm->currentState, &enterEvent) ;

		sm->stateMachineInitialized = true ;

		forceTransition = true ;
	}

	/* Any pending events? */

	while((!isEmpty(&sm->eventQueue)) || (forceTransition))
	{
		event_t*				eventToProcess ;//		= Remove(&sm->eventQueue) ;
		state_t*				stateBeingProcessed	= sm->currentState ;
		stateHandlerResponse_t	action ;

		if(forceTransition)
		{
			forceTransition = false ;
			eventToProcess = &initialTransitionEvent ;
		}
		else
		{
			eventToProcess = Remove(&sm->eventQueue) ; ;
		}

		sm->nextState = (state_t*)0 ;	/* just a little housecleaning */

		if(iterationMax-- == 0)
		{
			break ;
		}

		printf("\t\tProcessing event...\n") ;

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

				printf("\t\t\t\t\t\t\tmoving to parent: %s\n", stateBeingProcessed ? stateBeingProcessed->stateName : "<root>") ;
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
				printf("\t\t\t\tSelf transition.\n") ;

				/* Self transition. Exit and then re-enter the same state */

				callStateHandler(sm, source, &exitEvent) ;
				sm->currentState = target ;
				callStateHandler(sm, target, &enterEvent) ;
			}
			else if(source == (state_t*)(target->parent))
			{
				printf("\t\t\t\tTransition to direct child.\n") ;

				/* target is a direct child of the source. Only need to enter
				 * the target here without having to exit the source. */

				sm->currentState = target ;
				callStateHandler(sm, target, &enterEvent) ;
			}
			else if((state_t*)(source->parent) == (state_t*)(target->parent))
			{
				printf("\t\t\t\tTransition to direct peer.\n") ;

				/* A direct peer transition within the same parent state.
				 * Exit the source and then enter the target. */

				callStateHandler(sm, source, &exitEvent) ;
				sm->currentState = target ;
				callStateHandler(sm, target, &enterEvent) ;
			}
			else if((state_t*)(source->parent) == target)
			{
				printf("\t\t\t\tTransition to direct parent.\n") ;

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

				printf("\t\t\t\tScanning source hierarchy...\n") ;

				sourceIndex			= 0 ;
				targetIndex			= 0 ;
				stateBeingProcessed	= source ;

				do
				{
					sourceHierarchy[sourceIndex++] = stateBeingProcessed ;

					printf("\t\t\t\t\tsourceHierarchy[%d] = %s\n", sourceIndex - 1, stateBeingProcessed->stateName) ;

					if(stateBeingProcessed == target)
					{
						uint8_t	exitIndex = 0 ;

						printf("\t\t\t\t\t\tFound target as ancestor of source\n") ;

						sourceIndex-- ;

						while(exitIndex < sourceIndex)
						{
							printf("\t\t\t\t") ;

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
					printf("\t\t\t\tScanning target hierarchy...\n") ;

					targetIndex			= 0 ;
					stateBeingProcessed	= target ;

					do
					{
						targetHierarchy[targetIndex] = stateBeingProcessed ;

						printf("\t\t\t\t\ttargetHierarchy[%d] = %s\n", targetIndex, stateBeingProcessed->stateName) ;

						if(stateBeingProcessed == source)
						{
							printf("\t\t\t\t\t\tFound source as ancestor of target\n") ;

							while(targetIndex--)
							{
								printf("\t\t\t\t") ;
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

					printf("\t\t\t\tStill haven't found relationship. Scanning for LCA...\n") ;
					LCA			= 0 ;
					entryIndex	= targetIndex - 1 ;
					exitIndex	= sourceIndex - 1 ;
					printf("\t\t\t\t\tentryIndex = %d, exitIndex = %d\n", entryIndex, exitIndex) ;

					while(sourceHierarchy[exitIndex] == targetHierarchy[entryIndex])
					{
						LCA = sourceHierarchy[exitIndex] ;

						entryIndex-- ;
						exitIndex-- ;

						printf("\t\t\t\t\tCurrent LCA candidate: %s\n", LCA->stateName) ;

						LCAindex++ ;
					}

					printf("\t\t\t\t\tLCA of %s and %s is: %s\n", source->stateName, target->stateName, LCA->stateName) ;
					printf("\t\t\t\t\tentryIndex = %d, exitIndex = %d\n", entryIndex, exitIndex) ;

					sourceIndex	= exitIndex + 1 ;
					exitIndex	= 0 ;

					while(exitIndex < sourceIndex)
					{
						printf("\t\t\t\t") ;

						callStateHandler(sm, sourceHierarchy[exitIndex], &exitEvent) ;

						exitIndex++ ;
					}

					targetIndex = entryIndex + 1 ;

					while(targetIndex--)
					{
						printf("\t\t\t\t") ;
						callStateHandler(sm, targetHierarchy[targetIndex], &enterEvent) ;
					}

					sm->currentState = target ;
				}
			}

			/* Now force an initial transition event that will cause the
			 * target state to execute any initial transactions it might
			 * have so the next iteration through this loop will catch it. */

			forceTransition = true ;
		}
	}

	printf("\t\tEvent queue empty.\n") ;
}
