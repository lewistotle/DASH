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


#define TRACING_ENABLED

#undef TRACING_ENABLED
#define MINIMAL_TRACING_ENABLED


#define configMAXIMUM_NUMBER_OF_STATE_MACHINES		50
#define configMAXIMUM_NUMBER_OF_TIMEOUTS			50
#define configMAXIMUM_NUMBER_OF_WATCH_VARIABLES		50
#define configMAXIMUM_STATE_HIERARCHY_DEPTH			16

enum { REQUIRED_STATE_MACHINE_EVENTS } ;

stateMachine_t*	stateMachines[configMAXIMUM_NUMBER_OF_STATE_MACHINES] ;


void iterateStateMachine(	stateMachine_t* sm) ;


void* hsm_malloc(								uint16_t numberOfBytes)
{
	return malloc(numberOfBytes) ;
}


void hsm_free(									void* blockToFree)
{
	free(blockToFree) ;
}


event_t* hsm_createNewEvent(stateMachine_t* sm, eventType_t eventType, uint16_t eventSize)
{
	bool		allocated = false ;
	uint8_t		i ;
	uint8_t		j ;
	uint8_t*	memoryPoolLocation = (uint8_t*)(sm->startOfEventMemoryPools) ;

	// /* start out by shutting down interrupts. This is a critical section */

	/* Is this a global or local event? */

	if(eventType >= SUBSTATE_FIRST_GLOBAL_EVENT)
	{
		printf("\tCreating GLOBAL event type %d\n", eventType) ;
	}
	else
	{
		/* Loop through the state machine's event table to
		 * find an entry both big enough and unused
		 */

#ifdef TRACING_ENABLED
		printf("\tCreating event type %d, size %d, for machine '%s'\n", eventType, eventSize, sm->stateMachineName) ;
#endif

		for( i = 0 ; (i < sm->memoryPoolInfo->numberOfMemoryPools) && (!allocated) ; i++ )
		{
#ifdef TRACING_ENABLED
			printf("\t\tPool %2d (chunkSize = %2d)\n", i, sm->memoryPoolInfo->eventMemoryPools[i].chunkSize) ;
#endif

			if(sm->memoryPoolInfo->eventMemoryPools[i].chunkSize >= eventSize)
			{
				/* Found a memory pool that is big enough. Now see if there is an empty slot */

				for( j = 0 ; j < sm->memoryPoolInfo->eventMemoryPools[i].numberOfChunks ; j++ )
				{
					event_t* eventHeader = (event_t*)memoryPoolLocation ;

#ifdef TRACING_ENABLED
					printf("\t\t\tChecking event location %p: ", memoryPoolLocation) ;
#endif

					if(eventHeader->eventType == SUBSTATE_NON_EVENT)
					{
#ifdef TRACING_ENABLED
						printf("EMPTY. Filling it and bailing.\n") ;
#endif

						/* Found a spot that can take it so mark it as used and bail from the loops. */

						eventHeader->eventType = eventType ;

						/* Force an exit from the outer loop */

						allocated = true ;

						break ;
					}
					else
					{
#ifdef TRACING_ENABLED
						printf("contains event type: %d\n", eventHeader->eventType) ;
#endif
						/* No room at that inn so go to the next one */

						memoryPoolLocation += sm->memoryPoolInfo->eventMemoryPools[i].chunkSize ;
					}
				}
			}
			else
			{
				/* Adjust the pointer to point to the start of the next pool */

				memoryPoolLocation += sm->memoryPoolInfo->eventMemoryPools[i].numberOfChunks
									* sm->memoryPoolInfo->eventMemoryPools[i].chunkSize ;
			}
		}
	}

	// /* It's ok to re-enable interrupts */

	/* Now return the appropriate thing to the caller */

	if(allocated)
	{
		return (event_t*)memoryPoolLocation ;
	}
	else
	{
		printf("\t\tUnable to allocate event.\n") ;

		return (event_t*)0 ;
	}
}

stateMachine_t* allocateStateMachineMemory(		uint16_t historyArraySize,
												stateMachine_memRequirements_t getMemRequirements,
												stateMachine_constructor_t constructor)
{
	uint8_t							i ;
	const machineMemoryPoolInto_t*	memoryRequirements			= getMemRequirements() ;
	uint16_t						eventQueueDepth				= memoryRequirements->eventQueueDepth ;
	uint16_t						stateMachineSize			= sizeof(stateMachine_t) ;
	uint16_t						eventQueueSize				= (eventQueueDepth * sizeof(event_t*)) ;
	uint16_t						typesOfEventsToDeferSize	= (eventQueueDepth * sizeof(eventType_t*)) ;
	uint16_t						deferredEventQueueSize		= (eventQueueDepth * sizeof(event_t*)) ;
	uint16_t						historicalMarkerArraySize	= (historyArraySize * sizeof(void*)) ;
	uint16_t						numberOfTimerEvents			= 0 ;
	uint16_t						numberOfBytesNeeded			= stateMachineSize
																+ eventQueueSize
																+ typesOfEventsToDeferSize
																+ deferredEventQueueSize
																+ historicalMarkerArraySize ;
	stateMachine_t*					instance ;
	event_t**						eventQueue ;
	eventType_t*					typesOfEventsToDefer ;
	event_t**						deferredEventQueue ;
	void**							historicalMarkerArray ;

	/* Look for any timer event pools */

	for( i = 0 ; i < memoryRequirements->numberOfMemoryPools ; i++ )
	{
		if(memoryRequirements->eventMemoryPools[i].chunkSize == 0)
		{
			/* This is a timer event so add this set to the number of timer events.
			 * No need to worry about them in the main memory pool loop since they
			 * will equate to 0 bytes which will not increase that total at all.
			 */

			numberOfTimerEvents += memoryRequirements->eventMemoryPools[i].numberOfChunks ;
		}
	}

	/* round out to 4 byte boundaries */

	numberOfBytesNeeded = (numberOfBytesNeeded + 3) & 0xFFFCUL ;

	printf("\tstateMachineSize         : %d\n", stateMachineSize) ;
	printf("\teventQueueSize           : %d (%d events)\n", eventQueueSize, eventQueueDepth) ;
	printf("\ttypesOfEventsToDeferSize : %d\n", typesOfEventsToDeferSize) ;
	printf("\tdeferredEventQueueSize   : %d\n", deferredEventQueueSize) ;
	printf("\thistoricalMarkerArraySize: %d\n", historicalMarkerArraySize) ;
	printf("\tnumberOfTimerEvents      : %d\n", numberOfTimerEvents) ;
	printf("\tnumberOfMemoryPools      : %d\n", memoryRequirements->numberOfMemoryPools) ;

	for( i = 0 ; i < memoryRequirements->numberOfMemoryPools ; i++ )
	{
		uint16_t bytesNeededForCurrentPool = memoryRequirements->eventMemoryPools[i].chunkSize * memoryRequirements->eventMemoryPools[i].numberOfChunks ;

		printf("\t\tbytes for pool %2d: %d (%d * %d)\n", i, bytesNeededForCurrentPool, memoryRequirements->eventMemoryPools[i].chunkSize, memoryRequirements->eventMemoryPools[i].numberOfChunks) ;

		numberOfBytesNeeded += bytesNeededForCurrentPool ;

		/* round out to 4 byte boundaries */

		numberOfBytesNeeded = (numberOfBytesNeeded + 3) & 0xFFFCUL ;
	}

	/* round out to 4 byte boundaries */

	numberOfBytesNeeded = (numberOfBytesNeeded + 3) & 0xFFFCUL ;

	printf("\tAllocating %d (0x%04X) total bytes\n", numberOfBytesNeeded, numberOfBytesNeeded) ;

	instance = hsm_malloc(numberOfBytesNeeded) ;

	if(instance)
	{
		uint8_t*	memoryPoolLocation ;

		eventQueue				= (event_t**)(((char*)instance) + stateMachineSize) ;
		typesOfEventsToDefer	= (eventType_t*)(((char*)eventQueue) + eventQueueSize) ;
		deferredEventQueue		= (event_t**)(((char*)typesOfEventsToDefer) + typesOfEventsToDeferSize) ;
		historicalMarkerArray	= (void**)(((char*)deferredEventQueue) + deferredEventQueueSize) ;

		memset((char*)instance, 0, numberOfBytesNeeded) ;

		eventQueue_initialize(&instance->eventQueue, eventQueue, eventQueueDepth) ;
		eventQueue_initialize(&instance->deferredEventQueue, deferredEventQueue, eventQueueDepth) ;

		instance->maxDepthOfEventsToDeferList		= eventQueueDepth ;
		instance->currentDepthOfEventsToDeferList	= 0 ;
		instance->typesOfEventsToDefer				= typesOfEventsToDefer ;

		instance->numberOfHistoricalMarkers			= historyArraySize ;
		instance->historicalMarkers					= historicalMarkerArray ;
		instance->mostRecentlyEnteredState			= (void*)0 ;
		instance->mostRecentlyExitedState			= (void*)0 ;

		instance->memoryPoolInfo					= memoryRequirements ;
		instance->startOfEventMemoryPools			= (void*)(((char*)historicalMarkerArray) + historicalMarkerArraySize) ;

		printf("\tinstance                         : %p\n", (void*)instance) ;
		printf("\tinstance->eventQueue             : %p\n", (void*)instance->eventQueue.Array) ;
		printf("\tinstance->typesOfEventsToDefer   : %p\n", (void*)instance->typesOfEventsToDefer) ;
		printf("\tinstance->deferredEventQueue     : %p\n", (void*)instance->deferredEventQueue.Array) ;
		printf("\tinstance->historicalMarkerArray  : %p\n", (void*)instance->historicalMarkers) ;
		printf("\tinstance->startOfEventMemoryPools: %p\n", (void*)instance->startOfEventMemoryPools) ;

		memoryPoolLocation = (uint8_t*)(instance->startOfEventMemoryPools) ;

		for( i = 0 ; i < memoryRequirements->numberOfMemoryPools ; i++ )
		{
			printf("\t\tevent pool %2d start: %p\n", i, (void*)memoryPoolLocation) ;

			memoryPoolLocation += instance->memoryPoolInfo->eventMemoryPools[i].numberOfChunks
								* instance->memoryPoolInfo->eventMemoryPools[i].chunkSize ;

			memoryPoolLocation = (uint8_t*)(((uint32_t)(memoryPoolLocation + 3)) & 0xFFFFFFFCUL) ;
		}

		printf("\tinstance->historicalMarkerArray  : %p\n", (void*)instance->historicalMarkers) ;
		printf("\ttimer event memory               : %p\n", (void*)instance->historicalMarkers) ;

		printf("\tinstance last memory location    : %p\n", (void*)(((char*)instance) + numberOfBytesNeeded)) ;

		constructor(instance) ;
	}

	return instance ;
}


void deallocateStateMachineMemory(				stateMachine_t* instance, stateMachine_destructor_t destructor)
{
	if(instance != 0)
	{
		destructor(instance) ;

		hsm_free((void*)instance) ;
	}
}


bool registerStateMachine(			stateMachine_t* sm, const char* smName)
{
	if(sm)
	{
		uint8_t	statetMachineIndex ;

		for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
		{
			if(stateMachines[statetMachineIndex] == NULL)
			{
				stateMachines[statetMachineIndex] = sm ;

				sm->instanceName = smName ;

				printf("Registered state machine %d as '%s'\n", statetMachineIndex, sm->instanceName) ;

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













uint32_t	uptime_hours ;
uint32_t	uptime_microseconds ;

static uint32_t	nextTimeout_hours ;
static uint32_t	nextTimeout_microseconds ;

static stateMachineTimeout_t	timeouts[configMAXIMUM_NUMBER_OF_TIMEOUTS] ;
static stateMachineWatch_t		watches[configMAXIMUM_NUMBER_OF_WATCH_VARIABLES] ;

watchedVariableTransitionEvent_t* getNextWatchEventVariable(	stateMachine_t*	machine)
{
	uint8_t		watchVariableIndex ;

	for( watchVariableIndex = 0 ; watchVariableIndex < configMAXIMUM_NUMBER_OF_WATCH_VARIABLES ; watchVariableIndex++ )
	{
//		watchedVariableTransitionEvent_t* watch = &watches[watchVariableIndex] ;
//
//		if(watch->machine == 0)
//		{
//			watch->machine	= machine ;
//			watch->state	= machine->currentState ;
//
//
//			return watch ;
//		}
	}

	return (watchedVariableTransitionEvent_t*)0 ;
}

//void registerWatchVariable(		stateMachine_t*	machine,
//								void* variable,
//								enum WATCH_VARIABLE_TYPE type)
//{
//}
//#define TRANSITION_WHEN_2(sm, var, value, valSize, valType, dest, act)	if(hsm_getEventType(event) == SUBSTATE_ENTRY) { /* register watch variable with state machine */ }

void iterateAllStateMachines(	void)
{
	uint8_t		statetMachineIndex ;
	uint8_t		timeoutIndex ;
	uint8_t		watchVariableIndex ;
#if 0
	/* Go through the list of timeouts and send the appropriate signals if needed */

	if(		(nextTimeout_hours > uptime_hours)
		&&	(nextTimeout_microseconds > uptime_microseconds))
	{
		uint32_t	newNextTimeout_hours		= 0 ;
		uint32_t	newNextTimeout_microseconds	= 0 ;

		for( timeoutIndex = 0 ; timeoutIndex < configMAXIMUM_NUMBER_OF_TIMEOUTS ; timeoutIndex++ )
		{
			if(timeouts[timeoutIndex].machine)
			{
				if(		(timeouts[timeoutIndex].uptime_hours_endTime > nextTimeout_hours)
					&&	(timeouts[timeoutIndex].uptime_microseconds_endTime > nextTimeout_microseconds))
				{
					/* timeout has occurred so send post the message to the appropriate machine */

//					stateMachineWatch_t*	watch = (stateMachineWatch_t*)hsm_createEvent(watches[watchVariableIndex].machine, SUBSTATE_WATCHED) ;

//					hsm_postEvent(watches[watchVariableIndex].machine, &watches[watchVariableIndex]) ;

					/* Now wipe out this timeout so it won't get checked again */

					timeouts[timeoutIndex].uptime_hours_endTime			= 0 ;
					timeouts[timeoutIndex].uptime_microseconds_endTime	= 0 ;
					timeouts[timeoutIndex].machine						= 0 ;
				}

				/* Now figure out when the next timeout will be. Note the difference here between
				 * the equals and greater than case. This really is needed or you could have a
				 * case where the microseconds part was greater in the timeouts array than the one
				 * in newNextTimeout_microseconds which could cause the hour to be reset when it
				 * should not have been.
				 */

				if(timeouts[timeoutIndex].uptime_hours_endTime > newNextTimeout_hours)
				{
					newNextTimeout_hours		= timeouts[timeoutIndex].uptime_hours_endTime ;
					newNextTimeout_microseconds	= timeouts[timeoutIndex].uptime_microseconds_endTime ;
				}
				else if(timeouts[timeoutIndex].uptime_hours_endTime == newNextTimeout_hours)
				{
					if(timeouts[timeoutIndex].uptime_microseconds_endTime > newNextTimeout_microseconds)
					{
						newNextTimeout_hours		= timeouts[timeoutIndex].uptime_hours_endTime ;
						newNextTimeout_microseconds	= timeouts[timeoutIndex].uptime_microseconds_endTime ;
					}
				}
			}
		}
	}

	/* Go through the list of watch variables and send signals for any that have changed to true */

	for( watchVariableIndex = 0 ; watchVariableIndex < configMAXIMUM_NUMBER_OF_WATCH_VARIABLES ; watchVariableIndex++ )
	{
		if(watches[watchVariableIndex].machine)
		{
			bool	isWatchVariableNonZero = false ;

			switch(watches[watchVariableIndex].type)
			{
				case UINT8:
				{
					if(*((uint8_t*)(watches[watchVariableIndex].watchVariableLocation)))
					{
						isWatchVariableNonZero = true ;
					}

					break ;
				}
				case UINT16:
				{
					if(*((uint16_t*)(watches[watchVariableIndex].watchVariableLocation)))
					{
						isWatchVariableNonZero = true ;
					}

					break ;
				}
				case UINT32:
				{
					if(*((uint32_t*)(watches[watchVariableIndex].watchVariableLocation)))
					{
						isWatchVariableNonZero = true ;
					}

					break ;
				}
			}

			if(isWatchVariableNonZero)
			{
//				stateMachineWatch_t*	watch = (stateMachineWatch_t*)hsm_createEvent(watches[watchVariableIndex].machine, SUBSTATE_WATCHED) ;

//				hsm_postEvent(watches[watchVariableIndex].machine, &watches[watchVariableIndex]) ;
			}
		}
	}
#endif
	/* Finally, iterate through all state machines to handle normal event processing */

	for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
	{
		if(stateMachines[statetMachineIndex] != NULL)
		{
#if 0
			if(!eventQueue_isEmpty(&stateMachines[statetMachineIndex]->eventQueue))
			{
				printf("Iterating machine %2d ('%20s'): ", statetMachineIndex, stateMachines[statetMachineIndex]->stateMachineName) ;
			}
#endif
			iterateStateMachine(stateMachines[statetMachineIndex]) ;

#if 0
			if(!eventQueue_isEmpty(&stateMachines[statetMachineIndex]->eventQueue))
			{
				printf("\n") ;
			}
#endif
		}
	}

}


#ifdef TRACING_ENABLED
char*					eventTypes[]			= {	"SUBSTATE_NON_EVENT",
													"SUBSTATE_ENTRY",
													"SUBSTATE_INITIAL_TRANSITION",
													"SUBSTATE_JUMP_TO_HISTORY_DEFAULT",
													"SUBSTATE_TICK",
													"SUBSTATE_TIMEOUT",
													"SUBSTATE_WATCHED",
													"SUBSTATE_DO",
													"SUBSTATE_EXIT" } ;
#endif
#ifdef MINIMAL_TRACING_ENABLED
char*					eventTypes[]			= { "NON",
													"ENTRY",
													"INIT",
													"HIST_DEF",
													"TICK",
													"TIMEOUT",
													"WATCH",
													"DO",
													"EXIT" } ;
#endif
char*					responseTypes[]			= { "IGNORED",
													"HANDLED",
													"TRANSITION",
													"TRANSITION_TO_HISTORY" } ;

static const event_t	initialTransitionEvent	= { SUBSTATE_INITIAL_TRANSITION } ;
static const event_t	jumpToHistoryEvent		= { SUBSTATE_JUMP_TO_HISTORY_DEFAULT } ;
static const event_t	doEvent					= { SUBSTATE_DO } ;
static const event_t	enterEvent				= { SUBSTATE_ENTRY } ;
static const event_t	exitEvent				= { SUBSTATE_EXIT } ;


stateMachine_stateResponse_t callStateHandler(stateMachine_t* sm, state_t* state, event_t* event)
{
	stateMachine_stateResponse_t	response ;

#ifdef TRACING_ENABLED
	if(hsm_getEventType(event) != SUBSTATE_DO)
	{
		printf("\n\t\t\tCalling state '%s' in machine '%s', event: %s, ", state->stateName, sm->instanceName, hsm_isEventInternal(event) ? eventTypes[hsm_getEventType(event)] : "<USER_EVENT>") ; fflush(stdout) ;
	}
#endif

	if(state->type == CHOICE_PSUEDOSTATE)
	{
		response = ((stateMachine_choiceStateHandler_t)(state->handler))(sm) ;
	}
	else
	{
		if(event == &enterEvent)
		{
			sm->mostRecentlyEnteredState			= state ;
			sm->currentStateHasInitialTransition	= false ;
		}

		if(event == &exitEvent)
		{
			if(state->type == STATE_WITH_SHALLOW_HISTORY)
			{
				/* Store only most recent direct child state */

				sm->historicalMarkers[((state_with_history_t*)state)->historyMarkerIndex] = sm->mostRecentlyExitedState ;
			}
			else if(state->type == STATE_WITH_DEEP_HISTORY)
			{
				/* store child state that was active before starting transition sequence */

				sm->historicalMarkers[((state_with_history_t*)state)->historyMarkerIndex] = sm->mostRecentlyEnteredState ;
			}

			sm->mostRecentlyExitedState = (void*)state ;
		}

#ifdef MINIMAL_TRACING_ENABLED
		if(		(hsm_getEventType(event) != SUBSTATE_DO)
			&&	(!((hsm_getEventType(event) == SUBSTATE_INITIAL_TRANSITION) && (!sm->currentStateHasInitialTransition))))
		{
#if 0
			printf("%s-%s;", &state->stateName[strlen(sm->stateMachineName) + 1], hsm_isEventInternal(event) ? eventTypes[hsm_getEventType(event)] : sm->eventNames ? sm->eventNames[hsm_getEventType(event) - SUBSTATE_LAST_INTERNAL_EVENT - 1] : "<USER_EVENT>") ; fflush(stdout) ;
#else
			printf(	"<%s>%s-%s;",
					sm->instanceName,
					&state->stateName[strlen(sm->stateMachineName) + 1],
					hsm_isEventInternal(event)	? eventTypes[hsm_getEventType(event)]
												: sm->eventNames ? sm->eventNames[hsm_getEventType(event) - SUBSTATE_LAST_INTERNAL_EVENT - 1] : "<USER_EVENT>") ;
			fflush(stdout) ;
#endif

			if(		(strncmp(&state->stateName[strlen(sm->stateMachineName) + 1], "TOP", 3) == 0)
				&&	(hsm_getEventType(event) == SUBSTATE_INITIAL_TRANSITION))
			{
				printf("\n") ;
			}
		}
#endif

		response = ((stateMachine_callStateHandler_t)(state->handler))(sm, event) ;
	}

#ifdef TRACING_ENABLED
	if(hsm_getEventType(event) != SUBSTATE_DO)
	{
		printf("response: %s ", responseTypes[response]) ; fflush(stdout) ;
	}
#endif

	if(response == TRANSITION)
	{
#ifdef TRACING_ENABLED
		printf("to %s ", ((state_t*)(sm->nextState))->stateName) ; fflush(stdout) ;
#endif
	}

#ifdef TRACING_ENABLED
	if(hsm_getEventType(event) != SUBSTATE_DO)
	{
		printf("\n") ; fflush(stdout) ;
	}
#endif

	return response ;
}


void iterateStateMachine(	stateMachine_t* sm)
{
	stateMachine_stateResponse_t	action ;
	bool							forceTransition	= false ;

#ifdef TRACING_ENABLED
	#if 0
		printf("\titerating %s\n", sm->stateMachineName) ; fflush(stdout) ;
	#endif
#endif

#warning, put in basic sanity checking for sm, sm->currentState, sm->nextState, etc.

	/* First of all, is the machine initialized? If not, take care of that. */

	if(!sm->stateMachineInitialized)
	{
#ifdef TRACING_ENABLED
		printf("\t\tinitializing...\n") ; fflush(stdout) ;
#endif

		sm->currentState = (state_t*)sm->topState ;

		callStateHandler(sm, sm->currentState, (event_t*)&enterEvent) ;

		sm->stateMachineInitialized	= true ;
		forceTransition				= true ;
	}

	/* Any pending events or transitions? */

	do
	{
#ifdef TRACING_ENABLED
		#if 0
			printf("\t\tPulling next event for machine '%s'\n", sm->stateMachineName) ; fflush(stdout) ;
		#endif
#endif

		if((!eventQueue_isEmpty(&sm->eventQueue)) || (forceTransition))
		{
			event_t*						eventToProcess ;
			state_t*						stateBeingProcessed	= sm->currentState ;
			stateMachine_stateResponse_t	action ;

			if(forceTransition)
			{
#ifdef TRACING_ENABLED
				printf("\t\t\tFORCED transition\n") ; fflush(stdout) ;
#endif
				forceTransition	= false ;
				eventToProcess	= (event_t*)&initialTransitionEvent ;
			}
			else
			{
#ifdef TRACING_ENABLED
				printf("\t\t\tGetting event from queue\n") ; fflush(stdout) ;
#endif
				eventToProcess = eventQueue_remove(&sm->eventQueue) ; ;
			}

#ifdef TRACING_ENABLED
			printf("\t\tEvent type: %d\n", eventToProcess->eventType) ; fflush(stdout) ;
#endif
			sm->nextState = (state_t*)0 ;	/* just a little housecleaning */

#ifdef TRACING_ENABLED
			#if 0
				printf("\t\tProcessing event...\n") ; fflush(stdout) ;
			#endif
#endif

			/* Now run the event through the hierarchy starting at the current state
			 * and going all the way to the top looking for either the event to be
			 * handled or a transition taken. If the event is not one of the required
			 * state machine events and it is ignored, move up to the parent state
			 * and try again. When the top is reached, bail...
			 */

			do
			{
				action = callStateHandler(sm, stateBeingProcessed, eventToProcess) ;

				if((action == IGNORED) && (!hsm_isEventInternal(eventToProcess)))
				{
					stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;

#ifdef TRACING_ENABLED
					printf("\t\t\t\t\t\t\tmoving to parent: %s\n", stateBeingProcessed ? stateBeingProcessed->stateName : "<root>") ; fflush(stdout) ;
#endif
				}
				else
				{
					/* The event was handled or a transition was taken.
					 * In either case, no need to continue up the chain. */

					break ;
				}
			} while(stateBeingProcessed) ;

			/* At this point, the event is finished so clear it for the next new event */

			if(!hsm_isEventInternal(eventToProcess))
			{
				eventToProcess->eventType = SUBSTATE_NON_EVENT ;
			}

			/* Now deal with any transtions */

			while(action == TRANSITION_TO_HISTORY)
			{
				if(		(((state_t*)(sm->nextState))->type != STATE_WITH_SHALLOW_HISTORY)
					&&	(((state_t*)(sm->nextState))->type != STATE_WITH_DEEP_HISTORY))
				{
					/* The target is not a state that has history so bail
					 * now and treat it as a normal transition instead.
					 */

					break ;
				}
				else
				{
					state_t* nextState = sm->historicalMarkers[((state_with_history_t*)(sm->nextState))->historyMarkerIndex] ;

					/* The target must be a state with history so see if it has some
					 */

					if(nextState != (void*)0)
					{
						/* Found a state that has some history tracking information so
						 * set the next state to that and then bail this loop so that
						 * the transition occurs normally.
						 */

						sm->nextState = nextState ;
					}
					else
					{
						/* No history for the target state so turn the event into a
						 * HISTORY_DEFAULT event and then jump to the target so that
						 * the new target can be set. Note it it technically possible
						 * for the SET_HISTORY_DEFAULT_STATE() call in the state handler
						 * to return another TRANSITION_TO_HISTORY which is why this
						 * code is in a loop. Go through any sugh list until either a
						 * state without history is reached, a state that has history
						 * that has actually been filled in is reached OR a normal
						 * TRANSITION is returned from the following call.
						 */

						action = callStateHandler(sm, (state_t*)(sm->nextState), (event_t*)&jumpToHistoryEvent) ;
					}
				}

				/* regardless of which condition clause gets executed above,
				 * a transition needs to happen to make sure it does.
				 */

				action = TRANSITION ;
			}

			if(action == TRANSITION)
			{
				state_t*	source	= sm->currentState ;
				state_t*	target	= sm->nextState ;

				/* There are 8 different cases here. They are handled in case of complexity... */

				if(source == target)
				{
#ifdef TRACING_ENABLED
					printf("\t\t\t\tSelf transition.\n") ; fflush(stdout) ;
#endif

					/* Self transition. Exit and then re-enter the same state */

					callStateHandler(sm, source, (event_t*)&exitEvent) ;
					sm->currentState = target ;
					callStateHandler(sm, target, (event_t*)&enterEvent) ;
				}
				else if(source == (state_t*)(target->parent))
				{
#ifdef TRACING_ENABLED
					printf("\t\t\t\tTransition to direct child.\n") ; fflush(stdout) ;
#endif

					/* target is a direct child of the source. Only need to enter
					 * the target here without having to exit the source. */

					sm->currentState = target ;
					callStateHandler(sm, target, (event_t*)&enterEvent) ;
				}
				else if((state_t*)(source->parent) == (state_t*)(target->parent))
				{
#ifdef TRACING_ENABLED
					printf("\t\t\t\tTransition to direct peer.\n") ; fflush(stdout) ;
#endif

					/* A direct peer transition within the same parent state.
					 * Exit the source and then enter the target. */

					callStateHandler(sm, source, (event_t*)&exitEvent) ;
					sm->currentState = target ;
					callStateHandler(sm, target, (event_t*)&enterEvent) ;
				}
				else if((state_t*)(source->parent) == target)
				{
#ifdef TRACING_ENABLED
					printf("\t\t\t\tTransition to direct parent.\n") ; fflush(stdout) ;
#endif

					/* target is the direct parent of the source. Only need to exit
					 * the source without having to re-enter the target since it
					 * was already active. */

					sm->currentState = target ;
					callStateHandler(sm, source, (event_t*)&exitEvent) ;
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
					printf("\t\t\t\tScanning source hierarchy...\n") ; fflush(stdout) ;
#endif

					sourceIndex			= 0 ;
					targetIndex			= 0 ;
					stateBeingProcessed	= source ;

					do
					{
						sourceHierarchy[sourceIndex++] = stateBeingProcessed ;

#ifdef TRACING_ENABLED
						printf("\t\t\t\t\tsourceHierarchy[%d] = %s\n", sourceIndex - 1, stateBeingProcessed->stateName) ; fflush(stdout) ;
#endif

						if(stateBeingProcessed == target)
						{
							uint8_t	exitIndex = 0 ;

#ifdef TRACING_ENABLED
							printf("\t\t\t\t\t\tFound target as ancestor of source\n") ; fflush(stdout) ;
#endif

							sourceIndex-- ;

							while(exitIndex < sourceIndex)
							{
#ifdef TRACING_ENABLED
								printf("\t\t\t\t") ; fflush(stdout) ;
#endif

								callStateHandler(sm, sourceHierarchy[exitIndex], (event_t*)&exitEvent) ;

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
						printf("\t\t\t\tScanning target hierarchy...\n") ; fflush(stdout) ;
#endif

						targetIndex			= 0 ;
						stateBeingProcessed	= target ;

						do
						{
							targetHierarchy[targetIndex] = stateBeingProcessed ;

#ifdef TRACING_ENABLED
							printf("\t\t\t\t\ttargetHierarchy[%d] = %s\n", targetIndex, stateBeingProcessed->stateName) ; fflush(stdout) ;
#endif

							if(stateBeingProcessed == source)
							{
#ifdef TRACING_ENABLED
								printf("\t\t\t\t\t\tFound source as ancestor of target\n") ; fflush(stdout) ;
#endif

								while(targetIndex--)
								{
#ifdef TRACING_ENABLED
									printf("\t\t\t\t") ; fflush(stdout) ;
#endif
									callStateHandler(sm, targetHierarchy[targetIndex], (event_t*)&enterEvent) ;
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
						printf("\t\t\t\tStill haven't found relationship. Scanning for LCA...\n") ; fflush(stdout) ;
#endif
						LCA			= 0 ;
						entryIndex	= targetIndex - 1 ;
						exitIndex	= sourceIndex - 1 ;
#ifdef TRACING_ENABLED
						printf("\t\t\t\t\tentryIndex = %d, exitIndex = %d\n", entryIndex, exitIndex) ; fflush(stdout) ;
#endif

						while(sourceHierarchy[exitIndex] == targetHierarchy[entryIndex])
						{
							LCA = sourceHierarchy[exitIndex] ;

							entryIndex-- ;
							exitIndex-- ;

#ifdef TRACING_ENABLED
							printf("\t\t\t\t\tCurrent LCA candidate: %s\n", LCA->stateName) ; fflush(stdout) ;
#endif

							LCAindex++ ;
						}

#ifdef TRACING_ENABLED
						printf("\t\t\t\t\tLCA of %s and %s is: %s\n", source->stateName, target->stateName, LCA->stateName) ; fflush(stdout) ;
						printf("\t\t\t\t\tentryIndex = %d, exitIndex = %d\n", entryIndex, exitIndex) ; fflush(stdout) ;
#endif

						sourceIndex	= exitIndex + 1 ;
						exitIndex	= 0 ;

						while(exitIndex < sourceIndex)
						{
#ifdef TRACING_ENABLED
							printf("\t\t\t\t") ; fflush(stdout) ;
#endif

							callStateHandler(sm, sourceHierarchy[exitIndex], (event_t*)&exitEvent) ;

							exitIndex++ ;
						}

						targetIndex = entryIndex + 1 ;

						while(targetIndex--)
						{
#ifdef TRACING_ENABLED
							printf("\t\t\t\t") ; fflush(stdout) ;
#endif
							callStateHandler(sm, targetHierarchy[targetIndex], (event_t*)&enterEvent) ;
						}

						sm->currentState = target ;
					}
				}

				/* Now force an initial transition event that will cause the
				 * target state to execute any initial transactions it might
				 * have so the next iteration through this loop will catch it. */

				forceTransition = true ;
			}

#ifdef MINIMAL_TRACING_ENABLED
			if(!forceTransition)
			{
				printf("\n") ;
			}
#endif
		}
		else
		{
#ifdef TRACING_ENABLED
			#if 0
				printf("\t\tNo event or transition pending\n") ; fflush(stdout) ;
			#endif
#endif
			action = callStateHandler(sm, (state_t*)(sm->currentState), (event_t*)&doEvent) ;

			if(action == TRANSITION)
			{
				forceTransition = true ;
			}
		}
	} while(forceTransition) ;

#ifdef TRACING_ENABLED
	#if 0
		printf("\t\tEvent queue empty.\n") ; fflush(stdout) ;
	#endif
#endif
}
