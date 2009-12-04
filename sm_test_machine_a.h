/*
 * sm_test_machine_a.h
 *
 *  Created on: Nov 29, 2009
 *      Author: jlewis
 */

#ifndef SM_TEST_MACHINE_A_H_
#define SM_TEST_MACHINE_A_H_

#include "stateMachine_G4.h"

ENUMERATE_STATE_MACHINE(test_a) ;
	DECLARE_STATES()
		DECLARE_STATE(test_a, BEGIN_ENUMERATION) ;
		DECLARE_STATE(test_a, SCAN_ADDRESS) ;
	END_STATES() ;

	DECLARE_EVENTS() ;
		DECLARE_STATE_MACHINE_EVENT(test_a, testEvent) ;
	END_EVENTS() ;

	DECLARE_STATE_MACHINE_OVERLAY_DATA()
		BEGIN_STATE_DATA(BEGIN_ENUMERATION)
		{
			uint16_t	counter ;
			uint8_t		index ;
		}
		END_STATE_DATA() ;
		BEGIN_STATE_DATA(SCAN_ADDRESS) ;
			{
				uint16_t	addr ;
				uint8_t		place ;
			}
		END_STATE_MACHINE_OVERLAY_DATA() ;
	END_STATE_MACHINE_DATA() ;

	DECLARE_STATE_MACHINE_SAVED_DATA() ;
		BEGIN_STATE_DATA(BEGIN_ENUMERATION)
		{
			bool	found ;
		}
		END_STATE_DATA() ;
		BEGIN_STATE_DATA(SCAN_ADDRESS)
		{
			bool	scanned ;
		}
		END_STATE_MACHINE_SAVED_DATA() ;
	END_STATE_MACHINE_DATA() ;
END_STATE_MACHINE() ;



typedef struct
{
	void					parent_sm ;
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

} sm_t ;


void _sm__test_a__BEGIN_ENUMERATION(	sm_t* sm, int eventType) ;
void _sm__test_a__SCAN_ADDRESS(			sm_t* sm, int eventType) ;

enum
{
	SM_INFO, SM_ENTRY, SM_DO, SM_TIMEOUT, SM_EXIT,
	testEvent
} ;

typedef struct
{
	sm_t					__smData ;

	union overlayedData
	{
		struct BEGIN_ENUMERATION
		{
			uint16_t	counter ;
			uint8_t		index ;
		} ;
		struct SCAN_ADDRESS
		{
			uint16_t	addr ;
			uint8_t		place ;
		} ;
	} ;

	struct savedData
	{
		struct BEGIN_ENUMERATION
		{
			bool	found ;
		} ;
		struct SCAN_ADDRESS
		{
			bool	scanned ;
		} ;
	} ;
} sm__test_a__t ;











#endif /* SM_TEST_MACHINE_A_H_ */
