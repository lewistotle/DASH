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


typedef struct
{
	void*					parent ;
	uint8_t					type ;
} state_t ;

typedef struct
{
	void*					parent ;
	uint8_t					type ;
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


#define STATE_MACHINE_TOP(sm)					sm##_TOP

#define DECLARE_STATE_MACHINE(sm)				stateMachine_t* createInstanceOf_##sm ;							\
												void sm##_handleEvent(stateMachine_t* self, event_t* event) ;

#define DECLARE_STATE_MACHINE_EVENTS(sm)		enum sm##_EVENTS { REQUIRED_STATE_MACHINE_EVENTS,

#define END_STATE_MACHINE_EVENTS()				} ;


#define DECLARE_STATE_MACHINE_VARIABLES(sm)		typedef struct {
	#define PARENT_CLASS(thing)						thing	parent
#define END_STATE_MACHINE_VARIABLES(sm)			} sm##Machine_t ;

#define DEFINE_STATE_MACHINE(sm)				state_t sm##_TOP				= { (void*)0, 0 } ;

#define ADD_SUB_STATE(sm, ps, ss)				state_t sm##_##ss				= { &sm##_##ps, 0 } ;

#define ADD_ORTHOGONAL_REGION(sm, ps, or)		orthogonalRegion_t sm##_##or	= { &sm##_##ps, 0 } ;

#define END_STATE_MACHINE_DEFINITION(sm)

stateMachine_t* allocateStateMachineMemory(		uint16_t sizeInBytes) ;
void deallocateStateMachineMemory(				stateMachine_t* instance) ;

#define CREATE_STATE_MACHINE_INSTANCE(sm)		stateMachine_t* init_##sm(	void)

#define DESTROY_STATE_MACHINE_INSTANCE(sm)		void destroy_##sm(			stateMachine_t* instance)

#define REQUIRED_STATE_MACHINE_EVENTS			SUBSTATE_GET_INFO,										\
												SUBSTATE_ENTRY,											\
												SUBSTATE_INITIAL_TRANSITION,							\
												SUBSTATE_EXIT


#define DEFINE_TOP_STATE(sm)					state_t* sm##_TOP_handler(			sm##Machine_t* self, event_t* event)
#define DEFINE_STATE(sm, state)					state_t* sm##_##state##_handler(	sm##Machine_t* self, event_t* event)

#define HANDLE_STATE_EVENTS						switch(event->eventType)								\
												{

#define ENTER										case SUBSTATE_ENTRY:								\
													{
#define ENTER_DONE										return 0 ;										\
													}

#define INITIAL_TRANSITION							case SUBSTATE_INITIAL_TRANSITION:					\
													{
#define INITIAL_TRANSITION_DONE							return 0 ;										\
													}

#define EXIT										case SUBSTATE_EXIT:									\
													{
#define EXIT_DONE										return 0 ;										\
													}

#define EVENT(evt)									case evt:											\
													{
#define EVENT_DONE										return 0 ;										\
													}


#define HANDLE_STATE_EVENTS_DONE					default:											\
													{													\
														return (state_t*)(((stateMachine_t*)self)->currentState->parent) ;	\
													}													\
												}


#define CHANGE_STATE_TO(st)












void iterateAllStateMachines(	void) ;

#define ITERATE_ALL_STATE_MACHINES()			iterateAllStateMachines()



//#define STATE_LOCAL_DATA(st, d)		sm->__localData.##st##.d
//#define STATE_STATIC_DATA(st, d)	sm->__staticData.##st##.d
//sm_t* createStateMachineInstance(uint16_t memSizeInBytes) ;
//void outputStateMachineDebugData_G4(sm_t* sm) ;

#endif /* STATEMACHINE_G4_H_ */
