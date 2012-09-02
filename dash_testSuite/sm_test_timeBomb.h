/*
 * sm_test_timeBomb.h
 *
 *  Created on: Nov 29, 2009
 *      Author: jlewis
 */

#ifndef SM_TEST_TIMEBOMB_H_
#define SM_TEST_TIMEBOMB_H_

#include "dash.h"

DECLARE_STATE_MACHINE_EVENTS(timeBomb)

	UP,
	DOWN,
	ARM,

	FINETICK

END_STATE_MACHINE_EVENTS(timeBomb)

#endif /* SM_TEST_TIMEBOMB_H_ */
