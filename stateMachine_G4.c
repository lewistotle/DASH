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

#include "config.h"

#include "stateMachine_G4.h"

#if ! configHSM_DEBUGGING_ENABLED
	#undef TRACING_ENABLED
	#undef MINIMAL_TRACING_ENABLED
#else
	#undef TRACING_ENABLED
	#define MINIMAL_TRACING_ENABLED
#endif




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

	/* start out by shutting down interrupts. This is a critical section */

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

	/* It's ok to re-enable interrupts */

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


alarmEvent_t* hsm_postAlarm(stateMachine_t* machine, eventType_t eventType, uint32_t hours, uint32_t microseconds, bool repeating)
{
	bool		allocated = false ;
	uint8_t		i ;
	uint8_t*	memoryPoolLocation = (uint8_t*)(machine->startOfTimerEvents) ;

	/* start out by shutting down interrupts. This is a critical section */

	/* Now go through the timer event area and grab the next open slot */

#ifdef TRACING_ENABLED
	printf("\tCreating alarm lasting %ld hours and %ld.%06ld seconds for machine '%s'\n", hours, microseconds / 1000000UL, microseconds % 1000000UL, machine->stateMachineName) ;
#endif

	for( i = 0 ; i < machine->numberOfTimerEvents ; i++ )
	{
#ifdef TRACING_ENABLED
		printf("\t\tChecking timer event at %p\n", memoryPoolLocation) ;
#endif

		if(((event_t*)memoryPoolLocation)->eventType == SUBSTATE_NON_EVENT)
		{
			alarmEvent_t* alarm = (alarmEvent_t*)memoryPoolLocation ;

			/* Found an empty slot so fill it in and bail from the loop */

			allocated = true ;

#ifdef TRACING_ENABLED
		printf("\t\t\tEmpty slot found\n") ;
#endif

			alarm->parent.eventType				= eventType ;
			alarm->parent.eventListenerCount	= 1 ;
			alarm->active						= false ;
			alarm->remainingHours				= hours ;
			alarm->remainingMicroseconds		= microseconds ;

			if(repeating)
			{
				alarm->repeatingHours			= hours ;
				alarm->repeatingMicroseconds	= microseconds ;
			}
			else
			{
				alarm->repeatingHours			= 0 ;
				alarm->repeatingMicroseconds	= 0 ;
			}

			break ;
		}
		else
		{
			memoryPoolLocation += HSM_TIMER_EVENT_MEMORY_SIZE ;
		}
	}

	/* It's ok to re-enable interrupts */

	/* Now return the appropriate thing to the caller */

	if(allocated)
	{
		return (alarmEvent_t*)memoryPoolLocation ;
	}
	else
	{
		printf("\t\tUnable to allocate event.\n") ;

		return (alarmEvent_t*)0 ;
	}
}


void hsm_deleteTimeout(		stateMachine_t* machine)
{
	uint8_t		i ;
	uint8_t*	memoryPoolLocation = (uint8_t*)(machine->startOfTimerEvents) ;

	/* start out by shutting down interrupts. This is a critical section */

	/* Now go through the timer event area and grab the next open slot */

#ifdef TRACING_ENABLED
	printf("\tDeleting timeout in state '%s' for machine '%s'\n", ((state_t*)(machine->currentState))->stateName, machine->instanceName) ;
#endif

	for( i = 0 ; i < machine->numberOfTimerEvents ; i++ )
	{
#ifdef TRACING_ENABLED
		printf("\t\tChecking timeout event at %p\n", memoryPoolLocation) ;
#endif

		if(		(((event_t*)memoryPoolLocation)->eventType == SUBSTATE_TIMEOUT)
			&&	(((timeoutEvent_t*)memoryPoolLocation)->ownerState == machine->currentState))
		{
			/* This is the one so clear it out and bail */

#ifdef TRACING_ENABLED
		printf("\t\t\tFound it\n") ;
#endif

			((event_t*)memoryPoolLocation)->eventType = SUBSTATE_NON_EVENT ;

			break ;
		}
		else
		{
			memoryPoolLocation += HSM_TIMER_EVENT_MEMORY_SIZE ;
		}
	}

	/* It's ok to re-enable interrupts */
}


stateMachine_t* allocateStateMachineMemory(		uint16_t stateMachineSizeInBytes,
												uint16_t historyArraySize,
												stateMachine_memRequirements_t getMemRequirements,
												stateMachine_constructor_t constructor)
{
	uint8_t							i ;
	const machineMemoryPoolInto_t*	memoryRequirements			= getMemRequirements() ;
	uint16_t						eventQueueDepth				= memoryRequirements->eventQueueDepth ;
	uint16_t						stateMachineSize			= stateMachineSizeInBytes ;
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

	numberOfBytesNeeded += numberOfTimerEvents * HSM_TIMER_EVENT_MEMORY_SIZE ;

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
		if(historyArraySize)
		{
			instance->historicalMarkers				= historicalMarkerArray ;
			instance->mostRecentlyEnteredState		= (void*)0 ;
			instance->mostRecentlyExitedState		= (void*)0 ;
		}

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

		if(numberOfTimerEvents)
		{
			instance->startOfTimerEvents = (void*)memoryPoolLocation ;
		}

		printf("\ttimer event memory               : %p\n", (void*)instance->startOfTimerEvents) ;

		if(numberOfTimerEvents)
		{
			instance->numberOfTimerEvents = numberOfTimerEvents ;

			for( i = 0 ; i < numberOfTimerEvents ; i++ )
			{
				printf("\t\talarm event %2d start: %p\n", i, (void*)memoryPoolLocation) ;

				memoryPoolLocation += HSM_TIMER_EVENT_MEMORY_SIZE ;
			}
		}

		printf("\tinstance last memory location    : %p\n", (void*)(((char*)instance) + numberOfBytesNeeded)) ;

		constructor(instance) ;
	}

	return instance ;
}


void deallocateStateMachineMemory(				stateMachine_t* instance)
{
	if(instance != 0)
	{
		instance->destructor(instance) ;

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

#if 0
static uint32_t	nextTimeout_hours ;
static uint32_t	nextTimeout_microseconds ;

static stateMachineTimeout_t	timeouts[configMAXIMUM_NUMBER_OF_TIMEOUTS] ;
static stateMachineWatch_t		watches[configMAXIMUM_NUMBER_OF_WATCH_VARIABLES] ;
#endif

watchedVariableTransitionEvent_t* getNextWatchEventVariable(	stateMachine_t*	machine)
{
#if 0
	uint8_t		watchVariableIndex ;

	for( watchVariableIndex = 0 ; watchVariableIndex < configMAXIMUM_NUMBER_OF_WATCH_VARIABLES ; watchVariableIndex++ )
	{
		watchedVariableTransitionEvent_t* watch = &watches[watchVariableIndex] ;

		if(watch->machine == 0)
		{
			watch->machine	= machine ;
			watch->state	= machine->currentState ;


			return watch ;
		}
	}
#endif

	return (watchedVariableTransitionEvent_t*)0 ;
}

#if configPRINT_RTC_EXECUTION_TIME
	int timeval_subtract(struct timeval* result, struct timeval* x, struct timeval* y) ;
#endif

void iterateAllStateMachines(	void)
{
#if configPRINT_RTC_EXECUTION_TIME
	struct timeval startTime ;
	struct timeval endTime ;
	struct timeval duration ;
#endif

	uint8_t		statetMachineIndex ;
#if 0
	uint8_t		timeoutIndex ;
	uint8_t		watchVariableIndex ;

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
#if 0
				stateMachineWatch_t*	watch = (stateMachineWatch_t*)hsm_createEvent(watches[watchVariableIndex].machine, SUBSTATE_WATCHED) ;

				hsm_postEvent(watches[watchVariableIndex].machine, &watches[watchVariableIndex]) ;
#endif
			}
		}
	}
#endif

#if configPRINT_RTC_EXECUTION_TIME
	gettimeofday(&startTime, NULL) ;
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

#if configPRINT_RTC_EXECUTION_TIME
	gettimeofday(&endTime, NULL) ;

	timeval_subtract(&duration, &endTime, &startTime) ;

	printf("[%07ld]", duration.tv_usec) ;
#endif
}


#ifdef TRACING_ENABLED
char*					eventTypes[]			= {	"SUBSTATE_NON_EVENT",
													"SUBSTATE_ENTRY",
													"SUBSTATE_INITIAL_TRANSITION",
													"SUBSTATE_JUMP_TO_HISTORY_DEFAULT",
													"SUBSTATE_TICK",
													"SUBSTATE_TIMER",
													"SUBSTATE_WATCHED",
													"SUBSTATE_DO",
													"SUBSTATE_EXIT" } ;
#endif
#ifdef MINIMAL_TRACING_ENABLED
char*					eventTypes[]			= { "NO_EVENT",
													"ENTRY",
													"INIT",
													"HIST_DEF",
													"TICK",
													"TIMER",
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
static const event_t	tickEvent				= { SUBSTATE_TICK } ;
static const event_t	enterEvent				= { SUBSTATE_ENTRY } ;
static const event_t	exitEvent				= { SUBSTATE_EXIT } ;

void hsm_handleTick(	uint32_t microsecondsSinceLastHandled)
{
	uint8_t			statetMachineIndex ;

	for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
	{
		stateMachine_t*	machine = stateMachines[statetMachineIndex] ;

		if(machine != NULL)
		{
			/* If this machine really wants to get TICK events, send them */

			if(machine->requestsTickEvents)
			{
				hsm_postEventToMachine((event_t*)&tickEvent, machine) ;
			}

			/* See if there is a time event pending for this state machine. If so, check to see if it's time */

			if(machine->startOfTimerEvents)
			{
				uint8_t		alarmIndex ;
				uint8_t*	memoryPoolLocation = (uint8_t*)(machine->startOfTimerEvents) ;

				/* There is at least one timer set so figure out if it's time to fire off an alarm event
				 * Now cycle through all the alarms for this machine and see if any of them are due.
				 * If so, fire off the needed events and reset the alarms if needed.
				 */

				for( alarmIndex = 0 ; alarmIndex < machine->numberOfTimerEvents ; alarmIndex++ )
				{
					alarmEvent_t*	alarm = (alarmEvent_t*)memoryPoolLocation ;

					if(alarm->active || (((event_t*)(alarm))->eventType == SUBSTATE_TIMEOUT))
					{
						alarm->remainingMicroseconds -= microsecondsSinceLastHandled ;

						if(alarm->remainingMicroseconds > (60UL * 60UL * 1000000UL))
						{
							/* must have wrapped around so reset it */

							alarm->remainingMicroseconds = 0 ;
						}

						if(alarm->remainingMicroseconds == 0)
						{
							if(alarm->remainingHours > 0)
							{
								--(alarm->remainingHours) ;

								alarm->remainingMicroseconds = (60UL * 60UL * 1000000UL) ;
							}
							else if(alarm->remainingHours == 0)
							{
								/* Here's at least one. Fire off the event */

#if 0
								printf("AIMING AT '%s'...FIRE!!!\n", machine->instanceName) ;
#endif
								hsm_postEventToMachine((event_t*)alarm, machine) ;

								if(((event_t*)(alarm))->eventType == SUBSTATE_TIMEOUT)
								{
									/*
									 *  This is a timeout so clear it now to keep MANY events
									 * from being fired before the state machine can iterate
									 * the appropriate state to clear it.
									 */

									((event_t*)(alarm))->eventType = SUBSTATE_TIMEOUT ;
								}
								else
								{
									/* If this is a repeating alarm, reset it for next time */

									if((alarm->repeatingHours) || (alarm->repeatingMicroseconds))
									{
										alarm->remainingHours			= alarm->repeatingHours ;
										alarm->remainingMicroseconds	= alarm->repeatingMicroseconds ;
									}
									else
									{
										alarm->active = false ;
									}
								}
							}
						}
					}

					memoryPoolLocation += HSM_TIMER_EVENT_MEMORY_SIZE ;
				}
			}
		}
	}
}

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
		/* For choice pseudostates, only process the initial transition event.
		 * This actually makes sense since a transition is guaranteed from one
		 * of these.
		 * If I call the handler for any events, then the entry and exit events
		 * get either the true or fall condition action called 3 times; one for
		 * entry, one for the initial transition and one for the exit event.
		 */

		if(event == &initialTransitionEvent)
		{
			response = ((stateMachine_choiceStateHandler_t)(state->handler))(sm) ;
		}
		else
		{
			response = IGNORED ;
		}
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
#warning The check for the intiial transition being present won't work if there is an on_entry handler before the initial transition handler since ON_ENTRY returns immediately thereby preventing the flag from being set.
		if(		(sm->printStateTransitions)
			&&	(hsm_getEventType(event) != SUBSTATE_DO)
			&&	(!((hsm_getEventType(event) == SUBSTATE_INITIAL_TRANSITION) && (!sm->currentStateHasInitialTransition))))
		{
#if 0
			printf("%s-%s;", &state->stateName[strlen(sm->stateMachineName) + 1], hsm_isEventInternal(event) ? eventTypes[hsm_getEventType(event)] : sm->eventNames ? sm->eventNames[hsm_getEventType(event) - SUBSTATE_LAST_INTERNAL_EVENT - 1] : "<USER_EVENT>") ; fflush(stdout) ;
#elif 0
			printf(	"<%s>%s;",
					sm->instanceName,
					hsm_isEventInternal(event)	? eventTypes[hsm_getEventType(event)]
												: sm->eventNames ? sm->eventNames[hsm_getEventType(event) - SUBSTATE_LAST_INTERNAL_EVENT - 1] : "<USER_EVENT>") ;
			fflush(stdout) ;
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

#warning put in basic sanity checking for sm, sm->currentState, sm->nextState, etc.

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

				--eventToProcess->eventListenerCount ;
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
				if(		(eventToProcess->eventListenerCount == 0)
					&&	(!hsm_isEventAMachineTimeout(sm, eventToProcess)))
				{
					eventToProcess->eventType = SUBSTATE_NON_EVENT ;
				}
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
				if(sm->debugging_machineOutputDisplay)
				{
					((stateMachine_displayMachineOutput_t)(sm->debugging_machineOutputDisplay))(sm) ;
				}
				else
				{
#if 0
					printf("\n") ;
#endif
				}
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
