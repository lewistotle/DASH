/*
 * StateMachine_G4.h
 *
 *  Created on: Nov 27, 2009
 *      Author: jlewis
 */

#ifndef STATEMACHINE_G4_H_
#define STATEMACHINE_G4_H_




typedef uint8_t	stateEvent_t ;
typedef void	(* call_state_type)(uint8_t stateEvent_t) ;

typedef struct
{
	uint8_t					stateMachineInitialized ;
	uint16_t				stateRetryCount ;
	uint8_t					stateTimeoutEnabled ;
	uint8_t					stateTimeoutProcessed ;
	uint8_t					immediateChangePending ;
//	millisecondTimerType	stateTimeoutPeriod ;
	uint8_t					stateTimeoutForced ;

	call_state_type			callingState ;
	call_state_type			previousState ;
	call_state_type			currentState ;
	call_state_type			nextState ;
	char*					currentStateName ;
} stateMachine_t ;


void iterateAllStateMachines(	void) ;



#define DECLARE_STATE_MACHINE(sm)					extern stateMachine_t sm ;

#define REGISTER_STATE_MACHINE(sm)

#define ENUMERATE_STATES(sm)
	#define DECLARE_INITIAL_STATE(sm)
	#define DECLARE_STATE(sm, state)
#define END_ENUMERATE_STATES(sm)

//#define ENUMERATE_STATE_MACHINE_EVENTS(sm)			enum { SM_EVENT_GET_INFO = 0,	SM_EVENT_ENTRY = 1, SM_EVENT_DO = 2, SM_EVENT_TIMEOUT = 3, SM_EVENT_EXIT = 4,

//	#define DECLARE_STATE_MACHINE_EVENT(sm, evt)	evt

//#define END_ENUMERATE_STATE_MACHINE_EVENTS(sm)		} ;

#define ITERATE_ALL_STATE_MACHINES()				iterateAllStateMachines()

#define CONSOLIDATE_STATE_MACHINE_ENUMERATIONS(sm)


typedef uint16_t	millisecondTimerType ;


typedef struct
{
	void*					parent_sm ;
	uint8_t					stateMachineInitialized ;
	uint16_t				stateRetryCount ;
	uint8_t					stateTimeoutEnabled ;
	uint8_t					stateTimeoutProcessed ;
	uint8_t					immediateChangePending ;
	millisecondTimerType	millisecondsInState ;
	millisecondTimerType	stateTimeoutPeriod ;
	uint8_t					stateTimeoutForced ;

	call_state_type			callingState ;
	call_state_type			previousState ;
	call_state_type			currentState ;
	call_state_type			nextState ;
	char*					currentStateName ;
} sm_t ;

#define REQUIRED_STATE_MACHINE_EVENTS	SUBSTATE_GET_INFO, SUBSTATE_ENTRY, SUBSTATE_DO, SUBSTATE_TIMEOUT, SUBSTATE_EXIT

#define STATE_LOCAL_DATA(st, d)		sm->__localData.##st##.d
#define STATE_STATIC_DATA(st, d)	sm->__staticData.##st##.d

void outputStateMachineDebugData_G4(sm_t* sm) ;


#endif /* STATEMACHINE_G4_H_ */
