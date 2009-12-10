/*
 ============================================================================
 Name        : StateMachine_G4.c
 Author      :
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */


#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#include "stateMachine_G4.h"


enum { REQUIRED_STATE_MACHINE_EVENTS } ;

#define configMAXIMUM_NUMBER_OF_STATE_MACHINES		50

sm_t*	stateMachines[configMAXIMUM_NUMBER_OF_STATE_MACHINES] ;


void iterateStateMachine(	sm_t* sm) ;


bool registerStateMachine(			sm_t* sm)
{
	return false ;
}


void iterateAllStateMachines(	void)
{
	uint8_t	statetMachineIndex ;

	for( statetMachineIndex = 0 ; statetMachineIndex < configMAXIMUM_NUMBER_OF_STATE_MACHINES ; statetMachineIndex++ )
	{
		if(stateMachines[statetMachineIndex] != NULL)
		{
			iterateStateMachine(stateMachines[statetMachineIndex]) ;
		}
	}
}

void iterateStateMachine(	sm_t* sm)
{
	if(!sm->stateMachineInitialized)
	{
		sm->stateMachineInitialized = true ;
		sm->stateRetryCount			= 0 ;
//		STATE_MACHINE_SETUP_MILLISECOND_TICK ;
//		TIME_IN_STATE_INIT_HELPER() ;
	}
//	STATE_MACHINE_ITERATOR_SKIN_PRE(	STATE_MACHINE_NAME)() ;
	do
	{
		if(sm->currentState != sm->previousState)
		{
			sm->currentState(SUBSTATE_GET_INFO) ;
			sm->stateTimeoutEnabled		= false ;
			sm->stateTimeoutProcessed	= false ;
			sm->stateTimeoutForced		= false ;
//			TIME_IN_STATE_ENTRY_HELPER() ;
			sm->millisecondsInState		= 0 ;
			outputStateMachineDebugData_G4(sm) ;
			sm->currentState(SUBSTATE_ENTRY) ;
			sm->previousState = sm->currentState ;
		}
		else if(sm->stateTimeoutEnabled && (sm->stateTimeoutForced || (sm->millisecondsInState >= sm->stateTimeoutPeriod)) && (!sm->stateTimeoutProcessed))
		{
			outputStateMachineDebugData_G4(sm) ;
			sm->currentState(SUBSTATE_TIMEOUT) ;
			sm->stateTimeoutForced = false ;
		}
		else if(sm->nextState == sm->currentState)
		{
			sm->immediateChangePending = false ;
//			TIME_IN_STATE_HELPER() ;
			outputStateMachineDebugData_G4(sm) ;
			sm->currentState(SUBSTATE_DO) ;
		}
		else if(sm->nextState != sm->currentState)
		{
			outputStateMachineDebugData_G4(sm) ;
			sm->currentState(SUBSTATE_EXIT) ;
			sm->currentState = sm->nextState ;
			sm->stateRetryCount = 0 ;
		}
		if(sm->immediateChangePending)
		{
			outputStateMachineDebugData_G4(sm) ;
		}
	} while(sm->immediateChangePending) ;
//	STATE_MACHINE_ITERATOR_SKIN_POST(	STATE_MACHINE_NAME)() ;
}

void outputStateMachineDebugData_G4(sm_t* sm)
{
	(void)sm ;
}
