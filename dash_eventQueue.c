/*
 * sm_test_machine_a.c
 *
 *  Created on: Dec 5, 2009
 *      Author: jlewis
 */

#include <stdio.h>

#include "dash.h"
#include "dash_eventQueue.h"





bool hsm_internal_isEventInMask(	event_t* event, eventTypeBitmask_t* maskSet)
{
	eventType_t	eventType = hsm_getEventType(event) ;

	if(hsm_isEventInternal(event))
	{
		return false ;
	}

#if config_stateMachine_MAX_NUMBER_OF_EVENT_TYPES <= 256
	return maskSet->mask[eventType >> 3] & (1 << (eventType & 0x07)) ;
#else
	return maskSet->mask[eventType >> 3] & (1 << (eventType & 0x07)) ;
#endif
}









bool hsm_internal_eventQueue_initialize(	eventQueue_t* Q, event_t** storage, eventQueueIndex_t maxEntriesInQueue)
{
	EVENT_QUEUE_ENTER_CRITICAL_SECTION() ;

	Q->Capacity	= maxEntriesInQueue ;
	Q->Size		= 0 ;
	Q->Front	= 1 ;
	Q->Rear		= 0 ;
	Q->Array	= storage ;

	EVENT_QUEUE_EXIT_CRITICAL_SECTION() ;

	return true ;
}


uint8_t hsm_internal_eventQueue_isEmpty(	eventQueue_t* Q)
{
	uint8_t	value ;

	EVENT_QUEUE_ENTER_CRITICAL_SECTION() ;

	value = (Q->Size == 0) ;

	EVENT_QUEUE_EXIT_CRITICAL_SECTION() ;

	return value ;
}


uint8_t hsm_internal_eventQueue_isFull(	eventQueue_t* Q)
{
	uint8_t	value ;

	EVENT_QUEUE_ENTER_CRITICAL_SECTION() ;

	value = (Q->Size == Q->Capacity) ;

	EVENT_QUEUE_EXIT_CRITICAL_SECTION() ;

	return value ;
}


static eventQueueIndex_t nextLocationFromPoint(	eventQueue_t* Q, eventQueueIndex_t location)
{
	// This function MUST be called from within a critical section

	if(++location == Q->Capacity)
	{
		location = 0 ;
	}

	return location ;
}


extern char*	eventTypes[] ;

bool hsm_internal_eventQueue_insert(		eventQueue_t* Q, event_t* event)
{
	if(!hsm_internal_eventQueue_isFull(Q))
	{
		EVENT_QUEUE_ENTER_CRITICAL_SECTION() ;

		Q->Size++ ;
		Q->Rear = nextLocationFromPoint(Q, Q->Rear) ;
		Q->Array[Q->Rear] = event ;

		EVENT_QUEUE_EXIT_CRITICAL_SECTION() ;

		++event->eventListenerCount ;

		return true ;
	}
	else
	{
#if !defined(__c8051f040__) && !defined(__AVR__)
		uint8_t		i ;
		event_t**	eventPointer = (event_t**)(Q->Array) ;
		FILE*		file = fopen("hsm_internal_eventQueue_insert_error", "a") ;

		if(file)
		{
			fprintf(file, "\n\t\t\tEvent queue at %p FULL for %d\n", (void*)Q, event->eventType) ;
			fprintf(file, "\t\t\t\tCapacity: %d\n", Q->Capacity) ;
			fprintf(file, "\t\t\t\tFront   : %d\n", Q->Front) ;
			fprintf(file, "\t\t\t\tRear    : %d\n", Q->Rear) ;
			fprintf(file, "\t\t\t\tSize    : %d\n", Q->Size) ;
			fprintf(file, "\t\t\t\tArray   : %p\n", (void*)(Q->Array)) ;

			for( i = 0 ; i < Q->Capacity ; i++ )
			{
				fprintf(	file,
							"\t\t\t\t\tevent %2d(%p): %p (%d)\n",
							i,
							(void*)(&eventPointer[i]),
							(void*)(eventPointer[i]),
							eventPointer[i]->eventType) ;
			}

			fflush(file) ;
			fclose(file) ;
		}

		printf("\n\t\t\tEvent queue at %p FULL for %d\n", (void*)Q, event->eventType) ;
		printf("\t\t\t\tCapacity: %d\n", Q->Capacity) ;
		printf("\t\t\t\tFront   : %d\n", Q->Front) ;
		printf("\t\t\t\tRear    : %d\n", Q->Rear) ;
		printf("\t\t\t\tSize    : %d\n", Q->Size) ;
		printf("\t\t\t\tArray   : %p\n", (void*)(Q->Array)) ;

		for( i = 0 ; i < Q->Capacity ; i++ )
		{
			printf(	"\t\t\t\t\tevent %2d(%p): %p (%d)\n",
					i,
					(void*)(&eventPointer[i]),
					(void*)(eventPointer[i]),
					eventPointer[i]->eventType) ;
		}
#endif
		return false ;
	}
}


event_t* hsm_internal_eventQueue_remove(	eventQueue_t* Q)
{
#if 0
	printf("\t\t\t\teventQueue_remove(): Q: %p\n", Q) ;
#endif
	if(!hsm_internal_eventQueue_isEmpty(Q))
	{
		event_t* eventReceived ;

		EVENT_QUEUE_ENTER_CRITICAL_SECTION() ;

		eventReceived = Q->Array[Q->Front] ;

		Q->Array[Q->Front] = 0 ;

		Q->Size-- ;
		Q->Front = nextLocationFromPoint(Q, Q->Front) ;

		EVENT_QUEUE_EXIT_CRITICAL_SECTION() ;

		--eventReceived->eventListenerCount ;

#if 0
		printf("\t\t\t\teventQueue_remove(): eventReceived: %p\n", eventReceived) ;
#endif

		return eventReceived ;
	}
	else
	{
		return (event_t*)0 ;
	}
}


void addToDeferredTypeList(			stateMachine_t* sm, eventType_t eventTypeToDefer)
{
	if(sm->currentDepthOfEventsToDeferList < sm->maxDepthOfEventsToDeferList)
	{
//		printf("\naddToDeferredTypeList(): Deferring events of type %d... ", eventTypeToDefer) ; fflush(stdout) ;

		sm->typesOfEventsToDefer[sm->currentDepthOfEventsToDeferList] = eventTypeToDefer ;

//		printf("[%d]=%d ", sm->currentDepthOfEventsToDeferList, sm->typesOfEventsToDefer[sm->currentDepthOfEventsToDeferList]) ;

		sm->currentDepthOfEventsToDeferList++ ;
	}
}


bool isEventTypeDeferred(			stateMachine_t* sm, eventType_t eventTypeToCheck)
{
	eventQueueIndex_t	i ;

	for( i = 0 ; i < sm->currentDepthOfEventsToDeferList ; i++ )
	{
		if(sm->typesOfEventsToDefer[i] == eventTypeToCheck)
		{
			return true ;
		}
	}

	return false ;
}


void removeFromDeferredTypeList(	stateMachine_t* sm, eventType_t eventTypeToUnDefer)
{
	if(sm->currentDepthOfEventsToDeferList > 0)
	{
		bool				found = false ;
		int16_t				i ;

//		printf("\nremoveFromDeferredTypeList(): Looking for events of type %d to undefer (%d)... ", eventTypeToUnDefer, sm->currentDepthOfEventsToDeferList) ;

		for( i = sm->currentDepthOfEventsToDeferList ; i >= 0 ; i-- )
		{
//			printf("[%d]=%d ", i, sm->typesOfEventsToDefer[i]) ;

			if(sm->typesOfEventsToDefer[i] == eventTypeToUnDefer)
			{
				found = true ;

				sm->currentDepthOfEventsToDeferList-- ;

				break ;
			}
		}

		if(found)
		{
			event_t*	firstEvent ;
			event_t*	currentEvent ;

//			printf("found one in the list.... ") ;

			for( i = i ; i < sm->currentDepthOfEventsToDeferList ; i++ )
			{
				sm->typesOfEventsToDefer[i] = sm->typesOfEventsToDefer[i + 1] ;
			}

			sm->typesOfEventsToDefer[sm->currentDepthOfEventsToDeferList] = 0 ;

			/* One final thing to do. Now that these event types are no longer deferred,
			 * go through the deferred event list and move any events of this type to
			 * the normal event queue.
			 * Note that the first event is being stored separately. This is done to
			 * catch a possible endless loop just in case the deferred event queue was
			 * full and a type that wasn't in the deferred list was passed into this
			 * function. Yeah, that should never happen, but......
			 */

			currentEvent	= hsm_internal_eventQueue_remove(&sm->deferredEventQueue) ;
			firstEvent		= currentEvent ;

			while(currentEvent)
			{
				/* If this event is a deferred event, put it into the normal event
				 * queue. if not, stick it back in the deferred queue. Note that
				 * the result of the insert is not checked here. If the normal
				 * event queue is full, then these events will be discarded which
				 * is exactly what would have happened if the event hadn't been
				 * deferred and the normal event queue was full.
				 */

				if(hsm_getEventType(currentEvent) == eventTypeToUnDefer)
				{
//					printf("moving it to the normal queue.... ") ;

					hsm_internal_eventQueue_insert(&sm->eventQueue, currentEvent) ;
				}
				else
				{
					hsm_internal_eventQueue_insert(&sm->deferredEventQueue, currentEvent) ;
				}

				/* Get the next one and then check to see if it is the same as the
				 * first event. I have to check this just in case the queue was full
				 * since an endless loop can happen in this case if the check were
				 * not done.
				 */

				currentEvent = hsm_internal_eventQueue_remove(&sm->deferredEventQueue) ;

				if(currentEvent == firstEvent)
				{
					break ;
				}
			}
		}
	}
//	printf("DONE. ") ; fflush(stdout) ;
}


bool hsm_postEventToMachine(			stateMachine_t* sm, event_t* event)
{
	if(isEventTypeDeferred(sm, hsm_getEventType(event)))
	{
//		printf("\nadding event of type %d ('%s') to deferred queue of machine '%s'.... ", hsm_getEventType(event), sm->eventNames[hsm_getEventType(event)] ? sm->eventNames[hsm_getEventType(event)] : "unknown", sm->instanceName) ; fflush(stdout) ;

		return hsm_internal_eventQueue_insert(&sm->deferredEventQueue, event) ;
	}
	else
	{
//		printf("\nadding event of type %d ('%s') to normal queue of machine '%s'.... ", hsm_getEventType(event), sm->eventNames[hsm_getEventType(event)] ? sm->eventNames[hsm_getEventType(event)] : "unknown", sm->instanceName) ; fflush(stdout) ;

		return hsm_internal_eventQueue_insert(&sm->eventQueue, event) ;
	}
}
