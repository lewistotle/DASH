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

#if config_stateMachine_MAX_NUMBER_OF_EVENT_TYPES <= 256
	typedef uint8_t	rawEventType_t ;
	typedef uint8_t eventType_t ;
	typedef uint8_t	eventQueueIndex_t ;
#elif config_stateMachine_MAX_NUMBER_OF_EVENT_TYPES < 65536
	typedef uint16_t	rawEventType_t ;
	typedef struct
	{
		union
		{
			struct
			{
				unsigned	eventFamily	: 2 ;
				unsigned	eventID		: 14 ;
			} encodedEventType ;
			uint8_t	rawEventType ;
		}
	} eventType ;
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

typedef uint8_t			eventListenerCount_t ;

#define EVENT_SIZE_MASK					0xE0
#define EVENT_REFERENCE_COUNT_MASK		0x1F

#define hsm_getEventMemoryPool(evt)		((((event_t*)evt)->eventInfo & EVENT_SIZE_MASK) >> 5)
#define hsm_getEventReferenceCount(evt)	(((event_t*)evt)->eventInfo & EVENT_REFERENCE_COUNT_MASK)

typedef struct
{
	eventType_t				eventType ;
	eventListenerCount_t	eventListenerCount ;
} event_t ;



#define hsm_getEventType(event)		(event->eventType)

enum STATE_MACHINE_INTERNAL_EVENTS	{
										SUBSTATE_LAST_USER_EVENTS			= 0x7F,
										SUBSTATE_FIRST_GLOBAL_EVENT			= 0x80,
										SUBSTATE_NON_EVENT					= 0x00,
										SUBSTATE_ENTRY						= 0x01,
										SUBSTATE_INITIAL_TRANSITION			= 0x02,
										SUBSTATE_JUMP_TO_HISTORY_DEFAULT	= 0x03,
										SUBSTATE_TICK						= 0x04,
										SUBSTATE_TIMER						= 0x05,
										SUBSTATE_WATCHED					= 0x06,
										SUBSTATE_DO							= 0x07,
										SUBSTATE_EXIT						= 0x08,
										SUBSTATE_LAST_INTERNAL_EVENT		= SUBSTATE_EXIT
									} ;

#define hsm_isEventInternal(event)	(event->eventType <= SUBSTATE_EXIT ? true : false)
#define hsm_isEventGlobal(event)	(event->eventType >= SUBSTATE_FIRST_GLOBAL_EVENT ? true : false)
#define hsm_isEventUser(event)		((event->eventType > SUBSTATE_EXIT) && (event->eventType <= SUBSTATE_LAST_USER_EVENTS)) ? true : false)




enum WATCH_VARIABLE_TYPE		{ UINT8 = 1, UINT16 = 2, UINT32 = 4 } ;

typedef struct
{
	event_t						parent ;

	void*						machine ;

	enum WATCH_VARIABLE_TYPE	type ;
	void*						watchVariableLocation ;
} stateMachineWatch_t ;

typedef struct
{
	event_t						parent ;

	bool						active ;

	uint32_t					remainingHours ;			/* only 489,957 years, 5 months, 19 hours before wrapping */
	uint32_t					remainingMicroseconds ;

	uint32_t					repeatingHours ;			/* only 489,957 years, 5 months, 19 hours before wrapping */
	uint32_t					repeatingMicroseconds ;
} alarmEvent_t ;


typedef struct
{
	event_t						parent ;

	uint32_t					uptime_hours_endTime ;			/* only 489,957 years, 5 months, 19 hours before wrapping */
	uint32_t					uptime_microseconds_endTime ;

	void*						machine ;
} stateMachineTimeout_t ;

#define hsm_isEventAMachineTimeout(machine, event)	(((void*)event >= machine->startOfTimerEvents) && ((void*)event < (void*)(((char*)machine->startOfTimerEvents) + (machine->numberOfTimerEvents * sizeof(alarmEvent_t)))))


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






typedef struct
{
	uint8_t	mask[8] ;
} eventTypeBitmask_t ;


bool hsm_isEventInMask(	event_t* event, eventTypeBitmask_t* maskSet) ;














bool eventQueue_initialize(	eventQueue_t* Q, event_t** storage, eventQueueIndex_t maxEntriesInQueue) ;

uint8_t eventQueue_isEmpty(	eventQueue_t* Q) ;
uint8_t eventQueue_isFull(	eventQueue_t* Q) ;


bool eventQueue_insert(		eventQueue_t* Q, event_t* event) ;
event_t* eventQueue_remove(	eventQueue_t* Q) ;

#endif /* STATEMACHINE_G4_EVENTQUEUE_H_ */
