/*
 * StateMachine_G4.h
 *
 *  Created on: Nov 27, 2009
 *      Author: jlewis
 */

#ifndef STATEMACHINE_G4_EVENTQUEUE_H_
#define STATEMACHINE_G4_EVENTQUEUE_H_

#include <stdint.h>
#include <stdbool.h>

#include "stateMachine_G4.h"


typedef struct
{
	uint8_t					eventType ;
} event_t ;


typedef struct
{
	uint8_t		Capacity ;
	uint8_t		Front ;
	uint8_t		Rear ;
	uint8_t		Size ;
	event_t**	Array ;
} eventQueue_t ;


bool initializeEventQueue(	eventQueue_t* Q, event_t** storage, uint8_t maxEntriesInQueue) ;
void clearQueue(			eventQueue_t* Q) ;

uint8_t isEmpty(			eventQueue_t* Q) ;
uint8_t isFull(				eventQueue_t* Q) ;


bool NormalInsert(			eventQueue_t* Q, event_t* event) ;
bool PriorityInsert(		eventQueue_t* Q, event_t* event) ;

event_t* Remove(			eventQueue_t* Q) ;


#endif /* STATEMACHINE_G4_EVENTQUEUE_H_ */
