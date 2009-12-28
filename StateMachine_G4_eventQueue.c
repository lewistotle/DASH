/*
 * sm_test_machine_a.c
 *
 *  Created on: Dec 5, 2009
 *      Author: jlewis
 */

#include <stdio.h>

#include "stateMachine_G4.h"
#include "stateMachine_G4_eventQueue.h"


bool initializeEventQueue(	eventQueue_t* Q, event_t** storage, uint8_t maxEntriesInQueue)
{
	Q->Capacity	= maxEntriesInQueue ;
	Q->Size		= 0 ;
	Q->Front	= 1 ;
	Q->Rear		= 0 ;
	Q->Array	= storage ;

	return true ;
}


void clearQueue(			eventQueue_t* Q)
{
	Q->Size		= 0 ;
	Q->Front	= 1 ;
	Q->Rear		= 0 ;
}


uint8_t isEmpty(			eventQueue_t* Q)
{
	return Q->Size == 0 ;
}


uint8_t isFull(				eventQueue_t* Q)
{
	return Q->Size == Q->Capacity ;
}


static uint8_t nextLocationFromPoint(	eventQueue_t* Q, uint8_t location)
{
	if(++location == Q->Capacity)
	{
		location = 0 ;
	}

	return location ;
}


extern char*	eventTypes[] ;

bool NormalInsert(			eventQueue_t* Q, event_t* event)
{
	if(!isFull(Q))
	{
		Q->Size++ ;
		Q->Rear = nextLocationFromPoint(Q, Q->Rear) ;
		Q->Array[Q->Rear] = event ;

		printf("\t\t\tPosting event type: %s\n", event->eventType <= SUBSTATE_EXIT ? eventTypes[event->eventType] : "<USER_EVENT>") ;

		return true ;
	}
	else
	{
		return false ;
	}
}


bool PriorityInsert(		eventQueue_t* Q, event_t* event)
{
	if(!isFull(Q))
	{
		Q->Size++ ;
		if(Q->Front == 0)
		{
			Q->Front = Q->Capacity - 1 ;
		}
		else
		{
			Q->Front-- ;
		}

		Q->Array[Q->Front] = event ;

		return true ;
	}
	else
	{
		return false ;
	}
}


event_t* Remove(			eventQueue_t* Q)
{
	if(!isEmpty(Q))
	{
		event_t* eventReceived = Q->Array[Q->Front] ;

		Q->Size-- ;
		Q->Front = nextLocationFromPoint(Q, Q->Front) ;

		return eventReceived ;
	}
	else
	{
		return (event_t*)0 ;
	}
}
