/**
 * @file	dash.h
 * @author  John Lewis <dash@lewistotle.net>
 * @version 1.0
 *
 * @section LICENSE
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of
 * the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * General Public License for more details at
 * http://www.gnu.org/copyleft/gpl.html
 *
 * @section DESCRIPTION
 *
 * This is the core of all dash functions.
 */

#ifndef STATEMACHINE_G4_H_
#define STATEMACHINE_G4_H_

#ifdef __cplusplus
extern "C"
{
#endif

#include <stddef.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>

#define configHSM_DEBUGGING_ENABLED					true
#define configHSM_INTERNAL_DEBUGGING_ENABLED		true
#define configHSM_MACHINE_LEVEL_DEBUGGING_ENABLED	1

#ifndef configMAXIMUM_STATE_HIERARCHY_DEPTH
	#define configMAXIMUM_STATE_HIERARCHY_DEPTH		64
#endif

#include "dash_eventQueue.h"

/* Eclipse, while being a really awesome editor, does have to be told about
 * certain compiler specific things or it will flag them as errors.
 */

#ifdef __CDT_PARSER__
	#define __data
	#define __xdata
	#define __code
	#define __reentrant
#endif

/* This section handles any compiler specific macro generation that might
 * be needed. There are a few cases where function pointers or the
 * functions themselves need to be cast in a particular way for a given
 * compiler or it will flag it as a warning or error.
 */

#ifdef __c8051f040__
	#define CALLSTATEHANDLER_CAST(c)	(stateMachine_callStateHandler_t)(c)
	#define VOID_CAST(v)				(void*)(v)

	typedef void						FILE ;
	typedef float						sm_float_t ;
	#define const_state_t				static __xdata state_t
	#define const_state_with_history_t	static state_with_history_t
	#define REENTRANT

	#define fflush(a)
#elif defined(__linux__)
	#define CALLSTATEHANDLER_CAST(c)	(stateMachine_callStateHandler_t)(c)
	#define VOID_CAST(v)				(const void*)(v)
	#define REENTRANT
	#define __code

	typedef double						sm_float_t ;
	#define const_state_t				static const state_t
	#define const_state_with_history_t	static const state_with_history_t
#elif defined(__AVR__)
	#define CALLSTATEHANDLER_CAST(c)	(stateMachine_callStateHandler_t)(c)
	#define VOID_CAST(v)				(const void*)(v)
	#define REENTRANT
	#define __code

	typedef double						sm_float_t ;
	#define const_state_t				static const state_t
	#define const_state_with_history_t	static const state_with_history_t
#elif defined(__MINGW__)
	#define CALLSTATEHANDLER_CAST(c)	(stateMachine_callStateHandler_t)(c)
	#define VOID_CAST(v)				(const void*)(v)
	#define REENTRANT
	#define __code

	typedef double						sm_float_t ;
	#define const_state_t				static const state_t
	#define const_state_with_history_t	static const state_with_history_t
#else
	#define CALLSTATEHANDLER_CAST(c)	(stateMachine_callStateHandler_t)(c)
	#define VOID_CAST(v)				(const void*)(v)
	#define REENTRANT					__reentrant
	#define __code

	typedef double						sm_float_t ;
	#define const_state_t				static const state_t
	#define const_state_with_history_t	static const state_with_history_t
#endif



/* Now make typecasts for all the variable types. This will let me change
 * the number of bits that something might need later on without having
 * to do anything more than recompile.
 */

#ifndef config_stateMachine_MAX_EVENT_QUEUE_DEPTH
	#define configMAX_EVENT_QUEUE_DEPTH			16
#endif

#if config_stateMachine_MAX_EVENT_QUEUE_DEPTH < 127
	typedef uint8_t		eventQueueDepth_t ;
#else
	typedef uint16_t	eventQueueDepth_t ;
#endif



typedef uint8_t					stateMachinePriority_t ;

typedef struct
{
	uint16_t					numberOfChunks ;
	uint16_t					chunkSize ;
} memoryPoolInfo_t ;

typedef struct
{
	uint16_t					eventQueueDepth ;
	uint16_t					numberOfMemoryPools ;
	memoryPoolInfo_t*			eventMemoryPools ;
} machineMemoryPoolInto_t ;


typedef void (* stateMachine_destructorFunction_t)(		void* self) REENTRANT ;

#ifdef __c8051f040__
typedef void (* stateMachine_displayStatusInfo_t)(		void* self, void* event) REENTRANT ;
#else
typedef void (* stateMachine_displayStatusInfo_t)(		void* self, FILE* event) REENTRANT ;
#endif
typedef void (* stateMachine_displayEventInfo_t)(		void* self, event_t* event) REENTRANT ;
typedef void (* stateMachine_displayMachineOutput_t)(	void* self) REENTRANT ;

typedef void (* stateMachine_fatalErrorFunction_t)(		void *self) REENTRANT ;



void outputStateMachineStatus(	FILE* destination) ;





/**
 * @brief	Now for the state machine definition itself. This is the core of it all.
 *
 * The currentState and nextState members are declared as void pointers since normal C doesn't
 * allow for forward declaration. Since keeping the code in the states themselves was a very
 * high priority, these had to be declared as void pointers since doing it the other way would
 * have made it necessary to cast self in all state functions which would have been ugly.
 */

typedef struct
{
	const void*								topState ;								/*!< holds a pointer to the topmost state in the machine. It is filled in at compile time */

	/*
	 * currentState is a pointer to the state that the machine is currently in. Note that this can
	 * be a non-leaf state
	 */
	void*									currentState ;							/*!< What state the machine is in right now */
	void*									activeState ;							/*!< I forget what this one does at the moment. */
	void*									nextState ;								/*!< Set by a state when a transition is about to happen */

	uint8_t									stateMachineInitialized ;				/*!< Has the machine been initialized yet? */
	uint8_t									requestsDoEvents ;
	uint8_t									requestsTickEvents ;

	stateMachine_destructorFunction_t		destructor ;
	stateMachine_fatalErrorFunction_t		fatalErrorHandler ;

	stateMachinePriority_t					priority ;

	eventQueue_t							eventQueue ;							/*!< A queue that holds all non-deferred events that come in */
	eventQueueIndex_t						maxDepthOfEventsToDeferList ;			/*!< Holds the max number of event types that can be deferred */
	eventQueueIndex_t						currentDepthOfEventsToDeferList ;		/*!< Holds the current number of deferred event types */
	eventType_t*							typesOfEventsToDefer ;					/*!< A simple array that holds the types of events to defer */
	eventQueue_t							deferredEventQueue ;					/*!< Any deferred event types that come in get put here temporarily */

	void*									sourceHierarchy[configMAXIMUM_STATE_HIERARCHY_DEPTH] ;
	void*									targetHierarchy[configMAXIMUM_STATE_HIERARCHY_DEPTH] ;

	uint16_t								numberOfHistoricalMarkers ;
	void**									historicalMarkers ;
	void*									mostRecentlyEnteredState ;	/* Used for deep history */
	void*									mostRecentlyExitedState ;	/* used for shallow history */

	const machineMemoryPoolInto_t*			memoryPoolInfo ;
	void*									startOfEventMemoryPools ;

	uint8_t									numberOfTimerEvents ;
	void*									startOfTimerEvents ;

	uint8_t									numberOfWatchEvents ;
	void*									startOfWatchEvents ;

	uint8_t									currentStateHasInitialTransition ;

	uint32_t								timeInCurrentState_Hours ;	/* only 489,957 years, 5 months, 19 hours before wrapping */
	uint32_t								timeInCurrentState_Microseconds ;

#if configHSM_MACHINE_LEVEL_DEBUGGING_ENABLED
	const char*								stateMachineName ;						/*!< DEBUGGING only: This holds the name of the state machine that is printed out at various times (defaults to machine type but can be overridden) */

	uint8_t									printStateTransitions ;
	const char**							eventNames ;
	stateMachine_displayEventInfo_t			debugging_internalEventDisplay ;
	stateMachine_displayEventInfo_t			debugging_externalEventDisplay ;
	stateMachine_displayStatusInfo_t		debugging_statusDisplay ;
	stateMachine_displayMachineOutput_t		debugging_machineOutputDisplay ;
	stateMachine_displayMachineOutput_t		debugging_machineDebuggingDisplay ;

#endif
} stateMachine_t ;


/*
 * stateMachine_t
 * eventQueue
 * deferredTypeStack
 * historicalMarkerArray
 * eventPool_0
 *    ...
 * eventPool_n
 * timerEventPool
 */






/* Declare some function pointer types, and their associated state structures,
 * that are used for various state types.
 */

enum STATE_MACHINE_STATE_TYPES	{
									NORMAL_STATE,
									CHOICE_PSUEDOSTATE,
									STATE_WITH_SHALLOW_HISTORY,
									STATE_WITH_DEEP_HISTORY,
									JUNCTION_PSEUDO_STATE,
									FORK_PSEUDOSTATE,
									JOIN_PSEUDOSTATE,
									ORTHOGONAL_REGION
								} ;

/* Each state can do one of three things when it is handed an event.
 * It can either ignore it in which case the event is passed on to
 * the state's parent to see if it will deal with it.
 * If a state handles an event, then the event is considered consumed
 * and no further action is taken.
 * If the event causes a transition to take place, then special action
 * is then taken to get the state machine into the new state. It will
 * transition through all of the appropriate exit and entry actions
 * along the way.
 */

//enum STATE_MACHINE_STATE_RESPONSES { IGNORED, HANDLED, TRANSITION, TRANSITION_TO_HISTORY, TRANSITION_TO_SELF } ;

typedef enum { IGNORED, HANDLED, TRANSITION, TRANSITION_TO_HISTORY, TRANSITION_TO_SELF }	stateMachine_stateResponse_t ;

typedef stateMachine_stateResponse_t (* stateMachine_callStateHandler_t)(stateMachine_t* self, event_t* event) REENTRANT ;
typedef stateMachine_stateResponse_t (* stateMachine_choiceStateHandler_t)(stateMachine_t* self) REENTRANT ;

/* A couple of helpers to deal with state machine memory and initialization. */

typedef const machineMemoryPoolInto_t* (* stateMachine_memRequirements_t)(void) REENTRANT ;
typedef void (* stateMachine_constructor_t)(stateMachine_t* self) REENTRANT ;
typedef void (* stateMachine_destructor_t)(stateMachine_t* self) REENTRANT ;



typedef struct
{
	const void*									parent ;				/* pointer to parent state */
	const enum STATE_MACHINE_STATE_TYPES		type ;					/* what type of state is this? */
	stateMachine_callStateHandler_t				handler ;				/* pointer to the handler function */
#if configHSM_MACHINE_LEVEL_DEBUGGING_ENABLED
	const char*									stateName ;				/* DEBUGGING: name of this state */
#endif
} state_t ;


typedef struct
{
	const void*									parent ;				/* pointer to parent state */
	const enum STATE_MACHINE_STATE_TYPES		type ;					/* what type of state is this? */
#ifdef __c8051f040__
	const stateMachine_choiceStateHandler_t*	handler ;				/* pointer to the handler function */
#else
	const stateMachine_choiceStateHandler_t		handler ;				/* pointer to the handler function */
#endif
#if configHSM_MACHINE_LEVEL_DEBUGGING_ENABLED
	const char*									stateName ;				/* DEBUGGING: name of this state */
#endif
} choice_state_t ;


typedef struct
{
	const void*									parent ;				/* pointer to parent state */
	const enum STATE_MACHINE_STATE_TYPES		type ;					/* what type of state is this? */
#ifdef __c8051f040__
	const stateMachine_callStateHandler_t*		handler ;				/* pointer to the handler function */
#else
	const stateMachine_callStateHandler_t		handler ;				/* pointer to the handler function */
#endif
#if configHSM_MACHINE_LEVEL_DEBUGGING_ENABLED
	const char*									stateName ;				/* DEBUGGING: name of this state */
#endif
	const uint16_t								historyMarkerIndex ;	/* index into machine's history table */
} state_with_history_t ;



typedef struct
{
	event_t								parent ;

	stateMachine_t*						machine ;
	state_t*							state ;
	uint16_t							lineNumber ; 				/* used when multiple TRANSITION_WHEN calls are in a state */

	volatile void*						watchedVariableAddress ;
	uint8_t								watchedVariableSizeInBytes ;
} watchedVariableTransitionEvent_t ;


































void* hsm_malloc(									uint16_t numberOfBytes) ;
void hsm_free(										void* blockToFree) ;





event_t* hsm_createNewEvent(						stateMachine_t* sm, eventType_t eventType, uint16_t eventSize) ;
bool hsm_postEventToMachine(						stateMachine_t* sm, event_t* event) ;
bool hsm_publishEventToAll(							event_t* event) ;










alarmEvent_t* hsm_createAlarm(						stateMachine_t* machine, eventType_t eventType, uint32_t hours, uint32_t microseconds, bool repeating) ;
void hsm_resetTimeout(								stateMachine_t* machine) ;
void hsm_deleteTimeout(								stateMachine_t* machine, uint16_t lineNumber) ;


void hsm_setMachinePriority(						void* sm, stateMachinePriority_t priority) ;

stateMachineWatch_t* hsm_registerWatchVariable(		stateMachine_t* machine, void* loc, size_t size) ;
void hsm_unregisterWatchVariable(					stateMachine_t* machine, void* loc) ;

void addToDeferredTypeList(							stateMachine_t* sm, eventType_t eventTypeToDefer) ;
bool isEventTypeDeferred(							stateMachine_t* sm, eventType_t eventTypeToCheck) ;
void removeFromDeferredTypeList(					stateMachine_t* sm, eventType_t eventTypeToUnDefer) ;


bool postEventToStateMachine(						stateMachine_t* sm, event_t* event) ;


bool registerStateMachine(							stateMachine_t* sm, const char* smName) ;
bool unregisterStateMachine(						stateMachine_t* sm) ;

void hsm_iterateStateMachine(						stateMachine_t* sm) ;
void hsm_iterateAllStateMachines(					void) ;


stateMachine_t* allocateStateMachineMemory(			uint16_t stateMachineSizeInBytes, uint16_t historyArraySize, stateMachine_memRequirements_t getMemRequirements, stateMachine_constructor_t constructor) ;
void deallocateStateMachineMemory(					stateMachine_t* instance) ;

void hsm_handleTick(								uint32_t microsecondsSinceLastHandled) ;




























#define SECONDS(secs)	((sm_float_t)((sm_float_t)secs * (sm_float_t)1000000.0 /* microseconds per second */))
#define MINUTES(mins)	((sm_float_t)(SECONDS(mins * (sm_float_t)60.0 /* seconds per minute */)))
#define HOURS(hrs)		((sm_float_t)(MINUTES(hrs  * (sm_float_t)60.0 /* minutes per hour */)))
#define DAYS(days)		((sm_float_t)(HOURS(  days * (sm_float_t)24.0 /* hours per day */)))

#define REPEATING		true
#define NON_REPEATING	false

#define ACTIVE			true
#define NON_ACTIVE		false

#define CREATE_ALARM(eventType, duration, repeating)		hsm_createAlarm((stateMachine_t*)self, eventType, (uint32_t)(((sm_float_t)(duration)) / HOURS(1)), (uint32_t)((sm_float_t)(((sm_float_t)(duration)) - ((sm_float_t)(((sm_float_t)(duration)) / HOURS(1)))) + (sm_float_t)0.5 /* round to the nearest microsecond */), repeating)

#define SET_ALARM_PERIOD(alarm, duration)					if(alarm) { ((timerEvent_t*)alarm)->originalHours = (uint32_t)(((sm_float_t)(duration)) / HOURS(1)) ; ((timerEvent_t*)alarm)->originalMicroseconds = (uint32_t)((sm_float_t)(((sm_float_t)(duration)) - ((sm_float_t)(((sm_float_t)(duration)) / HOURS(1)))) + (sm_float_t)0.5 /* round to the nearest microsecond */) ; }

#define ACTIVATE_ALARM(alarm)								if(alarm) { ((timerEvent_t*)alarm)->remainingHours = ((timerEvent_t*)alarm)->originalHours ; ((timerEvent_t*)alarm)->remainingMicroseconds = ((timerEvent_t*)alarm)->originalMicroseconds ; ((alarmEvent_t*)alarm)->active = true ; }
#define DEACTIVATE_ALARM(alarm)								if(alarm) { ((alarmEvent_t*)alarm)->active = false ; }

#define RESET_TIMEOUT()										hsm_resetTimeout((stateMachine_t*)self)
#define DELETE_TIMEOUT(machine, lineNumber)					hsm_deleteTimeout((stateMachine_t*)machine, lineNumber)








#define DECLARE_MEMORY_REQUIREMENTS_2(sm)		extern memoryPoolInfo_t sm##_eventPools[] ; const machineMemoryPoolInto_t* sm##_getMemoryRequirements(void)
#define DECLARE_MEMORY_REQUIREMENTS_1(sm)		DECLARE_MEMORY_REQUIREMENTS_2(sm)
#define DECLARE_MEMORY_REQUIREMENTS()			DECLARE_MEMORY_REQUIREMENTS_1(STATE_MACHINE_NAME)

#define DECLARE_EVENT_QUEUE_DEPTH_2(sm, n)		enum { sm##_EVENT_QUEUE_DEPTH = (n) }
#define DECLARE_EVENT_QUEUE_DEPTH_1(sm, n)		DECLARE_EVENT_QUEUE_DEPTH_2(sm, n)
#define DECLARE_EVENT_QUEUE_DEPTH(n)			DECLARE_EVENT_QUEUE_DEPTH_1(STATE_MACHINE_NAME, n)

#define START_MEMORY_POOL_DECLARATIONS_2(sm)	static memoryPoolInfo_t sm##_eventPools[] =
#define START_MEMORY_POOL_DECLARATIONS_1(sm)	START_MEMORY_POOL_DECLARATIONS_2(sm)
#define START_MEMORY_POOL_DECLARATIONS()		START_MEMORY_POOL_DECLARATIONS_1(STATE_MACHINE_NAME)

#define DECLARE_EVENT_MEMORY_POOL(n, strct)		{ (n), (sizeof(strct) + 3) & 0xFFFC }
#define DECLARE_TIMER_MEMORY_POOL(n)			{ (n), 0 }
#define DECLARE_NUMBER_OF_WATCH_EVENTS(n)		{ (n), 0xFFFF }

#define END_MEMORY_POOL_DECLARATIONS_2(sm)		; enum { sm##_placeholderToMakeTheBracketsLineUp
#define END_MEMORY_POOL_DECLARATIONS_1(sm)		END_MEMORY_POOL_DECLARATIONS_2(sm)
#define END_MEMORY_POOL_DECLARATIONS()			END_MEMORY_POOL_DECLARATIONS_1(STATE_MACHINE_NAME)

#define END_MEMORY_REQUIREMENTS_2(sm)			; static machineMemoryPoolInto_t sm##_memPool = { sm##_EVENT_QUEUE_DEPTH, sizeof(sm##_eventPools) / sizeof(sm##_eventPools[0]), &sm##_eventPools[0] } ; return &sm##_memPool ; }
#define END_MEMORY_REQUIREMENTS_1(sm)			END_MEMORY_REQUIREMENTS_2(sm)
#define END_MEMORY_REQUIREMENTS()				END_MEMORY_REQUIREMENTS_1(STATE_MACHINE_NAME)






#define DECLARE_STATE_MACHINE_EVENTS(sm)		uint16_t sm##_getMachineSize(								void) ;					\
												const machineMemoryPoolInto_t* sm##_getMemoryRequirements(	void) ;					\
												uint16_t sm##_getHistoryArraySize(							void) ;					\
												void sm##_constructor(				stateMachine_t* self) ;							\
												void sm##_destructor(				void* self) ;									\
												void sm##_fatalErrorHandler(		void* self) ;									\
												void sm##_displayInternalEventInfo(	void* self, event_t* event) REENTRANT ;					\
												void sm##_displayExternalEventInfo(	void* self, event_t* event) REENTRANT ;					\
												void sm##_displayStatus(			void* self, void* file) ;						\
												void sm##_displayMachineOutput(		void* self) ;									\
												void sm##_displayMachineDebugging(	void* self) ;									\
												enum sm##_EVENTS																	\
												{																					\
													sm##SUBSTATE_NON_EVENT					= SUBSTATE_NON_EVENT,					\
													sm##_SUBSTATE_ENTRY						= SUBSTATE_ENTRY,						\
													sm##_SUBSTATE_INITIAL_TRANSITION		= SUBSTATE_INITIAL_TRANSITION,			\
													sm##_SUBSTATE_JUMP_TO_HISTORY_DEFAULT	= SUBSTATE_JUMP_TO_HISTORY_DEFAULT,		\
													sm##_SUBSTATE_TICK						= SUBSTATE_TICK,						\
													sm##_SUBSTATE_TIMEOUT					= SUBSTATE_TIMEOUT,						\
													sm##_SUBSTATE_REPEATING_TIMER			= SUBSTATE_REPEATING_TIMER,				\
													sm##_SUBSTATE_WATCHED					= SUBSTATE_WATCHED,						\
													sm##_SUBSTATE_DO						= SUBSTATE_DO,							\
													sm##_SUBSTATE_EXIT						= SUBSTATE_EXIT,						\
													sm##_SUBSTATE_TERMINATE					= SUBSTATE_TERMINATE,					\

															/* State machine specific events go here */

#define END_STATE_MACHINE_EVENTS(sm)				, sm##_NUMBER_OF_MACHINE_EVENTS													\
												} ;



#define DECLARE_GLOBAL_STATE_MACHINE_EVENTS()	enum HSM_GLOBAL_EVENTS																\
												{																					\
													HSM_START_OF_GLOBAL_EVENTS				= SUBSTATE_LAST_USER_EVENTS,			\

															/* State machine specific events go here */

#define END_GLOBAL_STATE_MACHINE_EVENTS()			, HSM_NUMBER_OF_GLOBAL_MACHINE_EVENTS											\
												} ;


#if configHSM_MACHINE_LEVEL_DEBUGGING_ENABLED

#define SET_EVENT_NAMES(eventNames)						self->parent.eventNames = eventNames

#define ENABLE_DEBUGGING_OUTPUT_FOR_TRANSITIONS()		self->parent.printStateTransitions = true ;
#define DISABLE_DEBUGGING_OUTPUT_FOR_TRANSITIONS()		self->parent.printStateTransitions = false ;

#define ENABLE_INTERNAL_EVENT_DEBUGGING_DISPLAY_2(sm)	self->parent.debugging_internalEventDisplay	= &sm##_displayInternalEventInfo ;
#define ENABLE_INTERNAL_EVENT_DEBUGGING_DISPLAY_1(sm)	ENABLE_INTERNAL_EVENT_DEBUGGING_DISPLAY_2(sm)
#define ENABLE_INTERNAL_EVENT_DEBUGGING_DISPLAY()		ENABLE_INTERNAL_EVENT_DEBUGGING_DISPLAY_1(STATE_MACHINE_NAME)

#define DEFINE_INTERNAL_EVENT_DEBUGGING_DISPLAY_2(sm)	void sm##_displayInternalEventInfo(void* machine, event_t* event) REENTRANT { sm##Machine_t* self = (sm##Machine_t*)machine ;
#define DEFINE_INTERNAL_EVENT_DEBUGGING_DISPLAY_1(sm)	DEFINE_INTERNAL_EVENT_DEBUGGING_DISPLAY_2(sm)
#define DEFINE_INTERNAL_EVENT_DEBUGGING_DISPLAY()		DEFINE_INTERNAL_EVENT_DEBUGGING_DISPLAY_1(STATE_MACHINE_NAME)

#define END_INTERNAL_EVENT_DEBUGGING_DISPLAY()			(void)event ; (void)self ; }

#define DISABLE_INTERNAL_EVENT_DEBUGGING_DISPLAY()		self->parent.debugging_internalEventDisplay	= (stateMachine_displayEventInfo_t)0




#define ENABLE_EXTERNAL_EVENT_DEBUGGING_DISPLAY_2(sm)	self->parent.debugging_externalEventDisplay	= &sm##_displayExternalEventInfo ;
#define ENABLE_EXTERNAL_EVENT_DEBUGGING_DISPLAY_1(sm)	ENABLE_EXTERNAL_EVENT_DEBUGGING_DISPLAY_2(sm)
#define ENABLE_EXTERNAL_EVENT_DEBUGGING_DISPLAY()		ENABLE_EXTERNAL_EVENT_DEBUGGING_DISPLAY_1(STATE_MACHINE_NAME)

#define DEFINE_EXTERNAL_EVENT_DEBUGGING_DISPLAY_2(sm)	void sm##_displayExternalEventInfo(void* machine, event_t* event) REENTRANT { sm##Machine_t* self = (sm##Machine_t*)machine ;
#define DEFINE_EXTERNAL_EVENT_DEBUGGING_DISPLAY_1(sm)	DEFINE_EXTERNAL_EVENT_DEBUGGING_DISPLAY_2(sm)
#define DEFINE_EXTERNAL_EVENT_DEBUGGING_DISPLAY()		DEFINE_EXTERNAL_EVENT_DEBUGGING_DISPLAY_1(STATE_MACHINE_NAME)

#define END_EXTERNAL_EVENT_DEBUGGING_DISPLAY()			(void)event ; (void)self ; }

#define DISABLE_EXTERNAL_EVENT_DEBUGGING_DISPLAY()		self->parent.debugging_externalEventDisplay	= (stateMachine_displayEventInfo_t)0




#define ENABLE_STATUS_DISPLAY_2(sm)						self->parent.debugging_statusDisplay = &sm##_displayStatus ;
#define ENABLE_STATUS_DISPLAY_1(sm)						ENABLE_STATUS_DISPLAY_2(sm)
#define ENABLE_STATUS_DISPLAY()							ENABLE_STATUS_DISPLAY_1(STATE_MACHINE_NAME)

#define DEFINE_STATUS_DISPLAY_2(sm)						void sm##_displayStatus(void* machine, FILE* file) REENTRANT { sm##Machine_t* self = (sm##Machine_t*)machine ;
#define DEFINE_STATUS_DISPLAY_1(sm)						DEFINE_STATUS_DISPLAY_2(sm)
#define DEFINE_STATUS_DISPLAY()							DEFINE_STATUS_DISPLAY_1(STATE_MACHINE_NAME)

#define END_STATUS_DISPLAY()							(void)file ; (void)self ; }

#define DISABLE_STATUS_DISPLAY()						self->parent.statusDisplay	= (stateMachine_displayStatusInfo_t)0




#define ENABLE_MACHINE_OUTPUT_DISPLAY_2(sm)				self->parent.debugging_machineOutputDisplay	= &sm##_displayMachineOutput ;
#define ENABLE_MACHINE_OUTPUT_DISPLAY_1(sm)				ENABLE_MACHINE_OUTPUT_DISPLAY_2(sm)
#define ENABLE_MACHINE_OUTPUT_DISPLAY()					ENABLE_MACHINE_OUTPUT_DISPLAY_1(STATE_MACHINE_NAME)

#define DEFINE_MACHINE_OUTPUT_DISPLAY_2(sm)				void sm##_displayMachineOutput(void* machine) REENTRANT { sm##Machine_t* self = (sm##Machine_t*)machine ;
#define DEFINE_MACHINE_OUTPUT_DISPLAY_1(sm)				DEFINE_MACHINE_OUTPUT_DISPLAY_2(sm)
#define DEFINE_MACHINE_OUTPUT_DISPLAY()					DEFINE_MACHINE_OUTPUT_DISPLAY_1(STATE_MACHINE_NAME)

#define END_MACHINE_OUTPUT_DISPLAY()					(void)self ; }

#define DISABLE_MACHINE_OUTPUT_DISPLAY()				self->parent.debugging_machineOutputDisplay	= (stateMachine_displayMachineOutput_t)0

#define DUMP_MACHINE_OUTPUT()							if(self->parent.debugging_machineOutputDisplay) { ((stateMachine_displayMachineOutput_t)(self->parent.debugging_machineOutputDisplay))(self) ; }





#define ENABLE_MACHINE_DEBUGGING_DISPLAY_2(sm)			self->parent.debugging_machineDebuggingDisplay	= &sm##_displayMachineDebugging ;
#define ENABLE_MACHINE_DEBUGGING_DISPLAY_1(sm)			ENABLE_MACHINE_DEBUGGING_DISPLAY_2(sm)
#define ENABLE_MACHINE_DEBUGGING_DISPLAY()				ENABLE_MACHINE_DEBUGGING_DISPLAY_1(STATE_MACHINE_NAME)

#define DEFINE_MACHINE_DEBUGGING_DISPLAY_2(sm)			void sm##_displayMachineDebugging(void* machine) REENTRANT { sm##Machine_t* self = (sm##Machine_t*)machine ;
#define DEFINE_MACHINE_DEBUGGING_DISPLAY_1(sm)			DEFINE_MACHINE_DEBUGGING_DISPLAY_2(sm)
#define DEFINE_MACHINE_DEBUGGING_DISPLAY()				DEFINE_MACHINE_DEBUGGING_DISPLAY_1(STATE_MACHINE_NAME)

#define END_MACHINE_DEBUGGING_DISPLAY()					(void)self ; }

#define DISABLE_MACHINE_DEBUGGING_DISPLAY()				self->parent.debugging_machineDebuggingDisplay	= (stateMachine_displayMachineOutput_t)0

#define DUMP_MACHINE_DEBUGGING_OUTPUT()					if(self->parent.debugging_machineDebuggingDisplay) { ((stateMachine_displayMachineOutput_t)(self->parent.debugging_machineDebuggingDisplay))(self) ; }

#else

#define SET_EVENT_NAMES(eventNames)						(void)eventNames

#define ENABLE_DEBUGGING_OUTPUT_FOR_TRANSITIONS()
#define DISABLE_DEBUGGING_OUTPUT_FOR_TRANSITIONS()

#define DEFINE_INTERNAL_EVENT_DEBUGGING_DISPLAY_2(sm)	void sm##_displayInternalEventInfo(void* machine, event_t* event) REENTRANT { sm##Machine_t* self = (sm##Machine_t*)machine ; if(false)
#define DEFINE_INTERNAL_EVENT_DEBUGGING_DISPLAY_1(sm)	DEFINE_INTERNAL_EVENT_DEBUGGING_DISPLAY_2(sm)
#define DEFINE_INTERNAL_EVENT_DEBUGGING_DISPLAY()		DEFINE_INTERNAL_EVENT_DEBUGGING_DISPLAY_1(STATE_MACHINE_NAME)

#define END_INTERNAL_EVENT_DEBUGGING_DISPLAY()			(void)event ; (void)self ; }

#define DEFINE_EXTERNAL_EVENT_DEBUGGING_DISPLAY_2(sm)	void sm##_displayExternalEventInfo(void* machine, event_t* event) REENTRANT { sm##Machine_t* self = (sm##Machine_t*)machine ; if(false)
#define DEFINE_EXTERNAL_EVENT_DEBUGGING_DISPLAY_1(sm)	DEFINE_EXTERNAL_EVENT_DEBUGGING_DISPLAY_2(sm)
#define DEFINE_EXTERNAL_EVENT_DEBUGGING_DISPLAY()		DEFINE_EXTERNAL_EVENT_DEBUGGING_DISPLAY_1(STATE_MACHINE_NAME)

#define END_EXTERNAL_EVENT_DEBUGGING_DISPLAY()			(void)event ; (void)self ; }

#define DEFINE_MACHINE_OUTPUT_DEBUGGING_DISPLAY_2(sm)	void sm##_displayMachineOutput(void* machine) REENTRANT { sm##Machine_t* self = (sm##Machine_t*)machine ; if(false)
#define DEFINE_MACHINE_OUTPUT_DEBUGGING_DISPLAY_1(sm)	DEFINE_MACHINE_OUTPUT_DEBUGGING_DISPLAY_2(sm)
#define DEFINE_MACHINE_OUTPUT_DEBUGGING_DISPLAY()		DEFINE_MACHINE_OUTPUT_DEBUGGING_DISPLAY_1(STATE_MACHINE_NAME)

#define END_MACHINE_OUTPUT_DEBUGGING_DISPLAY()			(void)self ; }

#define ENABLE_MACHINE_OUTPUT_DISPLAY()

#define ENABLE_EXTERNAL_EVENT_DEBUGGING_DISPLAY()
#define DISABLE_MACHINE_DEBUGGING_DISPLAY()

#define DUMP_MACHINE_OUTPUT()

#endif





#define DEFINE_STATE_MACHINE_2(sm)				static const char* sm##_name = #sm
#define DEFINE_STATE_MACHINE_1(sm)				DEFINE_STATE_MACHINE_2(sm)
#define DEFINE_STATE_MACHINE()					DEFINE_STATE_MACHINE_1(STATE_MACHINE_NAME)

#if configHSM_MACHINE_LEVEL_DEBUGGING_ENABLED
	#define END_STATE_MACHINE_DEFINITION_2(sm)		void sm##_constructor2(	sm##Machine_t* self) ;																	\
													void sm##_fatalErrorHandler2(	sm##Machine_t* self) ;															\
													void sm##_destructor2(	sm##Machine_t* self) ;																	\
													void sm##_fatalErrorHandler(	void* self) { sm##_fatalErrorHandler2((sm##Machine_t*)self) ; }					\
													void sm##_destructor(	void* self) { sm##_destructor2((sm##Machine_t*)self) ; }								\
													void sm##_constructor(	stateMachine_t* base)																	\
													{																												\
														base->topState				= (void*)&sm##_TOP ;															\
														base->currentState			= (void*)&sm##_TOP ;															\
														base->stateMachineName		= sm##_name ;																	\
														base->fatalErrorHandler		= sm##_fatalErrorHandler ;														\
														base->destructor			= sm##_destructor ;																\
														sm##_constructor2((sm##Machine_t*)base) ;																	\
													}																												\
													uint16_t sm##_getHistoryArraySize(	void) { return __LINE__ - sm##_historicalMarkerBase ; }						\
													uint16_t sm##_getMachineSize(		void) { return sizeof(sm##Machine_t) ; }									\
													uint16_t sm##_getMachineSize(		void) /* duplicate prototype to prevent compiler warning about semicolon outside of function or typedef */
#else
	#define END_STATE_MACHINE_DEFINITION_2(sm)		void sm##_constructor2(	sm##Machine_t* self) ;																	\
													void sm##_fatalErrorHandler2(	sm##Machine_t* self) ;															\
													void sm##_destructor2(	sm##Machine_t* self) ;																	\
													void sm##_fatalErrorHandler(	void* self) { sm##_fatalErrorHandler2((sm##Machine_t*)self) ; }					\
													void sm##_destructor(	void* self) { sm##_destructor2((sm##Machine_t*)self) ; }								\
													void sm##_constructor(	stateMachine_t* base)																	\
													{																												\
														base->topState				= (void*)&sm##_TOP ;															\
														base->currentState			= (void*)&sm##_TOP ;															\
														base->fatalErrorHandler		= sm##_fatalErrorHandler ;														\
														base->destructor			= sm##_destructor ;																\
														sm##_constructor2((sm##Machine_t*)base) ;																	\
													}																												\
													uint16_t sm##_getHistoryArraySize(	void) { return __LINE__ - sm##_historicalMarkerBase ; }						\
													uint16_t sm##_getMachineSize(		void) { return sizeof(sm##Machine_t) ; }									\
													uint16_t sm##_getMachineSize(		void) /* duplicate prototype to prevent compiler warning about semicolon outside of function or typedef */
#endif
#define END_STATE_MACHINE_DEFINITION_1(sm)		END_STATE_MACHINE_DEFINITION_2(sm)
#define END_STATE_MACHINE_DEFINITION()			END_STATE_MACHINE_DEFINITION_1(STATE_MACHINE_NAME)





#define DECLARE_STATE_MACHINE_VARIABLES()		typedef struct { stateMachine_t parent
#if configHSM_MACHINE_LEVEL_DEBUGGING_ENABLED
	#ifdef __cplusplus
		#define END_STATE_MACHINE_VARIABLES_2(sm)		} sm##Machine_t ;																																	\
														static stateMachine_stateResponse_t sm##_TOP_handler(	sm##Machine_t* self, event_t* event) REENTRANT ;											\
														const_state_t sm##_TOP = { (void*)0, (STATE_MACHINE_STATE_TYPES)0, CALLSTATEHANDLER_CAST(&sm##_TOP_handler), #sm "_TOP" } ;							\
														enum { sm##_historicalMarkerBase = __LINE__ }
	#else
		#ifdef __c8051f040__
			#define END_STATE_MACHINE_VARIABLES_2(sm)		} sm##Machine_t ;																																\
															stateMachine_stateResponse_t sm##_TOP_handler(	sm##Machine_t* self, event_t* event) REENTRANT ;												\
															static stateMachine_stateResponse_t sm##_TOP_helper(stateMachine_t* self, event_t* event) REENTRANT											\
															{																																				\
																return sm##_TOP_handler((sm##Machine_t*)self, event) ;																						\
															}																																				\
															__xdata state_t sm##_TOP = { NULL, 0, sm##_TOP_helper, #sm "_TOP" } ;																			\
															enum { sm##_historicalMarkerBase = __LINE__ }
		#else
			#define END_STATE_MACHINE_VARIABLES_2(sm)		} sm##Machine_t ;																																\
															static stateMachine_stateResponse_t sm##_TOP_handler(	sm##Machine_t* self, event_t* event) REENTRANT ;												\
															const state_t sm##_TOP = { NULL, 0, CALLSTATEHANDLER_CAST(&sm##_TOP_handler), #sm "_TOP" } ;																			\
															enum { sm##_historicalMarkerBase = __LINE__ }
		#endif
	#endif
#else
	#ifdef __cplusplus
		#define END_STATE_MACHINE_VARIABLES_2(sm)		} sm##Machine_t ;																																	\
														static stateMachine_stateResponse_t sm##_TOP_handler(	sm##Machine_t* self, event_t* event) REENTRANT ;											\
														const_state_t sm##_TOP = { (void*)0, (STATE_MACHINE_STATE_TYPES)0, CALLSTATEHANDLER_CAST(&sm##_TOP_handler) } ;										\
														enum { sm##_historicalMarkerBase = __LINE__ }
	#else
		#ifdef __c8051f040__
			#define END_STATE_MACHINE_VARIABLES_2(sm)		} sm##Machine_t ;																																\
															stateMachine_stateResponse_t sm##_TOP_handler(	sm##Machine_t* self, event_t* event) REENTRANT ;												\
															__xdata const stateMachine_callStateHandler_t *	sm##_TOP_handler_address = (__xdata stateMachine_callStateHandler_t*)&sm##_TOP_handler ;		\
															__xdata const state_t sm##_TOP = { (void*)0, 0, CALLSTATEHANDLER_CAST(&sm##_TOP_handler_address) } ;											\
															enum { sm##_historicalMarkerBase = __LINE__ }
		#else
			#define END_STATE_MACHINE_VARIABLES_2(sm)		} sm##Machine_t ;																																\
															static stateMachine_stateResponse_t sm##_TOP_handler(	sm##Machine_t* self, event_t* event) REENTRANT ;										\
															const_state_t sm##_TOP = { (void*)0, 0, CALLSTATEHANDLER_CAST(&sm##_TOP_handler) } ;															\
															enum { sm##_historicalMarkerBase = __LINE__ }
		#endif
	#endif
#endif
#define END_STATE_MACHINE_VARIABLES_1(sm)		END_STATE_MACHINE_VARIABLES_2(sm)
#define END_STATE_MACHINE_VARIABLES()			END_STATE_MACHINE_VARIABLES_1(STATE_MACHINE_NAME)










#if configHSM_MACHINE_LEVEL_DEBUGGING_ENABLED
	#ifdef __c8051f040__
		#define ADD_SUB_STATE_2(sm, ps, ss)				static stateMachine_stateResponse_t sm##_##ss##_handler(	sm##Machine_t* self, event_t* event) REENTRANT ;										\
														static stateMachine_stateResponse_t sm##_##ss##_helper(stateMachine_t* self, event_t* event) REENTRANT												\
														{																																					\
															return sm##_##ss##_handler((sm##Machine_t*)self, event) ;																						\
														}																																					\
														__xdata state_t sm##_##ss = { VOID_CAST(&sm##_##ps), NORMAL_STATE, sm##_##ss##_helper, #sm "_" #ss }
	#else
		#define ADD_SUB_STATE_2(sm, ps, ss)				static stateMachine_stateResponse_t sm##_##ss##_handler(	sm##Machine_t* self, event_t* event) REENTRANT ;										\
														const_state_t sm##_##ss = { VOID_CAST(&sm##_##ps), NORMAL_STATE, CALLSTATEHANDLER_CAST(&sm##_##ss##_handler), #sm "_" #ss }
	#endif
#else
	#define ADD_SUB_STATE_2(sm, ps, ss)				static stateMachine_stateResponse_t sm##_##ss##_handler(	sm##Machine_t* self, event_t* event) REENTRANT ;											\
													const_state_t sm##_##ss = { VOID_CAST(&sm##_##ps), NORMAL_STATE, CALLSTATEHANDLER_CAST(&sm##_##ss##_handler) }
#endif
#define ADD_SUB_STATE_1(sm, ps, ss)				ADD_SUB_STATE_2(sm, ps, ss)
#define ADD_SUB_STATE(ss, ps)					ADD_SUB_STATE_1(STATE_MACHINE_NAME, ps, ss)

#if configHSM_MACHINE_LEVEL_DEBUGGING_ENABLED
	#ifdef __c8051f040__
		#define ADD_CHOICE_PSEUDO_STATE_2(sm, ps, ss)	static stateMachine_stateResponse_t sm##_##ss##_handler(	sm##Machine_t* self) REENTRANT ;														\
														static stateMachine_stateResponse_t sm##_##ss##_helper(stateMachine_t* self, event_t* event) REENTRANT												\
														{																																					\
															(void)event ;																																	\
															return sm##_##ss##_handler((sm##Machine_t*)self) ;																								\
														}																																					\
														__xdata state_t sm##_##ss = { VOID_CAST(&sm##_##ps), CHOICE_PSUEDOSTATE, sm##_##ss##_helper, #sm "_" #ss }
	#else
		#define ADD_CHOICE_PSEUDO_STATE_2(sm, ps, ss)	static stateMachine_stateResponse_t sm##_##ss##_handler(	sm##Machine_t* self) REENTRANT ;	\
														const_state_t sm##_##ss = { VOID_CAST(&sm##_##ps), CHOICE_PSUEDOSTATE, CALLSTATEHANDLER_CAST(&sm##_##ss##_handler), #sm "_" #ss }
	#endif
#else
	#define ADD_CHOICE_PSEUDO_STATE_2(sm, ps, ss)	static stateMachine_stateResponse_t sm##_##ss##_handler(	sm##Machine_t* self) REENTRANT ;	\
													const_state_t sm##_##ss = { VOID_CAST(&sm##_##ps), CHOICE_PSUEDOSTATE, CALLSTATEHANDLER_CAST(&sm##_##ss##_handler) }
#endif
#define ADD_CHOICE_PSEUDO_STATE_1(sm, ps, ss)	ADD_CHOICE_PSEUDO_STATE_2(sm, ps, ss)
#define ADD_CHOICE_PSEUDO_STATE(ss, ps)			ADD_CHOICE_PSEUDO_STATE_1(STATE_MACHINE_NAME, ps, ss)


#if configHSM_MACHINE_LEVEL_DEBUGGING_ENABLED
	#ifdef __c8051f040__
		#define ADD_SUB_STATE_WITH_SHALLOW_HISTORY_2(sm, ps, ss)	static stateMachine_stateResponse_t sm##_##ss##_handler(	sm##Machine_t* self, event_t* event) REENTRANT ;							\
																	static stateMachine_stateResponse_t sm##_##ss##_helper(stateMachine_t* self, event_t* event) REENTRANT									\
																	{																																		\
																		return sm##_##ss##_handler((sm##Machine_t*)self, event) ;																			\
																	}																																		\
																	__xdata state_with_history_t sm##_##ss = { VOID_CAST(&sm##_##ps), STATE_WITH_SHALLOW_HISTORY, sm##_##ss##_helper, #sm "_" #ss }
	#else
		#define ADD_SUB_STATE_WITH_SHALLOW_HISTORY_2(sm, ps, ss)	static stateMachine_stateResponse_t sm##_##ss##_handler(	sm##Machine_t* self, event_t* event) REENTRANT ;	\
																	const_state_with_history_t sm##_##ss = { VOID_CAST(&sm##_##ps), STATE_WITH_SHALLOW_HISTORY,	CALLSTATEHANDLER_CAST(&sm##_##ss##_handler), #sm "_" #ss, __LINE__ - sm##_historicalMarkerBase }
	#endif
#else
	#define ADD_SUB_STATE_WITH_SHALLOW_HISTORY_2(sm, ps, ss)	static stateMachine_stateResponse_t sm##_##ss##_handler(	sm##Machine_t* self, event_t* event) REENTRANT ;	\
																const_state_with_history_t sm##_##ss = { VOID_CAST(&sm##_##ps), STATE_WITH_SHALLOW_HISTORY,	CALLSTATEHANDLER_CAST(&sm##_##ss##_handler), __LINE__ - sm##_historicalMarkerBase }
#endif
#define ADD_SUB_STATE_WITH_SHALLOW_HISTORY_1(sm, ps, ss)	ADD_SUB_STATE_WITH_SHALLOW_HISTORY_2(sm, ps, ss)
#define ADD_SUB_STATE_WITH_SHALLOW_HISTORY(ss, ps)			ADD_SUB_STATE_WITH_SHALLOW_HISTORY_1(STATE_MACHINE_NAME, ps, ss)

#if configHSM_MACHINE_LEVEL_DEBUGGING_ENABLED
	#ifdef __c8051f040__
		#define ADD_SUB_STATE_WITH_DEEP_HISTORY_2(sm, ps, ss)		static stateMachine_stateResponse_t sm##_##ss##_handler(	sm##Machine_t* self, event_t* event) REENTRANT ;							\
																	static stateMachine_stateResponse_t sm##_##ss##_helper(stateMachine_t* self, event_t* event) REENTRANT								\
																	{																																		\
																		return sm##_##ss##_handler((sm##Machine_t*)self, event) ;																			\
																	}																																		\
																	__xdata state_with_history_t sm##_##ss = { VOID_CAST(&sm##_##ps), STATE_WITH_DEEP_HISTORY, sm##_##ss##_helper, #sm "_" #ss }
	#else
		#define ADD_SUB_STATE_WITH_DEEP_HISTORY_2(sm, ps, ss)		static stateMachine_stateResponse_t sm##_##ss##_handler(	sm##Machine_t* self, event_t* event) REENTRANT ;	\
																	const_state_with_history_t sm##_##ss = { VOID_CAST(&sm##_##ps), STATE_WITH_DEEP_HISTORY,		CALLSTATEHANDLER_CAST(&sm##_##ss##_handler), #sm "_" #ss, __LINE__ - sm##_historicalMarkerBase }
	#endif
#else
	#define ADD_SUB_STATE_WITH_DEEP_HISTORY_2(sm, ps, ss)		static stateMachine_stateResponse_t sm##_##ss##_handler(	sm##Machine_t* self, event_t* event) REENTRANT ;	\
																const_state_with_history_t sm##_##ss = { VOID_CAST(&sm##_##ps), STATE_WITH_DEEP_HISTORY,		CALLSTATEHANDLER_CAST(&sm##_##ss##_handler), __LINE__ - sm##_historicalMarkerBase }
#endif
#define ADD_SUB_STATE_WITH_DEEP_HISTORY_1(sm, ps, ss)		ADD_SUB_STATE_WITH_DEEP_HISTORY_2(sm, ps, ss)
#define ADD_SUB_STATE_WITH_DEEP_HISTORY(ss, ps)				ADD_SUB_STATE_WITH_DEEP_HISTORY_1(STATE_MACHINE_NAME, ps, ss)



















#define STATE_MACHINE_CONSTRUCTOR_2(sm)			void sm##_constructor2(	sm##Machine_t* self)
#define STATE_MACHINE_CONSTRUCTOR_1(sm)			STATE_MACHINE_CONSTRUCTOR_2(sm)
#define STATE_MACHINE_CONSTRUCTOR()				STATE_MACHINE_CONSTRUCTOR_1(STATE_MACHINE_NAME)

#define STATE_MACHINE_FATAL_ERROR_HANDLER_2(sm)	void sm##_fatalErrorHandler2(	sm##Machine_t* self)
#define STATE_MACHINE_FATAL_ERROR_HANDLER_1(sm)	STATE_MACHINE_FATAL_ERROR_HANDLER_2(sm)
#define STATE_MACHINE_FATAL_ERROR_HANDLER()		STATE_MACHINE_FATAL_ERROR_HANDLER_1(STATE_MACHINE_NAME)

#define STATE_MACHINE_DESTRUCTOR_2(sm)			void sm##_destructor2(	sm##Machine_t* self)
#define STATE_MACHINE_DESTRUCTOR_1(sm)			STATE_MACHINE_DESTRUCTOR_2(sm)
#define STATE_MACHINE_DESTRUCTOR()				STATE_MACHINE_DESTRUCTOR_1(STATE_MACHINE_NAME)

#define STATE_MACHINE_CREATE_INSTANCE_OF(sm)	allocateStateMachineMemory(sm##_getMachineSize(), sm##_getHistoryArraySize(), sm##_getMemoryRequirements, sm##_constructor)
#define STATE_MACHINE_DESTROY_INSTANCE_OF(inst)	deallocateStateMachineMemory(inst)

#define DEFINE_TOP_STATE_2(sm)					static stateMachine_stateResponse_t sm##_TOP_handler(			sm##Machine_t* self, event_t* event) REENTRANT
#define DEFINE_TOP_STATE_1(sm)					DEFINE_TOP_STATE_2(sm)
#define DEFINE_TOP_STATE()						DEFINE_TOP_STATE_1(STATE_MACHINE_NAME) { stateMachine_stateResponse_t stateResponseCode = IGNORED ;
#define DEFINE_STATE_2(sm, state)				static stateMachine_stateResponse_t sm##_##state##_handler(	sm##Machine_t* self, event_t* event) REENTRANT
#define DEFINE_STATE_1(sm, state)				DEFINE_STATE_2(sm, state)
#define DEFINE_STATE(state)						DEFINE_STATE_1(STATE_MACHINE_NAME, state) { stateMachine_stateResponse_t stateResponseCode = IGNORED ;


#define DEFINE_CHOICE_PSEUDO_STATE_2(sm, state, cndtn, trueDest, trueAct, falseDest, falseAct)													\
												static stateMachine_stateResponse_t sm##_##state##_handler(	sm##Machine_t* self) REENTRANT	\
												{																								\
													stateMachine_stateResponse_t stateResponseCode = TRANSITION ;								\
																																				\
													if(cndtn)																					\
													{																							\
														trueAct ;																				\
														((stateMachine_t*)self)->nextState = (void*)&sm##_##trueDest ;							\
													}																							\
													else																						\
													{																							\
														falseAct ;																				\
														((stateMachine_t*)self)->nextState = (void*)&sm##_##falseDest ;							\
													}																							\
																																				\
													return stateResponseCode ;																			\
												} static stateMachine_stateResponse_t sm##_##state##_handler(	sm##Machine_t* self) REENTRANT	/* duplicate prototype to prevent compiler warning about semicolon outside of function or typedef */
#define DEFINE_CHOICE_PSEUDO_STATE_1(sm, state, cndtn, trueDest, trueAct, falseDest, falseAct)	DEFINE_CHOICE_PSEUDO_STATE_2(sm, state, cndtn, trueDest, trueAct, falseDest, falseAct)
#define DEFINE_CHOICE_PSEUDO_STATE(state, cndtn, trueDest, trueAct, falseDest, falseAct)		DEFINE_CHOICE_PSEUDO_STATE_1(STATE_MACHINE_NAME, state, cndtn, trueDest, trueAct, falseDest, falseAct)


#define HANDLE_STATE_EVENTS						switch(hsm_getEventType(event))							\
												{

#define ENTER										case SUBSTATE_ENTRY:								\
													{
														/* implementation goes here */
#define ENTER_HANDLED									stateResponseCode = HANDLED ;					\
														break ;											\
													}

#define INITIAL_TRANS								case SUBSTATE_INITIAL_TRANSITION:					\
													{
														/* implementation goes here */
#define INITIAL_TRANSITION_HANDLED						stateResponseCode = HANDLED ;					\
														break ;											\
													}

#define EXIT										case SUBSTATE_EXIT:									\
													{
														/* implementation goes here */
#define EXIT_HANDLED									stateResponseCode = HANDLED ;					\
														break ;											\
													}

#define EVENT(evt)									case evt:
														/* Note lack of opening and closing brackets.
														 * This allows use of multiple EVENT() clauses
														 * implementation goes here */
#define EVENT_HANDLED									stateResponseCode = HANDLED ;					\
														break ;											\


#define HANDLE_STATE_EVENTS_DONE					default:											\
													{													\
														/*return IGNORED ;*/							\
													}													\
												}

#define ON_ENTRY(act)							if(hsm_getEventType(event) == SUBSTATE_ENTRY)	{ stateResponseCode = HANDLED ; act ; }
#define ON_DO(act)								if(hsm_getEventType(event) == SUBSTATE_DO)		{ stateResponseCode = HANDLED ; act ; }
#define ON_EXIT(act)							if(hsm_getEventType(event) == SUBSTATE_EXIT)	{ stateResponseCode = HANDLED ; act ; }

#define ON_EVENT(evt, act)						if(hsm_getEventType(event) == evt)				{ stateResponseCode = HANDLED ; act ; }
#define ON_EVENT_IF(evt, cndtn, act)			if((hsm_getEventType(event) == evt) && (cndtn))	{ stateResponseCode = HANDLED ; act ; }

#define END_DEFINE_STATE()						(void)self ; (void)event ; return stateResponseCode ; }

#define STATE_MACHINE_EXIT						TOP


#if configHSM_MACHINE_LEVEL_DEBUGGING_ENABLED
	#define INITIAL_TRANSITION_2(sm, dest, act)		if(hsm_getEventType(event) == SUBSTATE_INITIAL_TRANSITION) { act ; ((stateMachine_t*)self)->nextState = (void*)&sm##_##dest ; return TRANSITION ; } else { ((stateMachine_t*)self)->currentStateHasInitialTransition = true ; }
#else
	#define INITIAL_TRANSITION_2(sm, dest, act)		if(hsm_getEventType(event) == SUBSTATE_INITIAL_TRANSITION) { act ; ((stateMachine_t*)self)->nextState = (void*)&sm##_##dest ; return TRANSITION ; }
#endif
#define INITIAL_TRANSITION_1(sm, dest, act)			INITIAL_TRANSITION_2(sm, dest, act)
#define INITIAL_TRANSITION(dest, act)				INITIAL_TRANSITION_1(STATE_MACHINE_NAME, dest, act)

#define TRANSITION_ON_2(sm, evt, dest, act)			if(hsm_getEventType(event) == evt) { stateResponseCode = TRANSITION ; act ; ((stateMachine_t*)self)->nextState = (void*)&sm##_##dest ; return stateResponseCode ; }
#define TRANSITION_ON_1(sm, evt, dest, act)			TRANSITION_ON_2(sm, evt, dest, act)
#define TRANSITION_ON(evt, dest, act)				TRANSITION_ON_1(STATE_MACHINE_NAME, evt, dest, act)

#define TRANSITION_ON_IF_2(sm , evt, cndtn, dest, act)	if((hsm_getEventType(event) == evt) && (cndtn)) { stateResponseCode = TRANSITION ; act ; ((stateMachine_t*)self)->nextState = (void*)&sm##_##dest ; return stateResponseCode ; }
#define TRANSITION_ON_IF_1(sm, evt, cndtn, dest, act)	TRANSITION_ON_IF_2(sm, evt, cndtn, dest, act)
#define TRANSITION_ON_IF(evt, cndtn, dest, act)			TRANSITION_ON_IF_1(STATE_MACHINE_NAME, evt, cndtn, dest, act)

#define TRANSITION_TO_2(sm, dest, act)				{ stateResponseCode = TRANSITION ; act ; ((stateMachine_t*)self)->nextState = (void*)&sm##_##dest ; return stateResponseCode ; }
#define TRANSITION_TO_1(sm, dest, act)				TRANSITION_TO_2(sm, dest, act)
#define TRANSITION_TO(dest, act)					TRANSITION_TO_1(STATE_MACHINE_NAME, dest, act)

#define TRANSITION_TO_IF_2(sm, dest, cndtn, act)	if((cndtn)) { stateResponseCode = TRANSITION ; act ; ((stateMachine_t*)self)->nextState = (void*)&sm##_##dest ; return stateResponseCode ; }
#define TRANSITION_TO_IF_1(sm, dest, cndtn, act)	TRANSITION_TO_IF_2(sm, dest, cndtn, act)
#define TRANSITION_TO_IF(dest, cndtn, act)			TRANSITION_TO_IF_1(STATE_MACHINE_NAME, dest, cndtn, act)

#define TRANSITION_IF_2(sm, cndtn, dest, act)		if((cndtn)) { stateResponseCode = TRANSITION ; act ; ((stateMachine_t*)self)->nextState = (void*)&sm##_##dest ; return stateResponseCode ; }
#define TRANSITION_IF_1(sm, cndtn, dest, act)		TRANSITION_IF_2(sm, cndtn, dest, act)
#define TRANSITION_IF(cndtn, dest, act)				TRANSITION_IF_1(STATE_MACHINE_NAME, cndtn, dest, act)

#if 0
#define TRANSITION_CALLING_2(sm, func, evt)			if(hsm_getEventType(event) == evt) { stateResponseCode = HANDLED ; func ; return stateResponseCode ; }
#define TRANSITION_CALLING_1(sm, func, evt)			TRANSITION_CALLING_2(sm, func, evt)
#define TRANSITION_CALLING(func, evt)				TRANSITION_CALLING_1(STATE_MACHINE_NAME, func, evt)
#endif





#define IS_TRUE						true,				sizeof(bool),		MATCHES_TRUE
#define IS_FALSE					false,				sizeof(bool),		MATCHES_FALSE
#define HAS_VALUE_OF(val)			val,				sizeof(uint32_t),	MATCHES_VALUE
#define MATCHES_VARIABLE(var)		(void*)(&(var)),	sizeof(void*),		MATCHES_VARIABLE

#define TRANSITION_WHEN(var, dest, act)				{																														\
														ON_ENTRY(hsm_registerWatchVariable((stateMachine_t*)self, &var, sizeof(var))) ;										\
														TRANSITION_ON_IF(SUBSTATE_WATCHED, &var == CAST_EVENT(stateMachineWatch_t)->watchVariableLocation, TO(dest), act) ;	\
														ON_EXIT(hsm_unregisterWatchVariable((stateMachine_t*)self, &var)) ;													\
													}






#define AFTER(timeout, act)							{																																																											\
														ON_ENTRY({timeoutEvent_t* timeoutForState = (timeoutEvent_t*)CREATE_ALARM(SUBSTATE_TIMEOUT, timeout, NON_REPEATING) ; if(timeoutForState) { ACTIVATE_ALARM(timeoutForState) ; timeoutForState->lineNumber = __LINE__ ; } }) ;		\
														ON_EVENT_IF(SUBSTATE_TIMEOUT, ((timeoutEvent_t*)event)->lineNumber == __LINE__, act) ;																																					\
														ON_EXIT(DELETE_TIMEOUT(self, __LINE__)) ;																																																\
													}

#define TRANSITION_AFTER(timeout, dest, act)		{																																																											\
														ON_ENTRY({timeoutEvent_t* timeoutForState = (timeoutEvent_t*)CREATE_ALARM(SUBSTATE_TIMEOUT, timeout, NON_REPEATING) ; if(timeoutForState) { ACTIVATE_ALARM(timeoutForState) ; timeoutForState->lineNumber = __LINE__ ; } }) ;		\
														TRANSITION_ON_IF(SUBSTATE_TIMEOUT, ((timeoutEvent_t*)event)->lineNumber == __LINE__, TO(dest), act) ;																																	\
														ON_EXIT(DELETE_TIMEOUT(self, __LINE__)) ;																																																\
													}


#define EVERY(timeout, act)							{																																																											\
														ON_ENTRY({timeoutEvent_t* timeoutForState = (timeoutEvent_t*)CREATE_ALARM(SUBSTATE_REPEATING_TIMER, timeout, REPEATING) ; if(timeoutForState) { ACTIVATE_ALARM(timeoutForState) ; timeoutForState->lineNumber = __LINE__ ; } }) ;	\
														/*ON_EVENT_IF(SUBSTATE_REPEATING_TIMER, ((timeoutEvent_t*)event)->lineNumber == __LINE__, act ; ) ;*/ \
														ON_EVENT(SUBSTATE_REPEATING_TIMER, act ; ) ; \
														ON_EXIT(DELETE_TIMEOUT(self, __LINE__)) ;																																																\
													}

#define TRANSITION_EVERY(timeout, dest, act)		{																																																											\
														ON_ENTRY({timeoutEvent_t* timeoutForState = (timeoutEvent_t*)CREATE_ALARM(SUBSTATE_REPEATING_TIMER, timeout, REPEATING) ; if(timeoutForState) { ACTIVATE_ALARM(timeoutForState) ; timeoutForState->lineNumber = __LINE__ ; } }) ;	\
														TRANSITION_ON_IF(SUBSTATE_REPEATING_TIMER, ((timeoutEvent_t*)event)->lineNumber == __LINE__, TO(dest), ACTIVATE_ALARM((timeoutEvent_t*)event) ; act) ;																									\
														ON_EXIT(DELETE_TIMEOUT(self, __LINE__)) ;																																																\
													}

#define GET_STATE_2(sm, st)							(void*)&sm##_##st
#define GET_STATE_1(sm, st)							GET_STATE_2(sm, st)
#define GET_STATE(st)								GET_STATE_1(STATE_MACHINE_NAME, st)


#define CONSUME_EVENT(evt, act)						if(hsm_getEventType(event) == evt) { act ; return HANDLED ; }
#define CONSUME_EVENT_IF(evt, cndtn, act)			if((hsm_getEventType(event) == evt) && (cndtn)) { act ; return HANDLED ; }
#define IGNORE_EVENT_IF(evt, cndtn)					if((hsm_getEventType(event) == evt) && (cndtn)) { return IGNORED ; }
#define IF(cndtn)									(cndtn)
#define NEVER										false
#define UNCONDITIONALLY								true
#define TO(st)										st
#define ON(evt)										evt
#define NO_ACTION
#define ACTION(act)									act
#define TAKING(act)									act

#define HISTORY_OF(dest)							dest ; stateResponseCode = TRANSITION_TO_HISTORY

/* A bit of a cheat by pointing to the top state, but this saves me from having to define a dummy state place holder which takes extra code memory. */
#define SELF()										TOP ; stateResponseCode = TRANSITION_TO_SELF

#define SET_HISTORY_DEFAULT_STATE_2(sm, dest, act)	if(hsm_getEventType(event) == SUBSTATE_JUMP_TO_HISTORY_DEFAULT)			\
													{																		\
														stateResponseCode = TRANSITION ;									\
														act ; ((stateMachine_t*)self)->nextState = (void*)&sm##_##dest ;	\
														return stateResponseCode ;											\
													}
#define SET_HISTORY_DEFAULT_STATE_1(sm, dest, act)	SET_HISTORY_DEFAULT_STATE_2(sm, dest, act)
#define SET_HISTORY_DEFAULT_STATE(dest, act)		SET_HISTORY_DEFAULT_STATE_1(STATE_MACHINE_NAME, dest, act)



#define CAST_EVENT(type)			((type*)event)
#define PARENT_STATE(par)			par
#define PARENT_STATE_MACHINE(par)	par
#define PARENT_CLASS(par)			par parent





#define REQUEST_DO_EVENTS()			if(hsm_getEventType(event) == SUBSTATE_ENTRY)									\
									{																				\
										self->parent.requestsDoEvents++ ;											\
									}																				\
									else if(hsm_getEventType(event) == SUBSTATE_EXIT)								\
									{																				\
										if(self->parent.requestsDoEvents > 0) { --self->parent.requestsDoEvents ; }	\
									}


#define DEFER_EVENT(evt)			if(hsm_getEventType(event) == SUBSTATE_ENTRY)									\
									{																				\
										addToDeferredTypeList((stateMachine_t*)self, evt) ;							\
									}																				\
									else if(hsm_getEventType(event) == SUBSTATE_EXIT)								\
									{																				\
										removeFromDeferredTypeList((stateMachine_t*)self, evt) ;					\
									}


#define REGISTER_STATE_MACHINE(sm)				registerStateMachine(sm, #sm)
#define UNREGISTER_STATE_MACHINE(sm)			unregisterStateMachine(sm)





#define ITERATE_SINGLE_STATE_MACHINE(machine)	hsm_iterateStateMachine(machine)
#define ITERATE_ALL_STATE_MACHINES()			hsm_iterateAllStateMachines()


#if defined(__TS7800__) || defined(__cygwin__) || defined(__linux__)
	#include <pthread.h>

	extern pthread_mutex_t	hsm_mutex ;
	extern int				criticalSectionLockAttempts ;
	extern int				criticalSectionLockEntries ;

	#define HSM_ENTER_CRITICAL_SECTION()		criticalSectionLockAttempts++ ; pthread_mutex_lock(&hsm_mutex) ; criticalSectionLockEntries++ ;
	#define HSM_EXIT_CRITICAL_SECTION()			criticalSectionLockEntries-- ; pthread_mutex_unlock(&hsm_mutex) ; criticalSectionLockAttempts-- ;
#elif defined(__c8051f040__)
	#include <C8051F040.h>

	#define HSM_ENTER_CRITICAL_SECTION()		__asm		\
												push	ACC	\
												push	IE	\
												__endasm;	\
												EA = 0;
	#define HSM_EXIT_CRITICAL_SECTION()			__asm			\
												pop		ACC		\
												__endasm;		\
												ACC &= 0x80;	\
												IE |= ACC;		\
												__asm			\
												pop		ACC		\
												__endasm;
#elif defined(__AVR__)
	#include <avr/common.h>
	#include <avr/interrupt.h>

	#define HSM_ENTER_CRITICAL_SECTION()		{ uint8_t sreg = SREG ; cli()
	#define HSM_EXIT_CRITICAL_SECTION()			SREG = sreg ; }
#elif defined(__MINGW__)
	#define HSM_ENTER_CRITICAL_SECTION()		{
	#define HSM_EXIT_CRITICAL_SECTION()			}
#else
	#error DEFINE THE CRITICAL SECTION MACROS
#endif

#ifdef __cplusplus
}
#endif

#endif /* STATEMACHINE_G4_H_ */
