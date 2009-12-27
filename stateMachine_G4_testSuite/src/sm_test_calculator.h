/*
 * sm_test_machine_a.h
 *
 *  Created on: Nov 29, 2009
 *      Author: jlewis
 */

#ifndef SM_TEST_CALCULATOR_H_
#define SM_TEST_CALCULATOR_H_

#include "stateMachine_G4.h"

DECLARE_STATE_MACHINE(calculator) ;

DECLARE_STATE_MACHINE_EVENTS(calculator)

	CLEAR,
	CLEAR_ENTRY,
	DIGIT_0,
	DIGIT_1_9,
	POINT,
	OPERATION,
	EQUALS,
	OFF

END_STATE_MACHINE_EVENTS()

typedef struct
{
	PARENT_CLASS(event_t) ;

	uint8_t	key ;
} keyEvent_t ;

#endif /* SM_TEST_CALCULATOR_H_ */
