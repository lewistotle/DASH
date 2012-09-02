/*
 * sm_test_machine_a.h
 *
 *  Created on: Nov 29, 2009
 *      Author: jlewis
 */

#ifndef SM_TEST_CALCULATOR_H_
#define SM_TEST_CALCULATOR_H_

#include "dash.h"

DECLARE_STATE_MACHINE_EVENTS(calculator)

	CLEAR,
	CLEAR_ENTRY,
	DIGIT_0,
	DIGIT_1_9,
	POINT,
	OPERATION,
	EQUALS,
	OFF

END_STATE_MACHINE_EVENTS(calculator)

#endif /* SM_TEST_CALCULATOR_H_ */
