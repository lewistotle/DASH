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

#ifdef __CDT_PARSER__
	#define __data
	#define __xdata
	#define __code
	#define __reentrant
#endif

#ifndef __c8051f040__
	#define CALLSTATEHANDLER_CAST(c)	(callStateHandler_t)(c)
	#define VOID_CAST(v)				(const void*)(v)
	#define __reentrant
#else
	#define CALLSTATEHANDLER_CAST(c)	(c)
	#define VOID_CAST(v)				(v)
#endif

typedef uint8_t	stateEvent_t ;
typedef void	(* call_state_type)(uint8_t stateEvent_t) ;

typedef uint16_t	millisecondTimerType ;

enum STATE_HANDLER_RESPONSES { IGNORED, HANDLED, TRANSITION } ;

typedef uint8_t	stateHandlerResponse_t ;


typedef struct
{
#ifdef __c8051f040__
	__code void*			topState ;
#else
	void*					topState ;
#endif
	uint8_t					type ;
	const char*				stateMachineName ;

	void*					currentState ;
	void*					nextState ;

	eventQueue_t			eventQueue ;

	uint8_t					stateMachineInitialized ;
	uint8_t					forceTransition ;
} stateMachine_t ;

typedef stateHandlerResponse_t (* callStateHandler_t)(stateMachine_t* self, event_t* event) __reentrant ;
typedef void (* stateMachineConstructor_t)(stateMachine_t* self) __reentrant ;
typedef void (* stateMachineDestructor_t)(stateMachine_t* self) __reentrant ;

typedef struct
{
	const void*				parent ;
	uint8_t					type ;
#ifdef __c8051f040__
	callStateHandler_t		handler ;
#else
	callStateHandler_t		handler ;
#endif
	const char*				stateName ;
} state_t ;

typedef struct
{
	state_t					parent ;
	callStateHandler_t		historyHandler ;
} state_with_history_t ;


void outputStateMachineDebugData_G4(stateMachine_t* sm) ;


#define STATE_MACHINE_TOP(sm)					sm##_TOP

enum REQUIRED_STATE_MACHINE_EVENTS				{	SUBSTATE_GET_INFO,
													SUBSTATE_ENTRY,
													SUBSTATE_INITIAL_TRANSITION,
													SUBSTATE_EXIT
												} ;

#define DECLARE_STATE_MACHINE_EVENTS(sm)		uint16_t sm##_getMachineSize(		void) ;								\
												uint16_t sm##_getEventQueueDepth(	void) ;								\
												uint16_t sm##_getHistoryQueueDepth(	void) ;								\
												void sm##_constructor(				stateMachine_t* self) ;				\
												void sm##_destructor(				stateMachine_t* self) ;				\
												enum sm##_EVENTS														\
												{																		\
													sm##_SUBSTATE_GET_INFO				= SUBSTATE_GET_INFO,			\
													sm##_SUBSTATE_ENTRY					= SUBSTATE_ENTRY,				\
													sm##_SUBSTATE_INITIAL_TRANSITION	= SUBSTATE_INITIAL_TRANSITION,	\
													sm##_SUBSTATE_EXIT					= SUBSTATE_EXIT,
													/* State machine specific events go here */
#define END_STATE_MACHINE_EVENTS()				} ;


#define PARENT_STATE(par)						par
#define PARENT_STATE_MACHINE(par)				par
#define PARENT_CLASS(par)						par parent

#define DEFINE_STATE_MACHINE_2(sm)				static const char* sm##_name = #sm
#define DEFINE_STATE_MACHINE_1(sm)				DEFINE_STATE_MACHINE_2(sm)
#define DEFINE_STATE_MACHINE()					DEFINE_STATE_MACHINE_1(STATE_MACHINE_NAME)

#define SET_EVENT_QUEUE_DEPTH(n)				uint16_t sm##_getEventQueueDepth(	void) { return n ; } uint16_t sm##_getEventQueueDepth(	void) /* duplicate prototype to prevent compiler warning about semicolon outside of function or typedef */

#define DECLARE_STATE_MACHINE_VARIABLES()		typedef struct { stateMachine_t parent
#define END_STATE_MACHINE_VARIABLES_2(sm)		} sm##Machine_t ;																						\
												static stateHandlerResponse_t sm##_TOP_handler(	sm##Machine_t* self, event_t* event) __reentrant ;		\
												static const state_t sm##_TOP = { (void*)0, 0, CALLSTATEHANDLER_CAST(&sm##_TOP_handler), #sm "_TOP" }
#define END_STATE_MACHINE_VARIABLES_1(sm)		END_STATE_MACHINE_VARIABLES_2(sm)
#define END_STATE_MACHINE_VARIABLES()			END_STATE_MACHINE_VARIABLES_1(STATE_MACHINE_NAME)



#define ADD_SUB_STATE_2(sm, ps, ss)				static stateHandlerResponse_t sm##_##ss##_handler(	sm##Machine_t* self, event_t* event) __reentrant ;	\
												static const state_t sm##_##ss = { VOID_CAST(&sm##_##ps), 0, CALLSTATEHANDLER_CAST(&sm##_##ss##_handler), #sm "_" #ss }
#define ADD_SUB_STATE_1(sm, ps, ss)				ADD_SUB_STATE_2(sm, ps, ss)
#define ADD_SUB_STATE(ss, ps)					ADD_SUB_STATE_1(STATE_MACHINE_NAME, ps, ss)


#define HISTORY_TRACKER_FOR_STATE(ht)			state_t*	ht_historyState
#define HISTORICAL_DEFAULT_STATE(hd)			hd
#define DEEP_HIST0RY_OF(hs)						hs
#define ADD_SUB_STATE_WITH_DEEP_HISTORY_2(sm, ps, ss, hd)	static stateHandlerResponse_t sm##_##ss##_handler(	sm##Machine_t* self, event_t* event) __reentrant ;	\
															static stateHandlerResponse_t sm##_##ss##_historyHandler(	sm##Machine_t* self, event_t* event) __reentrant ;	\
															static const state_with_history_t sm##_##ss = { { VOID_CAST(&sm##_##ps), 1, CALLSTATEHANDLER_CAST(&sm##_##ss##_handler), #sm "_" #ss }, CALLSTATEHANDLER_CAST(&sm##_##ss##_historyHandler) }
#define ADD_SUB_STATE_WITH_DEEP_HISTORY_1(sm, ps, ss, hd)	ADD_SUB_STATE_WITH_DEEP_HISTORY_2(sm, ps, ss, hd)
#define ADD_SUB_STATE_WITH_DEEP_HISTORY(ss, ps, hd)			ADD_SUB_STATE_WITH_DEEP_HISTORY_1(STATE_MACHINE_NAME, ps, ss, hd)

#define ADD_SUB_STATE_WITH_SHALLOW_HISTORY_2(sm, ps, ss, hd)	static stateHandlerResponse_t sm##_##ss##_handler(	sm##Machine_t* self, event_t* event) __reentrant ;	\
																static stateHandlerResponse_t sm##_##ss##_historyHandler(	sm##Machine_t* self, event_t* event) __reentrant ;	\
																static const state_with_history_t sm##_##ss = { { VOID_CAST(&sm##_##ps), 2, CALLSTATEHANDLER_CAST(&sm##_##ss##_handler), #sm "_" #ss }, CALLSTATEHANDLER_CAST(&sm##_##ss##_historyHandler) }
#define ADD_SUB_STATE_WITH_SHALLOW_HISTORY_1(sm, ps, ss, hd)	ADD_SUB_STATE_WITH_SHALLOW_HISTORY_2(sm, ps, ss, hd)
#define ADD_SUB_STATE_WITH_SHALLOW_HISTORY(ss, ps, hd)			ADD_SUB_STATE_WITH_SHALLOW_HISTORY_1(STATE_MACHINE_NAME, ps, ss, hd)


stateMachine_t* allocateStateMachineMemory(		uint16_t sizeInBytes, uint16_t eventQueueDepth, stateMachineConstructor_t constructor) ;
void deallocateStateMachineMemory(				stateMachine_t* instance, stateMachineDestructor_t destructor) ;


/* Just too keep a compiler warning about semicolons outside of something from happening */
#define END_STATE_MACHINE_DEFINITION_2(sm)		void sm##_constructor2(	sm##Machine_t* self) ;												\
												void sm##_destructor2(	sm##Machine_t* self) ;												\
												void sm##_constructor(	stateMachine_t* base)												\
												{																							\
													base->currentState			= (void*)&sm##_TOP ;										\
													base->type					= 0 ;														\
													base->stateMachineName		= (const char*)(&sm##_name) ;								\
													sm##_constructor2((sm##Machine_t*)base) ;												\
												}																							\
												void sm##_destructor(	stateMachine_t* self) { sm##_destructor2((sm##Machine_t*)self) ; }	\
												uint16_t sm##_getMachineSize(		void) { return sizeof(sm##Machine_t) ; }				\
												uint16_t sm##_getMachineSize(		void) /* duplicate prototype to prevent compiler warning about semicolon outside of function or typedef */
#define END_STATE_MACHINE_DEFINITION_1(sm)		END_STATE_MACHINE_DEFINITION_2(sm)
#define END_STATE_MACHINE_DEFINITION()			END_STATE_MACHINE_DEFINITION_1(STATE_MACHINE_NAME)

#define STATE_MACHINE_CONSTRUCTOR_2(sm)			void sm##_constructor2(	sm##Machine_t* self)
#define STATE_MACHINE_CONSTRUCTOR_1(sm)			STATE_MACHINE_CONSTRUCTOR_2(sm)
#define STATE_MACHINE_CONSTRUCTOR()				STATE_MACHINE_CONSTRUCTOR_1(STATE_MACHINE_NAME)

#define STATE_MACHINE_DESTRUCTOR_2(sm)			void sm##_destructor2(	sm##Machine_t* self)
#define STATE_MACHINE_DESTRUCTOR_1(sm)			STATE_MACHINE_DESTRUCTOR_2(sm)
#define STATE_MACHINE_DESTRUCTOR()				STATE_MACHINE_DESTRUCTOR_1(STATE_MACHINE_NAME)

#define STATE_MACHINE_CREATE_INSTANCE_OF(sm)	allocateStateMachineMemory(sm##_getMachineSize(), sm##_getEventQueueDepth(), sm##_constructor)
#define STATE_MACHINE_DESTROY_INSTANCE_OF(sm, inst)	deallocateStateMachineMemory(inst, sm##_destructor)

#define DEFINE_TOP_STATE_2(sm)					static stateHandlerResponse_t sm##_TOP_handler(			sm##Machine_t* self, event_t* event) __reentrant
#define DEFINE_TOP_STATE_1(sm)					DEFINE_TOP_STATE_2(sm)
#define DEFINE_TOP_STATE()						DEFINE_TOP_STATE_1(STATE_MACHINE_NAME) { stateHandlerResponse_t stateResponseCode = IGNORED ;
#define DEFINE_STATE_2(sm, state)				static stateHandlerResponse_t sm##_##state##_handler(	sm##Machine_t* self, event_t* event) __reentrant
#define DEFINE_STATE_1(sm, state)				DEFINE_STATE_2(sm, state)
#define DEFINE_STATE(state)						DEFINE_STATE_1(STATE_MACHINE_NAME, state) { stateHandlerResponse_t stateResponseCode = IGNORED ;

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
														/*return IGNORED ;*/								\
													}													\
												}

#define ON_ENTRY(act)							if(event->eventType == SUBSTATE_ENTRY) { act ; }
#define ON_EXIT(act)							if(event->eventType == SUBSTATE_ENTRY) { act ; }

#define END_DEFINE_STATE()						(void)self ; (void)event ; return stateResponseCode ; }

#define STATE_MACHINE_EXIT						TOP


#define INITIAL_TRANSITION(dest, act)			if(event->eventType == SUBSTATE_INITIAL_TRANSITION) { act ; dest ; return TRANSITION ; }
#define TRANSITION_ON(evt, cndtn, dest, act)	if((event->eventType == evt) && (cndtn)) { act ; dest ; return TRANSITION ; }
#define TRANSITION_IF(cndtn, dest, act)			if((cndtn)) { act ; dest ; return TRANSITION ; }
#define TRANSITION_TO_2(sm, dest, act)			act ; ((stateMachine_t*)self)->nextState = (void*)&sm##_##dest ; return TRANSITION
#define TRANSITION_TO_1(sm, dest, act)			TRANSITION_TO_2(sm, dest, act)
#define TRANSITION_TO(dest, act)				TRANSITION_TO_1(STATE_MACHINE_NAME, dest, act)
#define CONSUME_EVENT(evt, act)					if(event->eventType == evt) { act ; return HANDLED ; }
#define CONSUME_EVENT_IF(evt, cndtn, act)		if((event->eventType == evt) && (cndtn)) { act ; return HANDLED ; }
#define IGNORE_EVENT_IF(evt, cndtn)				if((event->eventType == evt) && (cndtn)) { return IGNORED ; }
#define IF(cndtn)								(cndtn)
#define UNCONDITIONALLY							true
#define TO_2(sm, st)							((stateMachine_t*)self)->nextState = (void*)&sm##_##st
#define TO_1(sm, st)							TO_2(sm, st)
#define TO(st)									TO_1(STATE_MACHINE_NAME, st)
#define NO_ACTION
#define ACTION(act)								act



#define EVENT_IS(type)							((type*)event)




bool registerStateMachine(			stateMachine_t* sm) ;
bool unregisterStateMachine(		stateMachine_t* sm) ;



#define REGISTER_STATE_MACHINE(sm)				registerStateMachine(sm)
#define UNREGISTER_STATE_MACHINE(sm)			unregisterStateMachine(sm)






void iterateAllStateMachines(	void) ;

#define ITERATE_ALL_STATE_MACHINES()			iterateAllStateMachines()



#endif /* STATEMACHINE_G4_H_ */
