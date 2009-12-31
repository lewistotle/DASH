/*
 * sm_test_toaster.h
 *
 *  Created on: Nov 29, 2009
 *      Author: jlewis
 */

#ifndef SM_TEST_TOASTER_H_
#define SM_TEST_TOASTER_H_

#include "stateMachine_G4.h"

DECLARE_STATE_MACHINE_EVENTS(toaster)

	BAKE,
	TOAST,
	OFF,
	OPEN,
	CLOSE

END_STATE_MACHINE_EVENTS()

#endif /* SM_TEST_TOASTER_H_ */
