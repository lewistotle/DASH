/*
 * sm_systemEvents.h
 *
 *  Created on: Jan 19, 2010
 *      Author: jlewis
 */

#ifndef SM_SYSTEMEVENTS_H_
#define SM_SYSTEMEVENTS_H_

#include "stateMachine_G4.h"

DECLARE_GLOBAL_STATE_MACHINE_EVENTS()

	STDIN_CHARACTER

END_GLOBAL_STATE_MACHINE_EVENTS()

typedef struct
{
	PARENT_CLASS(event_t) ;

	uint8_t	key ;
} keyEvent_t ;

#endif /* SM_SYSTEMEVENTS_H_ */
