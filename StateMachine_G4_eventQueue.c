/*
 * sm_test_machine_a.c
 *
 *  Created on: Dec 5, 2009
 *      Author: jlewis
 */

#include <stdio.h>

#include "stateMachine_G4.h"
#include "stateMachine_G4_eventQueue.h"






bool hsm_isEventInMask(	event_t* event, eventTypeBitmask_t* maskSet)
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









bool eventQueue_initialize(	eventQueue_t* Q, event_t** storage, eventQueueIndex_t maxEntriesInQueue)
{
	Q->Capacity	= maxEntriesInQueue ;
	Q->Size		= 0 ;
	Q->Front	= 1 ;
	Q->Rear		= 0 ;
	Q->Array	= storage ;

	return true ;
}


uint8_t eventQueue_isEmpty(	eventQueue_t* Q)
{
	return Q->Size == 0 ;
}


uint8_t eventQueue_isFull(	eventQueue_t* Q)
{
	return Q->Size == Q->Capacity ;
}


static eventQueueIndex_t nextLocationFromPoint(	eventQueue_t* Q, eventQueueIndex_t location)
{
	if(++location == Q->Capacity)
	{
		location = 0 ;
	}

	return location ;
}


extern char*	eventTypes[] ;

bool eventQueue_insert(		eventQueue_t* Q, event_t* event)
{
	if(!eventQueue_isFull(Q))
	{
		Q->Size++ ;
		Q->Rear = nextLocationFromPoint(Q, Q->Rear) ;
		Q->Array[Q->Rear] = event ;

#if 0
		printf("\t\t\tPosting event type %s to %p\n", hsm_isEventInternal(event) ? eventTypes[hsm_getEventType(event)] : "<USER_EVENT>", &Q->Array[Q->Rear]) ;
#endif
#if 0
		printf("[%p]", &Q->Array[Q->Rear]) ;
#endif
		return true ;
	}
	else
	{
		printf("\t\t\tEvent queue FULL\n") ;
		return false ;
	}
}


event_t* eventQueue_remove(	eventQueue_t* Q)
{
#if 0
	printf("\t\t\t\teventQueue_remove(): Q: %p\n", Q) ;
#endif
	if(!eventQueue_isEmpty(Q))
	{
		event_t* eventReceived = Q->Array[Q->Front] ;

#if 0
		printf("\t\t\t\teventQueue_remove(): eventReceived: %p\n", eventReceived) ;
#endif

		Q->Size-- ;
		Q->Front = nextLocationFromPoint(Q, Q->Front) ;

		return eventReceived ;
	}
	else
	{
		return (event_t*)0 ;
	}
}


void addToDeferredTypeList(			stateMachine_t* sm, rawEventType_t eventTypeToDefer)
{
	if(sm->currentDepthOfEventsToDeferList < sm->maxDepthOfEventsToDeferList)
	{
#if 0
		sm->typesOfEventsToDefer[sm->currentDepthOfEventsToDeferList] = eventTypeToDefer ;
#endif

		sm->currentDepthOfEventsToDeferList++ ;
	}
}


bool isEventTypeDeferred(			stateMachine_t* sm, rawEventType_t eventTypeToCheck)
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


void removeFromDeferredTypeList(	stateMachine_t* sm, rawEventType_t eventTypeToUnDefer)
{
	if(sm->currentDepthOfEventsToDeferList > 0)
	{
		bool				found = false ;
		eventQueueIndex_t	i ;

		for( i = (sm->currentDepthOfEventsToDeferList - 1) ; i != 0 ; i-- )
		{
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

			currentEvent	= eventQueue_remove(&sm->deferredEventQueue) ;
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
					eventQueue_insert(&sm->eventQueue, currentEvent) ;
				}
				else
				{
					eventQueue_insert(&sm->deferredEventQueue, currentEvent) ;
				}

				/* Get the next one and then check to see if it is the same as the
				 * first event. I have to check this just in case the queue was full
				 * since an endless loop can happen in this case if the check were
				 * not done.
				 */

				currentEvent = eventQueue_remove(&sm->deferredEventQueue) ;

				if(currentEvent == firstEvent)
				{
					break ;
				}
			}
		}
	}
}


bool hsm_postEventToMachine(			event_t* event, stateMachine_t* sm)
{
#if 1
	if(sm->internalEventDebuggingDisplay && hsm_isEventInternal(event))
	{
		((stateMachine_displayEventInfo_t)(sm->internalEventDebuggingDisplay))(sm, event) ;
	}

	if(sm->eventDebuggingDisplay && !hsm_isEventInternal(event))
	{
		((stateMachine_displayEventInfo_t)(sm->eventDebuggingDisplay))(sm, event) ;
	}
#endif

//	if(isEventTypeDeferred(sm, hsm_getEventType(event)))
//	{
//		return eventQueue_insert(&sm->deferredEventQueue, event) ;
//	}
//	else
//	{
		return eventQueue_insert(&sm->eventQueue, event) ;
//	}
}
