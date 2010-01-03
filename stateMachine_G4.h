/*
 * StateMachine_G4.h
 *
 *  Created on: Nov 27, 2009
 *      Author: jlewis
 */

#ifndef STATEMACHINE_G4_H_
#define STATEMACHINE_G4_H_

#include <stdint.h>
#include <stdbool.h>

#include "stateMachine_G4_eventQueue.h"

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
	#define CALLSTATEHANDLER_CAST(c)	(c)
	#define VOID_CAST(v)				(v)
#else
	#define CALLSTATEHANDLER_CAST(c)	(stateMachine_callStateHandler_t)(c)
	#define VOID_CAST(v)				(const void*)(v)
	#define __reentrant
	#define __code
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



/* Now for the state machine definition itself. This is the core of it all.
 * Here is a brief description of what each field does:
 *
 * 		topState:						points to the topmost state in the machine
 * 		stateMachineName:				Debugging only. It holds the name of the machine
 * 		currentState:					What state the machine is in right now.
 * 		nextState:						Set by a state when a transition is about to happen
 * 		eventQueue:						A queue that holds all non-deferred events that come in
 *		maxDepthOfEventsToDeferList:	Holds the max number of event types that can be deferred
 *		currentDepthOfEventsToDeferList:Holds the current number of deferred event types
 *		typesOfEventsToDefer:			A simple array that holds the types of events to defer
 *		deferredEventQueue:				Any deferred event types that come in get put here temporarily
 *		stateMachineInitialized:		Has the machine been initialized yet?
 *		forceTransition:				Has a transition been triggered by the most recently active state?
 *
 * The currentState and nextState members are declared as void pointers since normal C doesn't
 * allow for forward declaration. Since keeping the code in the states themselves was a very
 * high priority, these had to be declared as void pointers since doing it the other way would
 * have made it necessary to cast self in all state functions which would have been ugly.
 */

typedef struct
{
	__code void*			topState ;
	const char*				stateMachineName ;

	void*					currentState ;
	void*					nextState ;

	eventQueue_t			eventQueue ;
	eventQueueIndex_t		maxDepthOfEventsToDeferList ;
	eventQueueIndex_t		currentDepthOfEventsToDeferList ;
	eventType_t*			typesOfEventsToDefer ;
	eventQueue_t			deferredEventQueue ;

	uint8_t					stateMachineInitialized ;
	uint8_t					forceTransition ;

	uint16_t				numberOfHistoricalMarkers ;
	void**					historicalMarkers ;
	void*					mostRecentlyEnteredState ;
	void*					mostRecentlyExitedState ;
} stateMachine_t ;

/* A couple of helpers to deal with state machine memory and initialization. */

typedef void (* stateMachine_constructor_t)(stateMachine_t* self) __reentrant ;
typedef void (* stateMachine_destructor_t)(stateMachine_t* self) __reentrant ;

stateMachine_t* allocateStateMachineMemory(	uint16_t eventQueueDepth, stateMachine_constructor_t constructor) ;
void deallocateStateMachineMemory(			stateMachine_t* instance, stateMachine_destructor_t destructor) ;




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

enum STATE_MACHINE_STATE_RESPONSES { IGNORED, HANDLED, TRANSITION, TRANSITION_TO_HISTORY } ;

typedef enum STATE_MACHINE_STATE_RESPONSES	stateMachine_stateResponse_t ;

typedef stateMachine_stateResponse_t (* stateMachine_callStateHandler_t)(stateMachine_t* self, event_t* event) __reentrant ;
typedef stateMachine_stateResponse_t (* stateMachine_choiceStateHandler_t)(stateMachine_t* self) __reentrant ;



typedef struct
{
	const void*								parent ;				/* pointer to parent state */
	const enum STATE_MACHINE_STATE_TYPES	type ;					/* what type of state is this? */
	const stateMachine_callStateHandler_t	handler ;				/* pointer to the handler function */
	const char*								stateName ;				/* DEBUGGING: name of this state */
} state_t ;


typedef struct
{
	const void*								parent ;				/* pointer to parent state */
	const enum STATE_MACHINE_STATE_TYPES	type ;					/* what type of state is this? */
	const stateMachine_choiceStateHandler_t	handler ;				/* pointer to the handler function */
	const char*								stateName ;				/* DEBUGGING: name of this state */
} choice_state_t ;


typedef struct
{
	const void*								parent ;				/* pointer to parent state */
	const enum STATE_MACHINE_STATE_TYPES	type ;					/* what type of state is this? */
	const stateMachine_callStateHandler_t	handler ;				/* pointer to the handler function */
	const char*								stateName ;				/* DEBUGGING: name of this state */
	const uint16_t							historyMarkerIndex ;	/* index into machine's history table */
} state_with_history_t ;













enum STATE_MACHINE_REQUIRED_EVENTS				{
													SUBSTATE_NO_ACTION,
													SUBSTATE_ENTRY,
													SUBSTATE_INITIAL_TRANSITION,
													SUBSTATE_JUMP_TO_HISTORY_DEFAULT,
													SUBSTATE_DO,
													SUBSTATE_EXIT
												} ;


#define DECLARE_STATE_MACHINE_EVENTS(sm)		uint16_t sm##_getMachineSize(		void) ;										\
												uint16_t sm##_getEventQueueDepth(	void) ;										\
												uint16_t sm##_getHistoryQueueDepth(	void) ;										\
												void sm##_constructor(				stateMachine_t* self) ;						\
												void sm##_destructor(				stateMachine_t* self) ;						\
												enum sm##_EVENTS																\
												{																				\
													sm##_SUBSTATE_NO_ACTION					= SUBSTATE_NO_ACTION,				\
													sm##_SUBSTATE_ENTRY						= SUBSTATE_ENTRY,					\
													sm##_SUBSTATE_INITIAL_TRANSITION		= SUBSTATE_INITIAL_TRANSITION,		\
													sm##SUBSTATE_JUMP_TO_HISTORY_DEFAULT	= SUBSTATE_JUMP_TO_HISTORY_DEFAULT,	\
													sm##_SUBSTATE_DO						= SUBSTATE_DO,						\
													sm##_SUBSTATE_EXIT						= SUBSTATE_EXIT,
													/* State machine specific events go here */
#define END_STATE_MACHINE_EVENTS()				} ;














#define DEFINE_STATE_MACHINE_2(sm)				static const char* sm##_name = #sm
#define DEFINE_STATE_MACHINE_1(sm)				DEFINE_STATE_MACHINE_2(sm)
#define DEFINE_STATE_MACHINE()					DEFINE_STATE_MACHINE_1(STATE_MACHINE_NAME)

#define END_STATE_MACHINE_DEFINITION_2(sm)		void sm##_constructor2(	sm##Machine_t* self) ;																	\
												void sm##_destructor2(	sm##Machine_t* self) ;																	\
												void sm##_constructor(	stateMachine_t* base)																	\
												{																												\
													base->topState				= (void*)&sm##_TOP ;															\
													base->currentState			= (void*)&sm##_TOP ;															\
													base->stateMachineName		= sm##_name ;																	\
													sm##_constructor2((sm##Machine_t*)base) ;																	\
												}																												\
												void sm##_destructor(	stateMachine_t* self) { sm##_destructor2((sm##Machine_t*)self) ; }						\
												uint16_t sm##_getHistoryQueueDepth(	void) { return (__LINE__ - sm##_historicalMarkerBase) * sizeof(void*) ; }	\
												uint16_t sm##_getMachineSize(		void) { return sizeof(sm##Machine_t) ; }									\
												uint16_t sm##_getMachineSize(		void) /* duplicate prototype to prevent compiler warning about semicolon outside of function or typedef */
#define END_STATE_MACHINE_DEFINITION_1(sm)		END_STATE_MACHINE_DEFINITION_2(sm)
#define END_STATE_MACHINE_DEFINITION()			END_STATE_MACHINE_DEFINITION_1(STATE_MACHINE_NAME)






#define DECLARE_STATE_MACHINE_VARIABLES()		typedef struct { stateMachine_t parent
#define END_STATE_MACHINE_VARIABLES_2(sm)		} sm##Machine_t ;																							\
												static stateMachine_stateResponse_t sm##_TOP_handler(	sm##Machine_t* self, event_t* event) __reentrant ;	\
												static const state_t sm##_TOP = { (void*)0, 0, CALLSTATEHANDLER_CAST(&sm##_TOP_handler), #sm "_TOP" } ;		\
												enum { sm##_historicalMarkerBase = __LINE__ }
#define END_STATE_MACHINE_VARIABLES_1(sm)		END_STATE_MACHINE_VARIABLES_2(sm)
#define END_STATE_MACHINE_VARIABLES()			END_STATE_MACHINE_VARIABLES_1(STATE_MACHINE_NAME)







#define SET_EVENT_QUEUE_DEPTH_2(sm, n)			uint16_t sm##_getEventQueueDepth(	void) { return n ; } uint16_t sm##_getEventQueueDepth(	void) /* duplicate prototype to prevent compiler warning about semicolon outside of function or typedef */
#define SET_EVENT_QUEUE_DEPTH_1(sm, n)			SET_EVENT_QUEUE_DEPTH_2(sm, n)
#define SET_EVENT_QUEUE_DEPTH(n)				SET_EVENT_QUEUE_DEPTH_1(STATE_MACHINE_NAME, n)








#define ADD_SUB_STATE_2(sm, ps, ss)				static stateMachine_stateResponse_t sm##_##ss##_handler(	sm##Machine_t* self, event_t* event) __reentrant ;	\
												static const state_t sm##_##ss = { VOID_CAST(&sm##_##ps), NORMAL_STATE, CALLSTATEHANDLER_CAST(&sm##_##ss##_handler), #sm "_" #ss }
#define ADD_SUB_STATE_1(sm, ps, ss)				ADD_SUB_STATE_2(sm, ps, ss)
#define ADD_SUB_STATE(ss, ps)					ADD_SUB_STATE_1(STATE_MACHINE_NAME, ps, ss)

#define ADD_CHOICE_PSEUDO_STATE_2(sm, ps, ss)	static stateMachine_stateResponse_t sm##_##ss##_handler(	sm##Machine_t* self) __reentrant ;	\
												static const state_t sm##_##ss = { VOID_CAST(&sm##_##ps), CHOICE_PSUEDOSTATE, CALLSTATEHANDLER_CAST(&sm##_##ss##_handler), #sm "_" #ss }
#define ADD_CHOICE_PSEUDO_STATE_1(sm, ps, ss)	ADD_CHOICE_PSEUDO_STATE_2(sm, ps, ss)
#define ADD_CHOICE_PSEUDO_STATE(ss, ps)			ADD_CHOICE_PSEUDO_STATE_1(STATE_MACHINE_NAME, ps, ss)


#define ADD_SUB_STATE_WITH_SHALLOW_HISTORY_2(sm, ps, ss)	static stateMachine_stateResponse_t sm##_##ss##_handler(	sm##Machine_t* self, event_t* event) __reentrant ;	\
															static stateMachine_stateResponse_t sm##_##ss##_historyHandler(	sm##Machine_t* self, event_t* event) __reentrant ;	\
															static const state_with_history_t sm##_##ss = { VOID_CAST(&sm##_##ps), STATE_WITH_SHALLOW_HISTORY, CALLSTATEHANDLER_CAST(&sm##_##ss##_handler), #sm "_" #ss, CALLSTATEHANDLER_CAST(&sm##_##ss##_historyHandler), __LINE__ - sm##_historicalMarkerBase }
#define ADD_SUB_STATE_WITH_SHALLOW_HISTORY_1(sm, ps, ss)	ADD_SUB_STATE_WITH_SHALLOW_HISTORY_2(sm, ps, ss)
#define ADD_SUB_STATE_WITH_SHALLOW_HISTORY(ss, ps)			ADD_SUB_STATE_WITH_SHALLOW_HISTORY_1(STATE_MACHINE_NAME, ps, ss)

#define ADD_SUB_STATE_WITH_DEEP_HISTORY_2(sm, ps, ss)	static stateMachine_stateResponse_t sm##_##ss##_handler(		sm##Machine_t* self, event_t* event) __reentrant ;	\
														static const state_with_history_t sm##_##ss = { VOID_CAST(&sm##_##ps), STATE_WITH_DEEP_HISTORY, CALLSTATEHANDLER_CAST(&sm##_##ss##_handler), #sm "_" #ss, __LINE__ - sm##_historicalMarkerBase }
#define ADD_SUB_STATE_WITH_DEEP_HISTORY_1(sm, ps, ss)	ADD_SUB_STATE_WITH_DEEP_HISTORY_2(sm, ps, ss)
#define ADD_SUB_STATE_WITH_DEEP_HISTORY(ss, ps)			ADD_SUB_STATE_WITH_DEEP_HISTORY_1(STATE_MACHINE_NAME, ps, ss)



















#define STATE_MACHINE_CONSTRUCTOR_2(sm)			void sm##_constructor2(	sm##Machine_t* self)
#define STATE_MACHINE_CONSTRUCTOR_1(sm)			STATE_MACHINE_CONSTRUCTOR_2(sm)
#define STATE_MACHINE_CONSTRUCTOR()				STATE_MACHINE_CONSTRUCTOR_1(STATE_MACHINE_NAME)

#define STATE_MACHINE_DESTRUCTOR_2(sm)			void sm##_destructor2(	sm##Machine_t* self)
#define STATE_MACHINE_DESTRUCTOR_1(sm)			STATE_MACHINE_DESTRUCTOR_2(sm)
#define STATE_MACHINE_DESTRUCTOR()				STATE_MACHINE_DESTRUCTOR_1(STATE_MACHINE_NAME)

#define STATE_MACHINE_CREATE_INSTANCE_OF(sm)	allocateStateMachineMemory(sm##_getEventQueueDepth(), sm##_constructor)
#define STATE_MACHINE_DESTROY_INSTANCE_OF(sm, inst)	deallocateStateMachineMemory(inst, sm##_destructor)

#define DEFINE_TOP_STATE_2(sm)					static stateMachine_stateResponse_t sm##_TOP_handler(			sm##Machine_t* self, event_t* event) __reentrant
#define DEFINE_TOP_STATE_1(sm)					DEFINE_TOP_STATE_2(sm)
#define DEFINE_TOP_STATE()						DEFINE_TOP_STATE_1(STATE_MACHINE_NAME) { stateMachine_stateResponse_t stateResponseCode = IGNORED ;
#define DEFINE_STATE_2(sm, state)				static stateMachine_stateResponse_t sm##_##state##_handler(	sm##Machine_t* self, event_t* event) __reentrant
#define DEFINE_STATE_1(sm, state)				DEFINE_STATE_2(sm, state)
#define DEFINE_STATE(state)						DEFINE_STATE_1(STATE_MACHINE_NAME, state) { stateMachine_stateResponse_t stateResponseCode = IGNORED ;


#define DEFINE_CHOICE_PSEUDO_STATE_2(sm, state, cndtn, trueDest, trueAct, falseDest, falseAct)													\
												static stateMachine_stateResponse_t sm##_##state##_handler(	sm##Machine_t* self) __reentrant	\
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
												} static stateMachine_stateResponse_t sm##_##state##_handler(	sm##Machine_t* self) __reentrant	/* duplicate prototype to prevent compiler warning about semicolon outside of function or typedef */
#define DEFINE_CHOICE_PSEUDO_STATE_1(sm, state, cndtn, trueDest, trueAct, falseDest, falseAct)	DEFINE_CHOICE_PSEUDO_STATE_2(sm, state, cndtn, trueDest, trueAct, falseDest, falseAct)
#define DEFINE_CHOICE_PSEUDO_STATE(state, cndtn, trueDest, trueAct, falseDest, falseAct)		DEFINE_CHOICE_PSEUDO_STATE_1(STATE_MACHINE_NAME, state, cndtn, trueDest, trueAct, falseDest, falseAct)


#define HANDLE_STATE_EVENTS						switch(event->eventType)								\
												{

#define ENTER										case SUBSTATE_ENTRY:								\
													{
														/* implementation goes here */
#define ENTER_HANDLED									return HANDLED ;								\
													}

#define INITIAL_TRANSITION_EVENT					case SUBSTATE_INITIAL_TRANSITION:					\
													{
														/* implementation goes here */
#define INITIAL_TRANSITION_HANDLED						return HANDLED ;								\
													}

#define EXIT										case SUBSTATE_EXIT:									\
													{
														/* implementation goes here */
#define EXIT_HANDLED									return HANDLED ;								\
													}

#define EVENT(evt)									case evt:
														/* Note lack of opening and closing brackets.
														 * This allows use of multiple EVENT() clauses
														 * implementation goes here */
#define EVENT_HANDLED									return HANDLED ;


#define HANDLE_STATE_EVENTS_DONE					default:											\
													{													\
														/*return IGNORED ;*/							\
													}													\
												}

#define ON_ENTRY(act)							if(event->eventType == SUBSTATE_ENTRY)	{ act ; return HANDLED ; }
#define ON_EXIT(act)							if(event->eventType == SUBSTATE_EXIT)	{ act ; return HANDLED ; }

#define END_DEFINE_STATE()						(void)self ; (void)event ; return stateResponseCode ; }

#define STATE_MACHINE_EXIT						TOP


#define INITIAL_TRANSITION_2(sm, dest, act)			if(event->eventType == SUBSTATE_INITIAL_TRANSITION) { act ; ((stateMachine_t*)self)->nextState = (void*)&sm##_##dest ; return TRANSITION ; }
#define INITIAL_TRANSITION_1(sm, dest, act)			INITIAL_TRANSITION_2(sm, dest, act)
#define INITIAL_TRANSITION(dest, act)				INITIAL_TRANSITION_1(STATE_MACHINE_NAME, dest, act)

#define TRANSITION_ON_2(sm, evt, dest, act)			if(event->eventType == evt) { stateMachine_stateResponse_t stateResponseCode = TRANSITION ; act ; ((stateMachine_t*)self)->nextState = (void*)&sm##_##dest ; return stateResponseCode ; }
#define TRANSITION_ON_1(sm, evt, dest, act)			TRANSITION_ON_2(sm, evt, dest, act)
#define TRANSITION_ON(evt, dest, act)				TRANSITION_ON_1(STATE_MACHINE_NAME, evt, dest, act)

#define TRANSITION_ON_IF_2(sm , evt, cndtn, dest, act)	if((event->eventType == evt) && (cndtn)) { stateMachine_stateResponse_t stateResponseCode = TRANSITION ; act ; ((stateMachine_t*)self)->nextState = (void*)&sm##_##dest ; return stateResponseCode ; }
#define TRANSITION_ON_IF_1(sm, evt, cndtn, dest, act)	TRANSITION_ON_IF_2(sm, evt, cndtn, dest, act)
#define TRANSITION_ON_IF(evt, cndtn, dest, act)			TRANSITION_ON_IF_1(STATE_MACHINE_NAME, evt, cndtn, dest, act)

#define TRANSITION_TO_2(sm, dest, act)				{ stateMachine_stateResponse_t stateResponseCode = TRANSITION ; act ; ((stateMachine_t*)self)->nextState = (void*)&sm##_##dest ; return stateResponseCode ; }
#define TRANSITION_TO_1(sm, dest, act)				TRANSITION_TO_2(sm, dest, act)
#define TRANSITION_TO(dest, act)					TRANSITION_TO_1(STATE_MACHINE_NAME, dest, act)

#define TRANSITION_TO_IF_2(sm, dest, cndtn, act)	if((cndtn)) { stateMachine_stateResponse_t stateResponseCode = TRANSITION ; act ; ((stateMachine_t*)self)->nextState = (void*)&sm##_##dest ; return stateResponseCode ; }
#define TRANSITION_TO_IF_1(sm, dest, cndtn, act)	TRANSITION_TO_IF_2(sm, dest, cndtn, act)
#define TRANSITION_TO_IF(dest, cndtn, act)			TRANSITION_TO_IF_1(STATE_MACHINE_NAME, dest, cndtn, act)

#define CONSUME_EVENT(evt, act)						if(event->eventType == evt) { act ; return HANDLED ; }
#define CONSUME_EVENT_IF(evt, cndtn, act)			if((event->eventType == evt) && (cndtn)) { act ; return HANDLED ; }
#define IGNORE_EVENT_IF(evt, cndtn)					if((event->eventType == evt) && (cndtn)) { return IGNORED ; }
#define IF(cndtn)									(cndtn)
#define NEVER										false
#define UNCONDITIONALLY								true
#define TO(st)										st
#define NO_ACTION
#define ACTION(act)									act
#define TAKING(act)									act

#define HISTORY_OF(dest)							dest ; stateResponseCode = TRANSITION_TO_HISTORY

#define SET_HISTORY_DEFAULT_STATE_2(sm, dest, act)	if(event->eventType == SUBSTATE_JUMP_TO_HISTORY_DEFAULT)				\
													{																		\
														stateMachine_stateResponse_t stateResponseCode = TRANSITION ;		\
														act ; ((stateMachine_t*)self)->nextState = (void*)&sm##_##dest ;	\
														return stateResponseCode ;											\
													}
#define SET_HISTORY_DEFAULT_STATE_1(sm, dest, act)	SET_HISTORY_DEFAULT_STATE_2(sm, dest, act)
#define SET_HISTORY_DEFAULT_STATE(dest, act)		SET_HISTORY_DEFAULT_STATE_1(STATE_MACHINE_NAME, dest, act)



#define CAST_EVENT(type)						((type*)event)
#define PARENT_STATE(par)						par
#define PARENT_STATE_MACHINE(par)				par
#define PARENT_CLASS(par)						par parent






#define DEFER_EVENT(evt)						if(event->eventType == SUBSTATE_ENTRY)							\
												{																\
													addToDeferredTypeList((stateMachine_t*)self, evt) ;			\
												}																\
												else if(event->eventType == SUBSTATE_EXIT)						\
												{																\
													removeFromDeferredTypeList((stateMachine_t*)self, evt) ;	\
												}


void outputStateMachineDebugData_G4(stateMachine_t* sm) ;




void addToDeferredTypeList(			stateMachine_t* sm, eventType_t	eventTypeToDefer) ;
bool isEventTypeDeferred(			stateMachine_t* sm, eventType_t	eventTypeToCheck) ;
void removeFromDeferredTypeList(	stateMachine_t* sm, eventType_t	eventTypeToUnDefer) ;


bool postEventToStateMachine(			stateMachine_t* sm, event_t* event) ;





bool registerStateMachine(			stateMachine_t* sm) ;
bool unregisterStateMachine(		stateMachine_t* sm) ;



#define REGISTER_STATE_MACHINE(sm)				registerStateMachine(sm)
#define UNREGISTER_STATE_MACHINE(sm)			unregisterStateMachine(sm)






void iterateAllStateMachines(	void) ;

#define ITERATE_ALL_STATE_MACHINES()			iterateAllStateMachines()



#endif /* STATEMACHINE_G4_H_ */
