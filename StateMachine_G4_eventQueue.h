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

#ifndef config_stateMachine_MAX_NUMBER_OF_EVENT_TYPES
	#define configstateMachine_MAX_NUMBER_OF_EVENT_TYPES		100
#endif

#if config_stateMachine_MAX_NUMBER_OF_EVENT_TYPES < 127
	typedef uint8_t				eventType_t ;
	/* The signed version is used here to allow for loop indexes to be
	 * compared to zero and have it do the right thing. That is why
	 * 127 was chosen above rather than 255
	 */
	typedef int8_t				eventQueueIndex_t ;
#elif config_stateMachine_MAX_NUMBER_OF_EVENT_TYPES < 32767
	typedef uint16_t			eventType_t ;
	typedef int8_t				eventQueueIndex_t ;
#else
	#error	DAMN! You have got way too many event types here.
#endif


/* This is the basic event type structure. You may be wondering why
 * this is done as a struct since it has but a single element. Well,
 * the beauty of that is that different event types can be created
 * thusly:
 *
 * 		typedef struct
 * 		{
 * 			event_t	parent ;
 * 			uint8_t	someNewData ;
 * 			uint8_t	stillMoreNewData ;
 * 		} newEvent_t ;
 *
 * Since C requires that the first element in a struct be at the
 * base address of the struct, this allows events to be cast to
 * the base class and then stored in the queue without the queue
 * having to know about all the additional data.
 */

typedef struct
{
	eventType_t			eventType ;
} event_t ;


/* Now make up a simple queue that will be used to hold pointers to
 * all the events that need to be stored. By storing pointers to
 * events rather than the events themselves, multiple types of
 * events can be stored as described above. Also, this means that
 * no copying of event data is needed so it's a bit faster this way.
 */

typedef struct
{
	eventQueueIndex_t	Capacity ;
	eventQueueIndex_t	Front ;
	eventQueueIndex_t	Rear ;
	eventQueueIndex_t	Size ;
	event_t**			Array ;
} eventQueue_t ;



bool eventQueue_initialize(	eventQueue_t* Q, event_t** storage, eventQueueIndex_t maxEntriesInQueue) ;

uint8_t eventQueue_isEmpty(	eventQueue_t* Q) ;
uint8_t eventQueue_isFull(	eventQueue_t* Q) ;


bool eventQueue_insert(		eventQueue_t* Q, event_t* event) ;
event_t* eventQueue_remove(	eventQueue_t* Q) ;

#endif /* STATEMACHINE_G4_EVENTQUEUE_H_ */
