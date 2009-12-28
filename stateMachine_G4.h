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


#if 0
typedef struct
{
	void*					parent ;
	uint8_t					type ;
	void*					handler ;
	state_t*				regions ;
} orthogonalRegion_t ;
#endif
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

#if 0
	uint16_t				stateRetryCount ;
	uint8_t					stateTimeoutEnabled ;
	uint8_t					stateTimeoutProcessed ;
	uint8_t					immediateChangePending ;
	millisecondTimerType	stateTimeoutPeriod ;
	uint8_t					stateTimeoutForced ;

	state_t*				callingState ;
	state_t*				previousState ;
#endif
} stateMachine_t ;

typedef stateHandlerResponse_t (* callStateHandler_t)(stateMachine_t* self, event_t* event) __reentrant ;

typedef struct
{
	const void*					parent ;
	uint8_t					type ;
#ifdef __c8051f040__
	callStateHandler_t		handler ;
#else
	callStateHandler_t		handler ;
#endif
	const char*				stateName ;
} state_t ;


void outputStateMachineDebugData_G4(stateMachine_t* sm) ;


#define STATE_MACHINE_TOP(sm)					sm##_TOP

#define DECLARE_STATE_MACHINE(sm)				stateMachine_t* createInstanceOf_##sm(	void) ;		\
												void destroyInstanceOf_##sm(			stateMachine_t* instance)

enum REQUIRED_STATE_MACHINE_EVENTS				{	SUBSTATE_GET_INFO,
													SUBSTATE_ENTRY,
													SUBSTATE_INITIAL_TRANSITION,
													SUBSTATE_EXIT
												} ;

#define DECLARE_STATE_MACHINE_EVENTS(sm)		enum sm##_EVENTS														\
												{																		\
													sm##_SUBSTATE_GET_INFO				= SUBSTATE_GET_INFO,			\
													sm##_SUBSTATE_ENTRY					= SUBSTATE_ENTRY,				\
													sm##_SUBSTATE_INITIAL_TRANSITION	= SUBSTATE_INITIAL_TRANSITION,	\
													sm##_SUBSTATE_EXIT					= SUBSTATE_EXIT,
													/* State machine specific events go here */
#define END_STATE_MACHINE_EVENTS()				} ;


#define DECLARE_STATE_MACHINE_VARIABLES()		typedef struct {
	#define PARENT_CLASS(thing)						thing	parent
#define END_STATE_MACHINE_VARIABLES_2(sm)		} sm##Machine_t ;
#define END_STATE_MACHINE_VARIABLES_1(sm)		END_STATE_MACHINE_VARIABLES_2(sm)
#define END_STATE_MACHINE_VARIABLES()			END_STATE_MACHINE_VARIABLES_1(STATE_MACHINE_NAME)

#define DEFINE_STATE_MACHINE_2(sm)				static stateHandlerResponse_t sm##_TOP_handler(	sm##Machine_t* self, event_t* event) __reentrant ;	\
												static const state_t sm##_TOP = { (void*)0, 0, CALLSTATEHANDLER_CAST(&sm##_TOP_handler), #sm "_TOP" } ;				\
												static sm##Machine_t sm##Machine = { { (void*)&sm##_TOP, 0, #sm } }
#define DEFINE_STATE_MACHINE_1(sm)				DEFINE_STATE_MACHINE_2(sm)
#define DEFINE_STATE_MACHINE()					DEFINE_STATE_MACHINE_1(STATE_MACHINE_NAME)

#define ADD_SUB_STATE_2(sm, ps, ss)				static stateHandlerResponse_t sm##_##ss##_handler(	sm##Machine_t* self, event_t* event) __reentrant ;	\
												static const state_t sm##_##ss = { VOID_CAST(&sm##_##ps), 0, CALLSTATEHANDLER_CAST(&sm##_##ss##_handler), #sm "_" #ss }
#define ADD_SUB_STATE_1(sm, ps, ss)				ADD_SUB_STATE_2(sm, ps, ss)
#define ADD_SUB_STATE(ps, ss)					ADD_SUB_STATE_1(STATE_MACHINE_NAME, ps, ss)

#define ADD_ORTHOGONAL_REGION(sm, ps, or)		orthogonalRegion_t sm##_##or	= { &sm##_##ps, 0 }

#define END_STATE_MACHINE_DEFINITION()

stateMachine_t* allocateStateMachineMemory(		uint16_t sizeInBytes) ;
void deallocateStateMachineMemory(				stateMachine_t* instance) ;

#define CREATE_STATE_MACHINE_INSTANCE_2(sm)		stateMachine_t* createInstanceOf_##sm(	void)
#define CREATE_STATE_MACHINE_INSTANCE_1(sm)		CREATE_STATE_MACHINE_INSTANCE_2(sm)
#define CREATE_STATE_MACHINE_INSTANCE()			CREATE_STATE_MACHINE_INSTANCE_1(STATE_MACHINE_NAME)

#define DESTROY_STATE_MACHINE_INSTANCE_2(sm)	void destroyInstanceOf_##sm(			stateMachine_t* instance)
#define DESTROY_STATE_MACHINE_INSTANCE_1(sm)	DESTROY_STATE_MACHINE_INSTANCE_2(sm)
#define DESTROY_STATE_MACHINE_INSTANCE()		DESTROY_STATE_MACHINE_INSTANCE_1(STATE_MACHINE_NAME)

#define STATE_MACHINE_CREATE_INSTANCE_OF(sm)	createInstanceOf_##sm()
#define STATE_MACHINE_DESTROY_INSTANCE_OF(sm, inst)	destroyInstanceOf_##sm(inst)

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
