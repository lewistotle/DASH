#include "hal.h"
#include "hal_UART.h"
#include <C8051F040.h>
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

#ifndef __c8051f040__
	#include <sys/time.h>

	#define __xdata
#endif

#include "stateMachine_G4.h"

#ifdef __c8051f040__
	#define __XDATA	__xdata

	#define fflush(	unused)
	#define exit(	unused)
#else
	#define __XDATA
#endif

#if configHSM_INTERNAL_DEBUGGING_ENABLED
	#define TRACING_ENABLED					false
	#define MINIMAL_TRACING_ENABLED			false
#else
	#undef TRACING_ENABLED
	#undef MINIMAL_TRACING_ENABLED
#endif

#ifndef configMAXIMUM_NUMBER_OF_STATE_MACHINES
	#define configMAXIMUM_NUMBER_OF_STATE_MACHINES		8
#endif

enum { REQUIRED_STATE_MACHINE_EVENTS } ;

stateMachine_t* __XDATA	stateMachines[configMAXIMUM_NUMBER_OF_STATE_MACHINES] ;



void* hsm_malloc(								uint16_t numberOfBytes)
{
	return malloc(numberOfBytes) ;
}


void hsm_free(									void* blockToFree)
{
	free(blockToFree) ;
}

#define TRACING_ENABLED false
event_t* hsm_createNewEvent(stateMachine_t* sm, eventType_t eventType, uint16_t eventSize)
{
	bool		allocated = false ;
	uint8_t		i ;
	uint8_t		j ;
	uint8_t*	memoryPoolLocation	= (uint8_t*)(sm->startOfEventMemoryPools) ;

	/* start out by shutting down interrupts. This is a critical section */

	HSM_ENTER_CRITICAL_SECTION() ;

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

#if TRACING_ENABLED
		printf("\tCreating event type %d, size %d, for machine '%s'\n", eventType, eventSize, sm->stateMachineName) ;
#endif

		for( i = 0 ; (i < sm->memoryPoolInfo->numberOfMemoryPools) && (!allocated) ; i++ )
		{
#if TRACING_ENABLED
			printf("\t\tPool %2d (chunkSize = %2d)\n", i, sm->memoryPoolInfo->eventMemoryPools[i].chunkSize) ;
#endif

			if(sm->memoryPoolInfo->eventMemoryPools[i].chunkSize >= eventSize)
			{
				/* Found a memory pool that is big enough. Now see if there is an empty slot */

				for( j = 0 ; j < sm->memoryPoolInfo->eventMemoryPools[i].numberOfChunks ; j++ )
				{
					event_t* eventHeader = (event_t*)memoryPoolLocation ;

#if TRACING_ENABLED
					printf("\t\t\tChecking event location %p: ", memoryPoolLocation) ;
#endif

					if(eventHeader->eventType == SUBSTATE_NON_EVENT)
					{
#if TRACING_ENABLED
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
#if TRACING_ENABLED
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

	HSM_EXIT_CRITICAL_SECTION() ;

	/* Now return the appropriate thing to the caller */

	if(allocated)
	{
		return (event_t*)memoryPoolLocation ;
	}
	else
	{
		printf("\t\tUnable to allocate event type %d of size %d for machine %s.\n", eventType, eventSize, sm->stateMachineName) ; fflush(stdout) ;

		return (event_t*)0 ;
	}
}
#undef TRACING_ENABLED

#define TRACING_ENABLED false
alarmEvent_t* hsm_createAlarm(	stateMachine_t* machine, eventType_t eventType, uint32_t hours, uint32_t microseconds, bool repeating)
{
	bool		allocated			= false ;
	uint8_t		i ;
	uint8_t*	memoryPoolLocation	= (uint8_t*)(machine->startOfTimerEvents) ;

	/* start out by shutting down interrupts. This is a critical section */

	HSM_ENTER_CRITICAL_SECTION() ;

	/* Now go through the timer event area and grab the next open slot */

#if TRACING_ENABLED
	printf("\tCreating alarm lasting %ld hours and %ld.%06ld seconds for machine '%s'\n", hours, microseconds / 1000000UL, microseconds % 1000000UL, machine->stateMachineName) ;
#endif

	for( i = 0 ; i < machine->numberOfTimerEvents ; i++ )
	{
#if TRACING_ENABLED
		printf("\t\tChecking timer event at %p\n", memoryPoolLocation) ;
#endif

		if(((event_t*)memoryPoolLocation)->eventType == SUBSTATE_NON_EVENT)
		{
			/* Found an empty slot so fill it in and bail from the loop */

			allocated = true ;

#if TRACING_ENABLED
		printf("\t\t\tEmpty slot found at %p\n", (void*)memoryPoolLocation) ;
#endif
			if(eventType != SUBSTATE_TIMEOUT)
			{
				alarmEvent_t* alarm = (alarmEvent_t*)memoryPoolLocation ;

				alarm->parent.parent.eventType			= eventType ;
				alarm->parent.parent.eventListenerCount	= 1 ;
				alarm->parent.remainingHours			= hours ;
				alarm->parent.remainingMicroseconds		= microseconds ;
				alarm->parent.originalHours				= hours ;
				alarm->parent.originalMicroseconds		= microseconds ;
				alarm->repeating						= repeating ;
				alarm->active							= false ;
#if 0
				printf("(%p)alarm->parent.parent.eventType         : %d\n", (void*)alarm, alarm->parent.parent.eventType) ; fflush(stdout) ;
				printf("(%p)alarm->parent.parent.eventListenerCount: %d\n", (void*)alarm, alarm->parent.parent.eventListenerCount) ; fflush(stdout) ;
				printf("(%p)alarm->parent.remainingHours           : %ld\n", (void*)alarm, alarm->parent.remainingHours) ; fflush(stdout) ;
				printf("(%p)alarm->parent.remainingMicroseconds    : %ld\n", (void*)alarm, alarm->parent.remainingMicroseconds) ; fflush(stdout) ;
				printf("(%p)alarm->parent.originalHours            : %ld\n", (void*)alarm, alarm->parent.originalHours) ; fflush(stdout) ;
				printf("(%p)alarm->parent.originalMicroseconds     : %ld\n", (void*)alarm, alarm->parent.originalMicroseconds) ; fflush(stdout) ;
				printf("(%p)alarm->repeating                       : %d\n", (void*)alarm, alarm->repeating) ; fflush(stdout) ;
				printf("(%p)alarm->active                          : %d\n", (void*)alarm, alarm->active) ; fflush(stdout) ;
#endif
			}
			else
			{
				timeoutEvent_t* timeout = (timeoutEvent_t*)memoryPoolLocation ;

				timeout->parent.parent.parent.eventType				= eventType ;
				timeout->parent.parent.parent.eventListenerCount	= 1 ;
				timeout->parent.parent.remainingHours				= hours ;
				timeout->parent.parent.remainingMicroseconds		= microseconds ;
				timeout->parent.parent.originalHours				= hours ;
				timeout->parent.parent.originalMicroseconds			= microseconds ;
				timeout->parent.active								= hours ;
				timeout->ownerState									= machine->currentState ;
				timeout->lineNumber									= 0 ;
#if 0
				printf("(%p)timeout->parent.parent.parent.eventType         : %d\n", (void*)timeout, timeout->parent.parent.parent.eventType) ; fflush(stdout) ;
				printf("(%p)timeout->parent.parent.parent.eventListenerCount: %d\n", (void*)timeout, timeout->parent.parent.parent.eventListenerCount) ; fflush(stdout) ;
				printf("(%p)timeout->parent.parent.remainingHours           : %ld\n", (void*)timeout, timeout->parent.parent.remainingHours) ; fflush(stdout) ;
				printf("(%p)timeout->parent.parent.remainingMicroseconds    : %ld\n", (void*)timeout, timeout->parent.parent.remainingMicroseconds) ; fflush(stdout) ;
				printf("(%p)timeout->parent.parent.originalHours            : %ld\n", (void*)timeout, timeout->parent.parent.originalHours) ; fflush(stdout) ;
				printf("(%p)timeout->parent.parent.originalMicroseconds     : %ld\n", (void*)timeout, timeout->parent.parent.originalMicroseconds) ; fflush(stdout) ;
				printf("(%p)timeout->parent.active                          : %d\n", (void*)timeout, timeout->parent.active) ; fflush(stdout) ;
				printf("(%p)timeout->ownerState                             : %p\n", (void*)timeout, (void*)timeout->ownerState) ; fflush(stdout) ;
#endif
			}

			break ;
		}
		else
		{
			memoryPoolLocation += HSM_TIMER_EVENT_MEMORY_SIZE ;
		}
	}

	/* It's ok to re-enable interrupts */

	HSM_EXIT_CRITICAL_SECTION() ;

	/* Now return the appropriate thing to the caller */

	if(allocated)
	{
		return (alarmEvent_t*)memoryPoolLocation ;
	}
	else
	{
		printf("\t\tUnable to allocate alarm event.\n") ;

		return (alarmEvent_t*)0 ;
	}
}

void hsm_resetTimeout(		stateMachine_t* machine)
{
	uint8_t		i ;
	uint8_t*	memoryPoolLocation	= (uint8_t*)(machine->startOfTimerEvents) ;

	/* start out by shutting down interrupts. This is a critical section */

	HSM_ENTER_CRITICAL_SECTION() ;

	/* Now go through the timer event area looking for the current timeout */

#if TRACING_ENABLED
	printf("\n\tResetting timeout in state '%s' for machine '%s'\n", ((state_t*)(machine->currentState))->stateName, machine->instanceName) ;
#endif

	for( i = 0 ; i < machine->numberOfTimerEvents ; i++ )
	{
#if TRACING_ENABLED
		printf("\t\tChecking timeout event at %p\n", memoryPoolLocation) ;
#endif

		if(		(((event_t*)memoryPoolLocation)->eventType == SUBSTATE_TIMEOUT)
			&&	(((timeoutEvent_t*)memoryPoolLocation)->ownerState == machine->activeState))
		{
			timeoutEvent_t*	timeout = (timeoutEvent_t*)memoryPoolLocation ;

			/* This is the one so reset it out and bail */

#if TRACING_ENABLED
			printf("\t\t\tFound it. Resetting to %ld, %ld\n", (long int)timeout->parent.parent.originalHours, (long int)timeout->parent.parent.originalMicroseconds) ;
#endif

			timeout->parent.active							= true ;
			timeout->parent.parent.remainingHours			= timeout->parent.parent.originalHours ;
			timeout->parent.parent.remainingMicroseconds	= timeout->parent.parent.originalMicroseconds ;

			break ;
		}
		else
		{
			memoryPoolLocation += HSM_TIMER_EVENT_MEMORY_SIZE ;
		}
	}

	/* It's ok to re-enable interrupts */

	HSM_EXIT_CRITICAL_SECTION() ;
}
#undef TRACING_ENABLED

void hsm_deleteTimeout(		stateMachine_t* machine, uint16_t lineNumber)
{
	uint8_t		i ;
	uint8_t*	memoryPoolLocation = (uint8_t*)(machine->startOfTimerEvents) ;

	/* start out by shutting down interrupts. This is a critical section */

	HSM_ENTER_CRITICAL_SECTION() ;

	/* Now go through the timer event area and grab the next open slot */

#if TRACING_ENABLED
	printf("\tDeleting timeout in state '%s' for machine '%s'\n", ((state_t*)(machine->currentState))->stateName, machine->instanceName) ; fflush(stdout) ;
#endif

	for( i = 0 ; i < machine->numberOfTimerEvents ; i++ )
	{
#if TRACING_ENABLED
		printf("\t\tChecking timeout event at %p\n", memoryPoolLocation) ; fflush(stdout) ;
#endif

		if(		(((event_t*)memoryPoolLocation)->eventType == SUBSTATE_TIMEOUT)
			&&	(((timeoutEvent_t*)memoryPoolLocation)->lineNumber == lineNumber))
		{
			/* This is the one so clear it out and bail */

#if TRACING_ENABLED
			printf("\t\t\tFound it at %p\n", (void*)memoryPoolLocation) ; fflush(stdout) ;
#endif

			((timeoutEvent_t*)memoryPoolLocation)->parent.parent.parent.eventType		= SUBSTATE_NON_EVENT ;
			((timeoutEvent_t*)memoryPoolLocation)->parent.parent.remainingHours			= 0 ;
			((timeoutEvent_t*)memoryPoolLocation)->parent.parent.remainingMicroseconds	= 0 ;
			((timeoutEvent_t*)memoryPoolLocation)->parent.parent.originalHours			= 0 ;
			((timeoutEvent_t*)memoryPoolLocation)->parent.parent.originalMicroseconds	= 0 ;
			((timeoutEvent_t*)memoryPoolLocation)->parent.active						= 0 ;
			((timeoutEvent_t*)memoryPoolLocation)->ownerState							= 0 ;
			((timeoutEvent_t*)memoryPoolLocation)->lineNumber							= 0 ;

			break ;
		}
		else
		{
			memoryPoolLocation += HSM_TIMER_EVENT_MEMORY_SIZE ;
		}
	}

	/* It's ok to re-enable interrupts */

	HSM_EXIT_CRITICAL_SECTION() ;
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
	uint16_t						numberOfWatchEvents			= 0 ;
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
		if(memoryRequirements->eventMemoryPools[i].chunkSize == 0xFFFF)
		{
			/* This is a timer event so add this set to the number of timer events.
			 * No need to worry about them in the main memory pool loop since they
			 * will equate to 0 bytes which will not increase that total at all.
			 */

			numberOfWatchEvents += memoryRequirements->eventMemoryPools[i].numberOfChunks ;
		}
	}

	/* round out to 4 byte boundaries */

	numberOfBytesNeeded = (numberOfBytesNeeded + 3) & 0xFFFCUL ;

//	printf("\tstateMachineSize         : %d\n", stateMachineSize) ; fflush(stdout) ;
//	printf("\teventQueueSize           : %d (%d events)\n", eventQueueSize, eventQueueDepth) ; fflush(stdout) ;
//	printf("\ttypesOfEventsToDeferSize : %d\n", typesOfEventsToDeferSize) ; fflush(stdout) ;
//	printf("\tdeferredEventQueueSize   : %d\n", deferredEventQueueSize) ; fflush(stdout) ;
//	printf("\thistoricalMarkerArraySize: %d\n", historicalMarkerArraySize) ; fflush(stdout) ;
//	printf("\tnumberOfTimerEvents      : %d\n", numberOfTimerEvents) ; fflush(stdout) ;
//	printf("\tnumberOfWatchEvents      : %d\n", numberOfWatchEvents) ; fflush(stdout) ;
//	printf("\tnumberOfMemoryPools      : %d\n", memoryRequirements->numberOfMemoryPools) ; fflush(stdout) ;

	for( i = 0 ; i < memoryRequirements->numberOfMemoryPools ; i++ )
	{
		if(		(memoryRequirements->eventMemoryPools[i].chunkSize > 0)
			&&	(memoryRequirements->eventMemoryPools[i].chunkSize < 0xFFFF))
		{
			uint16_t bytesNeededForCurrentPool = memoryRequirements->eventMemoryPools[i].chunkSize * memoryRequirements->eventMemoryPools[i].numberOfChunks ;

//			printf("\t\tbytes for pool %2d: %d (%d * %d)\n", i, bytesNeededForCurrentPool, memoryRequirements->eventMemoryPools[i].chunkSize, memoryRequirements->eventMemoryPools[i].numberOfChunks) ; fflush(stdout) ;

			numberOfBytesNeeded += bytesNeededForCurrentPool ;

			/* round out to 4 byte boundaries */

			numberOfBytesNeeded = (numberOfBytesNeeded + 3) & 0xFFFCUL ;
		}
	}

	/* round out to 4 byte boundaries */

	numberOfBytesNeeded = (numberOfBytesNeeded + 3) & 0xFFFCUL ;

	numberOfBytesNeeded += numberOfTimerEvents * HSM_TIMER_EVENT_MEMORY_SIZE ;

	numberOfBytesNeeded = (numberOfBytesNeeded + 3) & 0xFFFCUL ;

	numberOfBytesNeeded += numberOfWatchEvents * sizeof(stateMachineWatch_t) ;

	numberOfBytesNeeded = (numberOfBytesNeeded + 3) & 0xFFFCUL ;

//	printf("\tAllocating %d (0x%04X) total bytes\n", numberOfBytesNeeded, numberOfBytesNeeded) ; fflush(stdout) ;

	instance = hsm_malloc(numberOfBytesNeeded) ;

	if(instance)
	{
		uint8_t*	memoryPoolLocation ;

		eventQueue				= (event_t**)(((char*)instance) + stateMachineSize) ;
		typesOfEventsToDefer	= (eventType_t*)(((char*)eventQueue) + eventQueueSize) ;
		deferredEventQueue		= (event_t**)(((char*)typesOfEventsToDefer) + typesOfEventsToDeferSize) ;
		historicalMarkerArray	= (void**)(((char*)deferredEventQueue) + deferredEventQueueSize) ;

		memset((char*)instance, 0, numberOfBytesNeeded) ;

		hsm_internal_eventQueue_initialize(&instance->eventQueue, eventQueue, eventQueueDepth) ;
		hsm_internal_eventQueue_initialize(&instance->deferredEventQueue, deferredEventQueue, eventQueueDepth) ;

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

//		printf("\tinstance                         : %p\n", (void*)instance) ; fflush(stdout) ;
//		printf("\tinstance->eventQueue.Array       : %p\n", (void*)instance->eventQueue.Array) ; fflush(stdout) ;
//		printf("\tinstance->typesOfEventsToDefer   : %p\n", (void*)instance->typesOfEventsToDefer) ; fflush(stdout) ;
//		printf("\tinstance->deferredEventQueue     : %p\n", (void*)instance->deferredEventQueue.Array) ; fflush(stdout) ;
//		printf("\tinstance->historicalMarkerArray  : %p\n", (void*)instance->historicalMarkers) ; fflush(stdout) ;
//		printf("\tinstance->startOfEventMemoryPools: %p\n", (void*)instance->startOfEventMemoryPools) ; fflush(stdout) ;

		memoryPoolLocation = (uint8_t*)(instance->startOfEventMemoryPools) ;

		for( i = 0 ; i < memoryRequirements->numberOfMemoryPools ; i++ )
		{
			if(memoryRequirements->eventMemoryPools[i].chunkSize < 0xFFFF)
			{
//				printf("\t\tevent pool %2d start: %p\n", i, (void*)memoryPoolLocation) ; fflush(stdout) ;

				memoryPoolLocation += instance->memoryPoolInfo->eventMemoryPools[i].numberOfChunks
									* instance->memoryPoolInfo->eventMemoryPools[i].chunkSize ;

#ifdef __c8051f040__
				memoryPoolLocation = (uint8_t __XDATA*)(((uint32_t)(memoryPoolLocation + 3)) & 0xFFFFFFFCUL) ;
#else
				memoryPoolLocation = (uint8_t*)(((uint32_t)(memoryPoolLocation + 3)) & 0xFFFFFFFCUL) ;
#endif
			}
		}

//		printf("\tinstance->historicalMarkerArray  : %p\n", (void*)instance->historicalMarkers) ; fflush(stdout) ;

		if(numberOfTimerEvents)
		{
			instance->startOfTimerEvents = (void*)memoryPoolLocation ;
		}

//		printf("\ttimer event memory               : %p\n", (void*)instance->startOfTimerEvents) ; fflush(stdout) ;

		if(numberOfTimerEvents)
		{
			instance->numberOfTimerEvents = numberOfTimerEvents ;

			for( i = 0 ; i < numberOfTimerEvents ; i++ )
			{
//				printf("\t\talarm event %2d start: %p\n", i, (void*)memoryPoolLocation) ; fflush(stdout) ;

				memoryPoolLocation += HSM_TIMER_EVENT_MEMORY_SIZE ;
			}
		}

#ifdef __c8051f040__
		memoryPoolLocation = (uint8_t __XDATA*)(((uint32_t)(memoryPoolLocation + 3)) & 0xFFFFFFFCUL) ;
#else
		memoryPoolLocation = (uint8_t*)(((uint32_t)(memoryPoolLocation + 3)) & 0xFFFFFFFCUL) ;
#endif
		if(numberOfWatchEvents)
		{
			instance->startOfWatchEvents = (void*)memoryPoolLocation ;
		}

//		printf("\twatch event memory               : %p\n", (void*)instance->startOfWatchEvents) ; fflush(stdout) ;

		if(numberOfWatchEvents)
		{
			instance->numberOfWatchEvents = numberOfWatchEvents ;

			for( i = 0 ; i < numberOfWatchEvents ; i++ )
			{
				printf("\t\twatch event %2d start: %p\n", i, (void*)memoryPoolLocation) ; fflush(stdout) ;

				memoryPoolLocation += sizeof(stateMachineWatch_t) ;
			}
		}

//		printf("\tinstance last memory location    : %p\n", (void*)(((char*)instance) + numberOfBytesNeeded)) ; fflush(stdout) ;

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


stateMachineWatch_t* hsm_registerWatchVariable(	stateMachine_t* machine, void* loc, size_t size)
{
	bool		allocated			= false ;
	uint8_t		i ;
	uint8_t*	memoryPoolLocation	= (uint8_t*)(machine->startOfWatchEvents) ;

	/* start out by shutting down interrupts. This is a critical section */

	HSM_ENTER_CRITICAL_SECTION() ;

	/* Now go through the timer event area and grab the next open slot */

#if TRACING_ENABLED
	printf("\nCreating watch of location %p, size %d, for machine '%s'\n", loc, size, machine->stateMachineName) ;
#endif

	for( i = 0 ; i < machine->numberOfWatchEvents ; i++ )
	{
		stateMachineWatch_t* watchEvent = (stateMachineWatch_t*)memoryPoolLocation ;

#if TRACING_ENABLED
		printf("\tChecking watch event at %p\n", memoryPoolLocation) ;
#endif

		if(watchEvent->parent.eventType == SUBSTATE_NON_EVENT)
		{
#if TRACING_ENABLED
			printf("\t\tEmpty slot found at %p\n", (void*)memoryPoolLocation) ;
#endif

			/* Found an empty slot so fill it in and bail from the loop */

			allocated = true ;

			watchEvent->parent.eventType			= SUBSTATE_WATCHED ;
			watchEvent->parent.eventListenerCount	= 1 ;
			watchEvent->triggered					= false ;
			watchEvent->size						= size ;
			watchEvent->watchVariableLocation		= loc ;

			break ;
		}
		else
		{
			memoryPoolLocation += sizeof(stateMachineWatch_t) ;
		}
	}

	/* It's ok to re-enable interrupts */

	HSM_EXIT_CRITICAL_SECTION() ;

	/* Now return the appropriate thing to the caller */

	if(allocated)
	{
		return (stateMachineWatch_t*)memoryPoolLocation ;
	}
	else
	{
		printf("\t\tUnable to allocate watch event.\n") ;

		return (stateMachineWatch_t*)0 ;
	}
}


void hsm_unregisterWatchVariable(	stateMachine_t* machine, void* loc)
{
	uint8_t		i ;
	uint8_t*	memoryPoolLocation	= (uint8_t*)(machine->startOfWatchEvents) ;

	/* start out by shutting down interrupts. This is a critical section */

	HSM_ENTER_CRITICAL_SECTION() ;

	/* Now go through the timer event area and grab the next open slot */

#if TRACING_ENABLED
	printf("\nDeleting watch of location %p for machine '%s'\n", loc, machine->stateMachineName) ;
#endif

	for( i = 0 ; i < machine->numberOfWatchEvents ; i++ )
	{
		stateMachineWatch_t* watchEvent = (stateMachineWatch_t*)memoryPoolLocation ;

#if TRACING_ENABLED
		printf("\tChecking watch event at %p\n", memoryPoolLocation) ;
#endif

		if(watchEvent->watchVariableLocation == loc)
		{
#if TRACING_ENABLED
			printf("\t\tFound it\n") ;
#endif

			watchEvent->parent.eventType			= SUBSTATE_NON_EVENT ;
			watchEvent->parent.eventListenerCount	= 0 ;
			watchEvent->triggered					= false ;
			watchEvent->size						= 0 ;
			watchEvent->watchVariableLocation		= 0 ;

			break ;
		}
		else
		{
			memoryPoolLocation += sizeof(stateMachineWatch_t) ;
		}
	}

	/* It's ok to re-enable interrupts */

	HSM_EXIT_CRITICAL_SECTION() ;
}


bool hsm_publishEventToAll(				event_t* event)
{
	bool		someoneAcceptedEvent = false ;
	uint8_t		statetMachineIndex ;

	for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
	{
		if(stateMachines[statetMachineIndex] != NULL)
		{
			/*
			 * Or in the result of the postEvent call since that will make it easy
			 * to determine that at least one state machine accepted the event.
			 */

			someoneAcceptedEvent |= hsm_postEventToMachine(stateMachines[statetMachineIndex], event) ;
		}
	}

	return someoneAcceptedEvent ;
}


void hsm_iterateAllStateMachines(	void)
{
	uint8_t		statetMachineIndex ;

	for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
	{
		if(stateMachines[statetMachineIndex] != NULL)
		{
			hsm_iterateStateMachine(stateMachines[statetMachineIndex]) ;
		}
	}
}


#if configHSM_MACHINE_LEVEL_DEBUGGING_ENABLED
char* __XDATA			eventTypes[]			= { "NO_EVENT",
													"ENTRY",
													"INIT",
													"HIST_DEF",
													"TICK",
													"TIMEOUT",
													"REPEATING",
													"WATCH",
													"DO",
													"EXIT",
													"TERMINATE"} ;

char* __XDATA			responseTypes[]			= { "IGNORED",
													"HANDLED",
													"TRANSITION",
													"TRANSITION_TO_HISTORY",
													"TRANSITION_TO_SELF" } ;
#endif

static const event_t	initialTransitionEvent	= { SUBSTATE_INITIAL_TRANSITION } ;
static const event_t	jumpToHistoryEvent		= { SUBSTATE_JUMP_TO_HISTORY_DEFAULT } ;
static const event_t	doEvent					= { SUBSTATE_DO } ;
static const event_t	tickEvent				= { SUBSTATE_TICK } ;
static const event_t	enterEvent				= { SUBSTATE_ENTRY } ;
static const event_t	exitEvent				= { SUBSTATE_EXIT } ;

void hsm_handleTick(	uint32_t microsecondsSinceLastHandled)
{
	uint8_t		statetMachineIndex ;

	HSM_ENTER_CRITICAL_SECTION() ;

	for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
	{
		stateMachine_t*	machine = stateMachines[statetMachineIndex] ;

		if(machine != NULL)
		{
//			machine->timeInCurrentState_Hours ;
			machine->timeInCurrentState_Microseconds += microsecondsSinceLastHandled ;

			if(machine->timeInCurrentState_Microseconds > (60UL * 60UL * 1000000UL))
			{
				/* must have wrapped around so reset it */

				machine->timeInCurrentState_Hours++ ;
				machine->timeInCurrentState_Microseconds = 0 ;
			}

			/* If this machine really wants to get TICK events, send them */

			if(machine->requestsTickEvents)
			{
				hsm_postEventToMachine(machine, (event_t*)&tickEvent) ;
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
					timerEvent_t*	timer = (timerEvent_t*)memoryPoolLocation ;

					memoryPoolLocation += HSM_TIMER_EVENT_MEMORY_SIZE ;

					/* See if this alarm or timeout is active. If not, skip it */

					if(((alarmEvent_t*)timer)->active == false)
					{
						continue ;
					}

					timer->remainingMicroseconds -= microsecondsSinceLastHandled ;

					if(timer->remainingMicroseconds > (60UL * 60UL * 1000000UL))
					{
						/* must have wrapped around so reset it */

						timer->remainingMicroseconds = 0 ;
					}

					if(timer->remainingMicroseconds == 0)
					{
						if(timer->remainingHours > 0)
						{
							--(timer->remainingHours) ;

							timer->remainingMicroseconds = (60UL * 60UL * 1000000UL) ;
						}
						else if(timer->remainingHours == 0)
						{
							/* Here's at least one. Fire off the event */

#if 1
							printf("AIMING %p (%d) AT '%s::%s'...FIRE!!!\n", (void*)timer, ((event_t*)timer)->eventType, machine->instanceName ? machine->instanceName : "<unknown>", ((state_t*)(machine->currentState))->stateName ? ((state_t*)(machine->currentState))->stateName : "<unknown>") ;
#endif
if(((event_t*)timer)->eventType == SUBSTATE_NON_EVENT)
{
	printf("Posting non event at %p to '%s'\n", (void*)timer, machine->instanceName) ; fflush(stdout) ;
}
							if(!hsm_postEventToMachine(machine, (event_t*)timer))
							{
								uint8_t	statetMachineShutdownIndex ;
#if !defined(__c8051f040__) && !defined(__AVR__)
								FILE*	file = fopen("hsm_internal_eventQueue_insert_error", "a") ;

								if(file)
								{
									time_t			rawtime ;
									struct tm *		timeinfo ;
									char			timeBuffer[50] ;

									time(&rawtime) ;
									timeinfo = localtime(&rawtime) ;

									strftime(timeBuffer, 50, "%Y/%m/%d %H:%M:%S", timeinfo) ;

									fprintf(file, "Event posting of type %d failed for machine '%s' at %s\n", ((event_t*)timer)->eventType, machine->instanceName, timeBuffer) ;
									system("touch hsm_MIRA_output_enable") ;
									outputStateMachineStatus(file) ;
								}
#endif
								printf("AIMING %p (%d) AT '%s::%s'...FAIL!!!\n", (void*)timer, ((event_t*)timer)->eventType, machine->instanceName ? machine->instanceName : "<unknown>", ((state_t*)(machine->currentState))->stateName ? ((state_t*)(machine->currentState))->stateName : "<unknown>") ;

								for( statetMachineShutdownIndex = 0 ; statetMachineShutdownIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineShutdownIndex++ )
								{
									stateMachine_t*	errorMachine = stateMachines[statetMachineShutdownIndex] ;

									if(errorMachine->fatalErrorHandler)
									{
										errorMachine->fatalErrorHandler(errorMachine) ;
									}
								}
							}

							if(((event_t*)timer)->eventType == SUBSTATE_TIMEOUT)
							{
								/*
								 * This is a timeout so clear it now to keep MANY events
								 * from being fired before the state machine can iterate
								 * the appropriate state to clear it.
								 */

								((alarmEvent_t*)timer)->active = false ;
							}
							else
							{
								/* No matter what, reset the alarm to it's original state. Even in the
								 * case of a non-repeating alarm, I may want to re-use it later so this
								 * will make sure it's in the proper state should the alarm be
								 * activated again.
								 */

								timer->remainingHours			= timer->originalHours ;
								timer->remainingMicroseconds	= timer->originalMicroseconds ;

								/* If this is a repeating alarm, reset it for next time */

								if(((alarmEvent_t*)timer)->repeating)
								{
									((alarmEvent_t*)timer)->active	= true ;
								}
								else
								{
									((alarmEvent_t*)timer)->active	= false ;
								}
							}
						}
					}
				}
			}

			/* Go through the list of watch variables and send signals for any that have changed to true */

			if(machine->startOfWatchEvents)
			{
				uint8_t		watchIndex ;
				uint8_t*	memoryPoolLocation = (uint8_t*)(machine->startOfWatchEvents) ;

				for( watchIndex = 0 ; watchIndex < machine->numberOfWatchEvents ; watchIndex++ )
				{
					stateMachineWatch_t*	watch = (stateMachineWatch_t*)memoryPoolLocation ;

					memoryPoolLocation += sizeof(stateMachineWatch_t) ;

					if(		(watch->watchVariableLocation)
						&&	(!watch->triggered))
					{
						bool	isWatchVariableNonZero = false ;

						switch(watch->size)
						{
							case sizeof(uint8_t):
							{
								if(*((uint8_t*)(watch->watchVariableLocation)))
								{
									isWatchVariableNonZero = true ;
								}

								break ;
							}
							case sizeof(uint16_t):
							{
								if(*((uint16_t*)(watch->watchVariableLocation)))
								{
									isWatchVariableNonZero = true ;
								}

								break ;
							}
							case sizeof(uint32_t):
							{
								if(*((uint32_t*)(watch->watchVariableLocation)))
								{
									isWatchVariableNonZero = true ;
								}

								break ;
							}
						}

						if(isWatchVariableNonZero)
						{
							/* Set the triggered flag to keep the event from firing more than once */

							watch->triggered = true ;

							if(!hsm_postEventToMachine(machine, (event_t*)watch))
							{
								printf("Event posting of type %d failed for machine '%s'\n", ((event_t*)watch)->eventType, machine->instanceName) ;
								exit(0) ;
							}
						}
					}
				}
			}
		}
	}

	HSM_EXIT_CRITICAL_SECTION() ;
}


#ifndef __c8051f040__
void outputStateMachineStatus(				FILE* destination)
{
	if(destination)
	{
		uint8_t	statetMachineIndex ;

		for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
		{
			if(stateMachines[statetMachineIndex] != NULL)
			{
				stateMachine_t*	machine = stateMachines[statetMachineIndex] ;

				fprintf(destination, "\t%s:%s\n", machine->instanceName ? machine->instanceName : "<unknownMachineName>", ((state_t*)(machine->currentState))->stateName ? ((state_t*)(machine->currentState))->stateName : "<unknownStateName>") ;

				if(stateMachines[statetMachineIndex]->debugging_statusDisplay)
				{
					((stateMachine_displayStatusInfo_t)(stateMachines[statetMachineIndex]->debugging_statusDisplay))(stateMachines[statetMachineIndex], destination) ;
				}
			}
		}
	}
}
#endif

stateMachine_stateResponse_t callStateHandler(stateMachine_t* sm, state_t* state, event_t* event)
{
	stateMachine_stateResponse_t	response ;

#if TRACING_ENABLED
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
			sm->activeState = state ;

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
			sm->timeInCurrentState_Hours			= 0 ;
			sm->timeInCurrentState_Microseconds		= 0 ;

			if(		(state->parent)
				&&	(((state_t*)(state->parent))->type == STATE_WITH_SHALLOW_HISTORY))
			{
				/* Store only most recent direct child state */
//printf("   setting SHALLOW history for '%s' to '%s'   ", ((state_t*)(state->parent))->stateName, state->stateName) ; fflush(stdout) ;
				sm->historicalMarkers[((state_with_history_t*)(state->parent))->historyMarkerIndex] = sm->mostRecentlyEnteredState ;
			}

			if(sm->debugging_machineOutputDisplay)
			{
				((stateMachine_displayMachineOutput_t)(sm->debugging_machineOutputDisplay))(sm) ;
			}
		}

		if(event == &exitEvent)
		{
			sm->mostRecentlyExitedState = (void*)state ;

			if(state->type == STATE_WITH_DEEP_HISTORY)
			{
//#warning This will not work in all cases. A stack is needed to keep track of the most recently entered state with deep history. Then, any time a new state is entered, that top of said stack needs to have its history marker set. In most cases, it will be fine, but if the state with deep history has a transition to its own history, this way of doing it will fail.
				/* store child state that was active before starting transition sequence */
//printf("   setting DEEP history for '%s' to '%s'   ", ((state_t*)(state->parent))->stateName, ((state_t*)(sm->mostRecentlyEnteredState))->stateName) ; fflush(stdout) ;
				sm->historicalMarkers[((state_with_history_t*)state)->historyMarkerIndex] = sm->mostRecentlyEnteredState ;
			}
		}

#if configHSM_MACHINE_LEVEL_DEBUGGING_ENABLED
		if(		(sm->printStateTransitions)
			&&	(hsm_getEventType(event) != SUBSTATE_DO)
			&&	(!((hsm_getEventType(event) == SUBSTATE_INITIAL_TRANSITION) && (!sm->currentStateHasInitialTransition))))
		{
			// I go through this trouble to avoid a "pointer target lost const qualifier" warning in SDCC

			const char*	myName ;

			if(hsm_isEventInternal(event))
			{
				myName = eventTypes[hsm_getEventType(event)] ;
			}
			else
			{
				myName = sm->eventNames ? sm->eventNames[hsm_getEventType(event) - SUBSTATE_LAST_INTERNAL_EVENT - 1] : "<USER_EVENT>" ;
			}

			printf("%s-%s;", &state->stateName[strlen(sm->stateMachineName) + 1], myName) ; fflush(stdout) ;

			if(		(strncmp(&state->stateName[strlen(sm->stateMachineName) + 1], "TOP", 3) == 0)
				&&	(hsm_getEventType(event) == SUBSTATE_INITIAL_TRANSITION))
			{
				printf("\n") ; fflush(stdout) ;
			}
		}
#endif

		sm->activeState = state ;

		response = ((stateMachine_callStateHandler_t)(state->handler))(sm, event) ;

		if(		(sm->printStateTransitions)
			&&	(!hsm_isEventInternal(event))
			&&	(hsm_getEventType(event) != SUBSTATE_DO)
			&&	(!((hsm_getEventType(event) == SUBSTATE_INITIAL_TRANSITION) && (!sm->currentStateHasInitialTransition))))
		{
			printf("(%s);", responseTypes[response]) ;
		}
	}

#if TRACING_ENABLED
	if(hsm_getEventType(event) != SUBSTATE_DO)
	{
		printf("response: %s ", responseTypes[response]) ; fflush(stdout) ;
	}
#endif

	if(response == TRANSITION)
	{
#if TRACING_ENABLED
		printf("to %s ", ((state_t*)(sm->nextState))->stateName) ; fflush(stdout) ;
#endif
	}

#if TRACING_ENABLED
	if(hsm_getEventType(event) != SUBSTATE_DO)
	{
		printf("\n") ; fflush(stdout) ;
	}
#endif

	return response ;
}

#define TRACING_ENABLED false
void hsm_iterateStateMachine(	stateMachine_t* sm)
{
	stateMachine_stateResponse_t	action ;
	bool							forceTransition	= false ;

//	HSM_ENTER_CRITICAL_SECTION() ;

#if TRACING_ENABLED
	#if 0
		printf("\titerating %s\n", sm->stateMachineName) ; fflush(stdout) ;
	#endif
#endif

//#warning put in basic sanity checking for sm, sm->currentState, sm->nextState, etc.

	/* First of all, is the machine initialized? If not, take care of that. */

	if(!sm->stateMachineInitialized)
	{
#if TRACING_ENABLED
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
#if TRACING_ENABLED
		#if 0
			printf("\t\tPulling next event for machine '%s'\n", sm->stateMachineName) ; fflush(stdout) ;
		#endif
#endif

		if((!hsm_internal_eventQueue_isEmpty(&sm->eventQueue)) || (forceTransition))
		{
			event_t*						eventToProcess ;
			state_t*						stateBeingProcessed	= sm->currentState ;
			stateMachine_stateResponse_t	action ;

			if(forceTransition)
			{
#if TRACING_ENABLED
				printf("\t\t\tFORCED transition\n") ; fflush(stdout) ;
#endif
				forceTransition	= false ;
				eventToProcess	= (event_t*)&initialTransitionEvent ;
			}
			else
			{
#if TRACING_ENABLED
				printf("\t\t\tGetting event from queue\n") ; fflush(stdout) ;
#endif
				eventToProcess = hsm_internal_eventQueue_remove(&sm->eventQueue) ;

#if 1//TRACING_ENABLED
				if(sm->debugging_internalEventDisplay && hsm_isEventInternal(eventToProcess))
				{
					((stateMachine_displayEventInfo_t)(sm->debugging_internalEventDisplay))(sm, eventToProcess) ;
				}

				if(sm->debugging_externalEventDisplay && !hsm_isEventInternal(eventToProcess))
				{
					((stateMachine_displayEventInfo_t)(sm->debugging_externalEventDisplay))(sm, eventToProcess) ;
				}
#endif
			}

			// Did a deferred event manage to sneak into the queue? If so, move it to where it needs to be and try again.

			if(isEventTypeDeferred(sm, hsm_getEventType(eventToProcess)))
			{
//#warning Should look at whether or not these deferred events need to be put at the head of the queue

//				printf("\n\n\nProcessing a deferred event of type: %d, sm: %p\n\n\n", eventToProcess->eventType, sm) ; fflush(stdout) ;

				// Put it into the deferred queue since that's really where it belongs

				hsm_internal_eventQueue_insert(&sm->deferredEventQueue, eventToProcess) ;

				// Try again and see if there are any non-deferred events to process this time around.

				continue ;
			}

#if TRACING_ENABLED
			printf("\t\tEvent type: %d\n", eventToProcess->eventType) ; fflush(stdout) ;
#endif
			sm->nextState = (state_t*)0 ;	/* just a little housecleaning */

#if TRACING_ENABLED
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

				if(action == TRANSITION_TO_SELF)
				{
					/* First, see if I'm already in the state that I'm transitioning
					 * to. It is possible that the current state did not catch the
					 * event, but an ancestor state did. In the latter case, walk up
					 * the tree to get to it and then change this to a normal transition.
					 */

					sm->nextState		= stateBeingProcessed ;
					stateBeingProcessed = sm->currentState ;

					while(sm->nextState != stateBeingProcessed)
					{
						callStateHandler(sm, stateBeingProcessed, (event_t*)&exitEvent) ;

						stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;
					}

					sm->currentState	= stateBeingProcessed ;
					sm->nextState		= stateBeingProcessed ;
					action				= TRANSITION ;

#if TRACING_ENABLED
					printf("    TRANSITION_TO_SELF: %s    ", stateBeingProcessed ? stateBeingProcessed->stateName : "<root>") ; fflush(stdout) ;
#endif

					break ;
				}
				else if((action == IGNORED) && ((!hsm_isEventInternal(eventToProcess)) || (eventToProcess->eventType == SUBSTATE_TIMEOUT) || (eventToProcess->eventType == SUBSTATE_REPEATING_TIMER)))
				{
					stateBeingProcessed = (state_t*)(stateBeingProcessed->parent) ;

#if TRACING_ENABLED
					printf("\t\t\t\t\t\t\tIGNORED so trying event on parent: %s\n", stateBeingProcessed ? stateBeingProcessed->stateName : "<root>") ; fflush(stdout) ;
#endif
				}
#if TRACING_ENABLED
				else if(action == TRANSITION_TO_HISTORY)
				{
					printf("    TRANSITION_TO_HISTORY: %s->%s    ", stateBeingProcessed ? stateBeingProcessed->stateName : "<root>", sm->currentState ? ((state_t*)(sm->currentState))->stateName : "<current>") ; fflush(stdout) ;

					break ;
				}
#endif
				else
				{
#if TRACING_ENABLED
					printf("  caught in '%s'  ", stateBeingProcessed->stateName) ; fflush(stdout) ;
#endif
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

#if TRACING_ENABLED
					printf("\t\t\t\t\t\t\t'%s' does not have history but tried to transition to history\n", ((state_t*)(sm->nextState))->stateName ? ((state_t*)(sm->nextState))->stateName : "<state>") ; fflush(stdout) ;
#endif

					action = TRANSITION ;

					break ;
				}
				else
				{
					state_t* nextState = sm->historicalMarkers[((state_with_history_t*)(sm->nextState))->historyMarkerIndex] ;

					/* The target must be a state with history so see if it has some
					 */

					if(nextState != (void*)0)
					{
#if TRACING_ENABLED
						printf("\t\t\t\t\t\t\thistory of state '%s' is state '%s'\n", ((state_t*)(sm->nextState))->stateName ? ((state_t*)(sm->nextState))->stateName : "<state>", ((state_t*)nextState)->stateName ? ((state_t*)nextState)->stateName : "<state>") ; fflush(stdout) ;
#endif

						/* Found a state that has some history tracking information so
						 * set the next state to that and then bail this loop so that
						 * the transition occurs normally.
						 */

						sm->nextState = nextState ;
					}
					else
					{
#if TRACING_ENABLED
						printf("\t\t\t\t\t\t\tNo history yet for '%s'\n", ((state_t*)(sm->nextState))->stateName ? ((state_t*)(sm->nextState))->stateName : "<state>") ; fflush(stdout) ;
#endif

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


			while(action == TRANSITION)
			{
				state_t*	source	= sm->currentState ;
				state_t*	target	= sm->nextState ;

				/* There are 8 different cases here. They are handled in case of complexity... */

				if(		(source == target)
					&&	(source != stateBeingProcessed))
				{
#if MINIMAL_TRACING_ENABLED
					printf("  CASE I  ") ; fflush(stdout) ;
#endif
#if TRACING_ENABLED
					printf("\t\t\t\tTransition to current state from event caught in ancestor.\n") ; fflush(stdout) ;
#endif

					/* Transition to self, but the event was caught in an ancestor state
					 * so the entry and exit methods through that state need to be called.
					 */

					while(source != stateBeingProcessed)
					{
						callStateHandler(sm, source, (event_t*)&exitEvent) ;

						source = (state_t*)(source->parent) ;
					}

					/* At this point, the exit methods of each state have been called all
					 * the way up to the state that caught the event. Now, walk back down
					 * the tree until arriving back at the initial state. The easiest way
					 * to do that is to just continue this loop and let the case E code
					 * handle it. I do not want to just set force transition here and use
					 * that mechanism since that would trigger an initial event which is
					 * not what is needed here.
					 */

					sm->currentState = stateBeingProcessed ;

					continue ;
				}
				else if(source == target)
				{
#if MINIMAL_TRACING_ENABLED
					printf("  CASE A  ") ; fflush(stdout) ;
#endif
#if TRACING_ENABLED
					printf("\t\t\t\tSelf transition.\n") ; fflush(stdout) ;
#endif

					/* Self transition. Exit and then re-enter the same state */

					callStateHandler(sm, source, (event_t*)&exitEvent) ;
					sm->currentState = target ;
					callStateHandler(sm, target, (event_t*)&enterEvent) ;
				}
				else if(source == (state_t*)(target->parent))
				{
#if MINIMAL_TRACING_ENABLED
					printf("  CASE B  ") ; fflush(stdout) ;
#endif
#if TRACING_ENABLED
					printf("\t\t\t\tTransition to direct child.\n") ; fflush(stdout) ;
#endif

					/* target is a direct child of the source. Only need to enter
					 * the target here without having to exit the source. */

					sm->currentState = target ;
					callStateHandler(sm, target, (event_t*)&enterEvent) ;
				}
				else if((state_t*)(source->parent) == (state_t*)(target->parent))
				{
#if MINIMAL_TRACING_ENABLED
					printf("  CASE C  ") ; fflush(stdout) ;
#endif
#if TRACING_ENABLED
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
#if MINIMAL_TRACING_ENABLED
					printf("  CASE D  ") ; fflush(stdout) ;
#endif
#if TRACING_ENABLED
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
					state_t**	sourceHierarchy = (state_t**)(sm->sourceHierarchy) ;//[configMAXIMUM_STATE_HIERARCHY_DEPTH] ;
					state_t**	targetHierarchy = (state_t**)(sm->targetHierarchy) ;//[configMAXIMUM_STATE_HIERARCHY_DEPTH] ;
					uint8_t		sourceIndex ;
					uint8_t		targetIndex ;
					state_t*	LCA ;
					uint8_t		entryIndex ;
					uint8_t		exitIndex ;

					/* This is where things start to get complicated... */

#if TRACING_ENABLED
					printf("\t\t\t\tScanning source hierarchy...\n") ; fflush(stdout) ;
#endif

					sourceIndex			= 0 ;
					targetIndex			= 0 ;
					stateBeingProcessed	= source ;

					do
					{
						sourceHierarchy[sourceIndex++] = stateBeingProcessed ;

#if TRACING_ENABLED
						printf("\t\t\t\t\tsourceHierarchy[%d] = %s\n", sourceIndex - 1, stateBeingProcessed->stateName) ; fflush(stdout) ;
#endif

						if(stateBeingProcessed == target)
						{
							uint8_t	exitIndex = 0 ;

#if MINIMAL_TRACING_ENABLED
							printf("  CASE H  ") ; fflush(stdout) ;
#endif
#if TRACING_ENABLED
							printf("\t\t\t\t\t\tFound target as ancestor of source\n") ; fflush(stdout) ;
#endif

							sourceIndex-- ;

							while(exitIndex < sourceIndex)
							{
#if TRACING_ENABLED
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
#if TRACING_ENABLED
						printf("\t\t\t\tScanning target hierarchy...\n") ; fflush(stdout) ;
#endif

						targetIndex			= 0 ;
						stateBeingProcessed	= target ;

						do
						{
							targetHierarchy[targetIndex] = stateBeingProcessed ;

#if TRACING_ENABLED
							printf("\t\t\t\t\ttargetHierarchy[%d] = %s\n", targetIndex, stateBeingProcessed->stateName) ; fflush(stdout) ;
#endif

							if(stateBeingProcessed == source)
							{
#if MINIMAL_TRACING_ENABLED
								printf("  CASE E  ") ; fflush(stdout) ;
#endif
#if TRACING_ENABLED
								printf("\t\t\t\t\t\tFound source as ancestor of target\n") ; fflush(stdout) ;
#endif

								while(targetIndex--)
								{
#if TRACING_ENABLED
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

#if MINIMAL_TRACING_ENABLED
						printf("  CASES F&G  ") ; fflush(stdout) ;
#endif
#if TRACING_ENABLED
						printf("\t\t\t\tStill haven't found relationship. Scanning for LCA...\n") ; fflush(stdout) ;
#endif
						LCA			= 0 ;
						entryIndex	= targetIndex - 1 ;
						exitIndex	= sourceIndex - 1 ;
#if TRACING_ENABLED
						printf("\t\t\t\t\tentryIndex = %d, exitIndex = %d\n", entryIndex, exitIndex) ; fflush(stdout) ;
#endif

						while(sourceHierarchy[exitIndex] == targetHierarchy[entryIndex])
						{
							LCA = sourceHierarchy[exitIndex] ;

							entryIndex-- ;
							exitIndex-- ;

#if TRACING_ENABLED
							printf("\t\t\t\t\tCurrent LCA candidate: %s\n", LCA->stateName) ; fflush(stdout) ;
#endif

							LCAindex++ ;
						}

#if TRACING_ENABLED
						printf("\t\t\t\t\tLCA of %s and %s is: %s\n", source->stateName, target->stateName, LCA->stateName) ; fflush(stdout) ;
						printf("\t\t\t\t\tentryIndex = %d, exitIndex = %d\n", entryIndex, exitIndex) ; fflush(stdout) ;
#endif

						sourceIndex	= exitIndex + 1 ;
						exitIndex	= 0 ;

						while(exitIndex < sourceIndex)
						{
#if TRACING_ENABLED
							printf("\t\t\t\t") ; fflush(stdout) ;
#endif

							callStateHandler(sm, sourceHierarchy[exitIndex], (event_t*)&exitEvent) ;

							exitIndex++ ;
						}

						targetIndex = entryIndex + 1 ;

						while(targetIndex--)
						{
#if TRACING_ENABLED
							printf("\t\t\t\t") ; fflush(stdout) ;
#endif
							callStateHandler(sm, targetHierarchy[targetIndex], (event_t*)&enterEvent) ;
						}

						sm->currentState = target ;
					}
				}

				/* Now force an initial transition event that will cause the
				 * target state to execute any initial transactions it might
				 * have so the next iteration through this loop will catch it.
				 */

				forceTransition = true ;

				/* Since this is a loop and, in most cases, I want to exit the
				 * loop go ahead and bail now. However there is a case that would
				 * keep this code in the loop and that is where transitioning to
				 * the same state but the transition was triggered from a distant
				 * ancestor. That case is handled at the beginning of this loop
				 * as case I.
				 */

				break ;
			}

#if configHSM_MACHINE_LEVEL_DEBUGGING_ENABLED
			if(!forceTransition)
			{
				if(sm->debugging_machineOutputDisplay)
				{
					((stateMachine_displayMachineOutput_t)(sm->debugging_machineOutputDisplay))(sm) ;
				}
			}
#endif
		}
		else if(sm->requestsDoEvents > 0)
		{
#if TRACING_ENABLED
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

#if TRACING_ENABLED
	#if 0
		printf("\t\tEvent queue empty.\n") ; fflush(stdout) ;
	#endif
#endif

//	HSM_EXIT_CRITICAL_SECTION() ;
}
