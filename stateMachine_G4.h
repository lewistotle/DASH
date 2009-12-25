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

typedef uint8_t	stateEvent_t ;
typedef void	(* call_state_type)(uint8_t stateEvent_t) ;

typedef uint16_t	millisecondTimerType ;

enum STATE_HANDLER_RESPONSES { IGNORED, HANDLED, TRANSITION } ;

typedef uint8_t	stateHandlerResponse_t ;


typedef struct
{
	void*					parent ;
	uint8_t					type ;
	void*					handler ;
} state_t ;

typedef struct
{
	void*					parent ;
	uint8_t					type ;
	void*					handler ;
	state_t*				regions ;
} orthogonalRegion_t ;

typedef struct
{
	uint8_t					eventType ;
} event_t ;

typedef struct
{
	void*					topState ;
	uint8_t					stateMachineInitialized ;
	uint16_t				stateRetryCount ;
	uint8_t					stateTimeoutEnabled ;
	uint8_t					stateTimeoutProcessed ;
	uint8_t					immediateChangePending ;
	millisecondTimerType	stateTimeoutPeriod ;
	uint8_t					stateTimeoutForced ;

	state_t*				callingState ;
	state_t*				previousState ;
	state_t*				currentState ;
	state_t*				nextState ;
	char*					currentStateName ;
} stateMachine_t ;

typedef stateHandlerResponse_t (* callStateHandler_t)(stateMachine_t* self, event_t* event) ;



#define STATE_MACHINE_TOP(sm)					sm##_TOP

#define DECLARE_STATE_MACHINE(sm)				stateMachine_t* createInstanceOf_##sm ;

#define DECLARE_STATE_MACHINE_EVENTS(sm)		enum sm##_EVENTS { REQUIRED_STATE_MACHINE_EVENTS,

#define END_STATE_MACHINE_EVENTS()				} ;


#define DECLARE_STATE_MACHINE_VARIABLES()		typedef struct {
	#define PARENT_CLASS(thing)						thing	parent
#define END_STATE_MACHINE_VARIABLES_2(sm)		} sm##Machine_t ;
#define END_STATE_MACHINE_VARIABLES_1(sm)		END_STATE_MACHINE_VARIABLES_2(sm)
#define END_STATE_MACHINE_VARIABLES()			END_STATE_MACHINE_VARIABLES_1(STATE_MACHINE_NAME)

#define DEFINE_STATE_MACHINE_2(sm)				state_t sm##_TOP				= { (void*)0, 0 }
#define DEFINE_STATE_MACHINE_1(sm)				DEFINE_STATE_MACHINE_2(sm)
#define DEFINE_STATE_MACHINE()					DEFINE_STATE_MACHINE_1(STATE_MACHINE_NAME)

#define ADD_SUB_STATE_2(sm, ps, ss)				static stateHandlerResponse_t sm##_##ss##_handler(	sm##Machine_t* self, event_t* event) ;	\
												state_t sm##_##ss				= { &sm##_##ps, 0, &sm##_##ss##_handler }
#define ADD_SUB_STATE_1(sm, ps, ss)				ADD_SUB_STATE_2(sm, ps, ss)
#define ADD_SUB_STATE(ps, ss)					ADD_SUB_STATE_1(STATE_MACHINE_NAME, ps, ss)

#define ADD_ORTHOGONAL_REGION(sm, ps, or)		orthogonalRegion_t sm##_##or	= { &sm##_##ps, 0 }

#define END_STATE_MACHINE_DEFINITION()

stateMachine_t* allocateStateMachineMemory(		uint16_t sizeInBytes) ;
void deallocateStateMachineMemory(				stateMachine_t* instance) ;

#define CREATE_STATE_MACHINE_INSTANCE_2(sm)		stateMachine_t* create_##sm(	void)
#define CREATE_STATE_MACHINE_INSTANCE_1(sm)		CREATE_STATE_MACHINE_INSTANCE_2(sm)
#define CREATE_STATE_MACHINE_INSTANCE()			CREATE_STATE_MACHINE_INSTANCE_1(STATE_MACHINE_NAME)

#define DESTROY_STATE_MACHINE_INSTANCE_2(sm)	void destroy_##sm(			stateMachine_t* instance)
#define DESTROY_STATE_MACHINE_INSTANCE_1(sm)	DESTROY_STATE_MACHINE_INSTANCE_2(sm)
#define DESTROY_STATE_MACHINE_INSTANCE()		DESTROY_STATE_MACHINE_INSTANCE_1(STATE_MACHINE_NAME)

#define CREATE_INSTANCE_OF(sm)					stateMachine_t* create_##sm(	void)
#define DESTROY_INSTANCE_OF(sm)					void destroy_##sm(				stateMachine_t*)

#define REQUIRED_STATE_MACHINE_EVENTS			SUBSTATE_GET_INFO,										\
												SUBSTATE_ENTRY,											\
												SUBSTATE_INITIAL_TRANSITION,							\
												SUBSTATE_EXIT


#define DEFINE_TOP_STATE_2(sm)					static stateHandlerResponse_t sm##_TOP_handler(			sm##Machine_t* self, event_t* event)
#define DEFINE_TOP_STATE_1(sm)					DEFINE_TOP_STATE_2(sm)
#define DEFINE_TOP_STATE()						DEFINE_TOP_STATE_1(STATE_MACHINE_NAME)
#define DEFINE_STATE_2(sm, state)				static stateHandlerResponse_t sm##_##state##_handler(	sm##Machine_t* self, event_t* event)
#define DEFINE_STATE_1(sm, state)				DEFINE_STATE_2(sm, state)
#define DEFINE_STATE(state)						DEFINE_STATE_1(STATE_MACHINE_NAME, state)

#define HANDLE_STATE_EVENTS						switch(event->eventType)								\
												{

#define ENTER										case SUBSTATE_ENTRY:								\
													{
#define ENTER_DONE										return HANDLED ;								\
													}

#define INITIAL_TRANSITION_EVENT					case SUBSTATE_INITIAL_TRANSITION:					\
													{
#define INITIAL_TRANSITION_DONE							return HANDLED ;								\
													}

#define EXIT										case SUBSTATE_EXIT:									\
													{
#define EXIT_DONE										return HANDLED ;								\
													}

#define EVENT(evt)									case evt:											\
													{
#define EVENT_DONE										return HANDLED ;								\
													}


#define HANDLE_STATE_EVENTS_DONE					default:											\
													{													\
														return IGNORED ;								\
													}													\
												}


#define CHANGE_STATE_TO(sm, st)					((stateMachine_t*)self)->nextState = &sm##_##st ; return HANDLED ;



#define INITIAL_TRANSITION(dest, act)			if(event->eventType == SUBSTATE_INITIAL_TRANSITION) { act ; dest ; return TRANSITION ; }
#define TRANSITION_ON(evt, cndtn, dest, act)	if((event->eventType == evt) && (cndtn)) { act ; dest ; return TRANSITION ; }
#define IF(cndtn)								(cndtn)
#define UNCONDITIONALLY							true
#define NO_ACTION
#define ACTION(act)								act
#define FINISH									((stateMachine_t*)self)->nextState = 0

#define TO_2(sm, st)							((stateMachine_t*)self)->nextState = &sm##_##st
#define TO_1(sm, st)							TO_2(sm, st)
#define TO(st)									TO_1(STATE_MACHINE_NAME, st)













































void iterateAllStateMachines(	void) ;

#define ITERATE_ALL_STATE_MACHINES()			iterateAllStateMachines()



//#define STATE_LOCAL_DATA(st, d)		sm->__localData.##st##.d
//#define STATE_STATIC_DATA(st, d)	sm->__staticData.##st##.d
//sm_t* createStateMachineInstance(uint16_t memSizeInBytes) ;
//void outputStateMachineDebugData_G4(sm_t* sm) ;

#endif /* STATEMACHINE_G4_H_ */
