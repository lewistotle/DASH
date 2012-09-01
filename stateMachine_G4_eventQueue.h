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

#if defined(__TS7800__) || defined(__cygwin__) || defined(__linux__)
	#include <pthread.h>
#endif

#ifndef config_stateMachine_MAX_NUMBER_OF_EVENT_TYPES
	#define configstateMachine_MAX_NUMBER_OF_EVENT_TYPES		256
#endif

#if config_stateMachine_MAX_NUMBER_OF_EVENT_TYPES <= 256
	typedef uint8_t eventType_t ;
	typedef uint8_t	eventQueueIndex_t ;
	typedef uint8_t	eventListenerCount_t ;
#elif config_stateMachine_MAX_NUMBER_OF_EVENT_TYPES < 65536
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


/* This is the basic event type structure. There are two elements of
 * an event; the type and the listener count.
 * The event type is simply a number indicating to the rest of the system
 * what this event is.
 * The listener count allows the garbage collection to work since it knows
 * when a particular event is no longer needed in the system. As long as
 * the listener count is greater than zero, the event will not be flushed.
 * To create additional events, it is possible to, in effect, "subclass"
 * an event thusly:
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
	eventType_t				eventType ;
	eventListenerCount_t	eventListenerCount ;
} event_t ;


/*
 * One of the key features of hsm is that it supports a variety of timer
 * events that can be used to trigger an action or transition after either
 * a specific amount of time, or at a regular interval. The core of this
 * capability is the timerEvent_t struct. This subclasses the base event_t
 * structure and then adds some time periods to it.
 *
 * The first time period is the remaining time until the timer "fires."
 * The second time period, while called original, is used in one of two
 * ways depending on whether or not this particular timer event is repeating
 * or not.
 *
 * The struct alartEvent_t subclasses timerEvent_t and adds an active flag
 * to it. This allow for one-shots since once the timer runs out, the active
 * flag is cleared and it won't fire again either from repeating or from the
 * fact that the state machine hasn't processed the event yet.
 *
 * The struct timeoutEvent_t subclasses alarmEvent_t to add some information
 * that allows the state machine engine to determine which timeout has just
 * fired so that the correct action can happen.
 */

typedef struct
{
	event_t						parent ;

	uint32_t					remainingHours ;			/* only 489,957 years, 5 months, 19 hours before wrapping */
	uint32_t					remainingMicroseconds ;

	uint32_t					originalHours ;				/* only 489,957 years, 5 months, 19 hours before wrapping */
	uint32_t					originalMicroseconds ;
} timerEvent_t ;


typedef struct
{
	timerEvent_t				parent ;

#ifdef __c8051f040__
	uint8_t						repeating ;
#else
	bool						repeating ;
#endif

#ifdef __c8051f040__
	uint8_t						active ;
#else
	bool						active ;
#endif
} alarmEvent_t ;


typedef struct
{
	alarmEvent_t				parent ;

	void*						ownerState ;
	uint16_t					lineNumber ;
} timeoutEvent_t ;

/*
 * HSM_TIMER_EVENT_MEMORY_SIZE is the size of the largest of the timer events
 * that is used to allocate memory as well as determine if a particular event
 * is a timer event.
 */

#define HSM_TIMER_EVENT_MEMORY_SIZE	sizeof(timeoutEvent_t)

/*
 * A simple macro used to determine if an event is a timer event or not.
 */

#define hsm_isEventAMachineTimeout(machine, event)	(((void*)event >= machine->startOfTimerEvents) && ((void*)event < (void*)(((char*)machine->startOfTimerEvents) + (machine->numberOfTimerEvents * HSM_TIMER_EVENT_MEMORY_SIZE))))




/*
 * HSM provides support for UML watch events. These trigger a transition when
 * a variable is non-zero.
 * In order to do this, I store the address of the variable in question along
 * with the size, in bytes, of the variable in question. This allows for any
 * arbitrary variable to be watched.
 * The triggered member tells the state machine engine that the event has been
 * sent already so it won't keep sending events while waiting for the machine
 * to process the event.
 */

enum WATCH_VARIABLE_TYPE		{ UINT8 = 1, UINT16 = 2, UINT32 = 4 } ;

typedef struct
{
	event_t						parent ;

#ifdef __c8051f040__
	uint8_t						triggered ;
#else
	bool						triggered ;
#endif
	enum WATCH_VARIABLE_TYPE	size ;
	void*						watchVariableLocation ;
} stateMachineWatch_t ;






/*
 * Now make up a simple queue that will be used to hold pointers to
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
#if defined(__TS7800__) || defined(__cygwin__) || defined(__linux__)
	pthread_mutex_t		mutex ;
#endif
} eventQueue_t ;


#if defined(__TS7800__) || defined(__cygwin__) || defined(__linux__)
	#define EVENT_QUEUE_ENTER_CRITICAL_SECTION()	pthread_mutex_lock(&(Q->mutex)) ;
	#define EVENT_QUEUE_EXIT_CRITICAL_SECTION()		pthread_mutex_unlock(&(Q->mutex)) ;
#elif defined(__c8051f040__)
	#include <C8051F040.h>

	#define EVENT_QUEUE_ENTER_CRITICAL_SECTION()		__asm		\
														push	ACC	\
														push	IE	\
														__endasm;	\
														EA = 0;
	#define EVENT_QUEUE_EXIT_CRITICAL_SECTION()			__asm			\
														pop		ACC		\
														__endasm;		\
														ACC &= 0x80;	\
														IE |= ACC;		\
														__asm			\
														pop		ACC		\
														__endasm;
#elif defined(__MINGW__)
	#define EVENT_QUEUE_ENTER_CRITICAL_SECTION()	{
	#define EVENT_QUEUE_EXIT_CRITICAL_SECTION()		}
#elif defined(__AVR__)
	#warning FIX THIS!!!

	#define EVENT_QUEUE_ENTER_CRITICAL_SECTION()	{
	#define EVENT_QUEUE_EXIT_CRITICAL_SECTION()		}
#else
	#define EVENT_QUEUE_ENTER_CRITICAL_SECTION()	{ uint8_t sreg = SREG ; cli()
	#define EVENT_QUEUE_EXIT_CRITICAL_SECTION()		SREG = sreg ; }
#endif




typedef struct
{
	uint8_t	mask[8] ;
} eventTypeBitmask_t ;


bool hsm_internal_isEventInMask(	event_t* event, eventTypeBitmask_t* maskSet) ;






enum STATE_MACHINE_INTERNAL_EVENTS	{
										SUBSTATE_LAST_USER_EVENTS			= 0x7F,
										SUBSTATE_FIRST_GLOBAL_EVENT			= 0x80,
										SUBSTATE_NON_EVENT					= 0x00,
										SUBSTATE_ENTRY,
										SUBSTATE_INITIAL_TRANSITION,
										SUBSTATE_JUMP_TO_HISTORY_DEFAULT,
										SUBSTATE_TICK,
										SUBSTATE_TIMEOUT,
										SUBSTATE_REPEATING_TIMER,
										SUBSTATE_WATCHED,
										SUBSTATE_DO,
										SUBSTATE_EXIT,
										SUBSTATE_TERMINATE,
										SUBSTATE_LAST_INTERNAL_EVENT		= SUBSTATE_TERMINATE
									} ;

#define hsm_getEventType(event)		(((event_t*)event)->eventType)
#define hsm_isEventInternal(event)	(((event_t*)event)->eventType <= SUBSTATE_LAST_INTERNAL_EVENT ? true : false)
#define hsm_isEventGlobal(event)	(((event_t*)event)->eventType >= SUBSTATE_FIRST_GLOBAL_EVENT ? true : false)
#define hsm_isEventUser(event)		((((event_t*)event)->eventType > SUBSTATE_EXIT) && (((event_t*)event)->eventType <= SUBSTATE_LAST_USER_EVENTS)) ? true : false)











bool hsm_internal_eventQueue_initialize(	eventQueue_t* Q, event_t** storage, eventQueueIndex_t maxEntriesInQueue) ;

uint8_t hsm_internal_eventQueue_isEmpty(	eventQueue_t* Q) ;
uint8_t hsm_internal_eventQueue_isFull(		eventQueue_t* Q) ;


bool hsm_internal_eventQueue_insert(		eventQueue_t* Q, event_t* event) ;
event_t* hsm_internal_eventQueue_remove(	eventQueue_t* Q) ;

#endif /* STATEMACHINE_G4_EVENTQUEUE_H_ */
