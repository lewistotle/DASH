/*
 * sm_test_machine_c.h
 *
 *  Created on: Nov 29, 2009
 *      Author: jlewis
 */

#ifndef SM_TEST_MACHINE_C_H_
#define SM_TEST_MACHINE_C_H_

#include "stateMachine_G4.h"



#if 0
ENUMERATE_STATE_MACHINE(calculator) ;
	DECLARE_STATES()
		DECLARE_STATE(calculator, TEST_STATE_1) ;
		DECLARE_STATE(calculator, TEST_STATE_2) ;
	END_STATES() ;

	DECLARE_EVENTS() ;
		DECLARE_STATE_MACHINE_EVENT(calculator, testEvent) ;
	END_EVENTS() ;

	DECLARE_STATE_MACHINE_OVERLAY_DATA()
		BEGIN_STATE_DATA(TEST_STATE_1)
		{
			uint16_t	counter ;
			uint8_t		index ;
		}
		END_STATE_DATA() ;
		BEGIN_STATE_DATA(TEST_STATE_2) ;
			{
				uint16_t	addr ;
				uint8_t		place ;
			}
		END_STATE_MACHINE_OVERLAY_DATA() ;
	END_STATE_MACHINE_DATA() ;

	DECLARE_STATE_MACHINE_SAVED_DATA() ;
		BEGIN_STATE_DATA(TEST_STATE_1)
		{
			bool	found ;
		}
		END_STATE_DATA() ;
		BEGIN_STATE_DATA(TEST_STATE_2)
		{
			bool	scanned ;
		}
		END_STATE_MACHINE_SAVED_DATA() ;
	END_STATE_MACHINE_DATA() ;
END_STATE_MACHINE() ;



void _sm__calculator__TEST_STATE_1(	sm_t* sm, int eventType) ;
void _sm__calculator__TEST_STATE_2(	sm_t* sm, int eventType) ;

typedef struct
{
	sm_t	__smData ;

	union
	{
		struct TEST_STATE_1_local
		{
			uint16_t	counter ;
			uint8_t		index ;
		} TEST_STATE_1_local ;
		struct TEST_STATE_2_local
		{
			uint16_t	addr ;
			uint8_t		place ;
		} TEST_STATE_2_local ;
	} __localData ;

	struct
	{
		struct TEST_STATE_1_static
		{
			bool	found ;
		} TEST_STATE_1_static ;
		struct TEST_STATE_2_static
		{
			bool	scanned ;
		} TEST_STATE_2_static ;
	} __staticData ;
} sm__calculator__t ;
#endif


#endif /* SM_TEST_MACHINE_C_H_ */
