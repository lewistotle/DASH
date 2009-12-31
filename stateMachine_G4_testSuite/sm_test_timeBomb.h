/*
 * sm_test_timeBomb.h
 *
 *  Created on: Nov 29, 2009
 *      Author: jlewis
 */

#ifndef SM_TEST_TIMEBOMB_H_
#define SM_TEST_TIMEBOMB_H_

#include "stateMachine_G4.h"

DECLARE_STATE_MACHINE_EVENTS(timeBomb)

	UP,
	DOWN,
	ARM,
	TICK

END_STATE_MACHINE_EVENTS()

#endif /* SM_TEST_TIMEBOMB_H_ */