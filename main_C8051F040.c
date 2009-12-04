/*
 * main_C8051F040.c
 *
 *  Created on: Nov 29, 2009
 *      Author: jlewis
 */

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#define true	1
typedef uint8_t	bool ;

#include "stateMachine_G4.h"

#include "sm_test_machine_a.h"
#include "sm_test_machine_b.h"
#include "sm_test_machine_c.h"



void main(	void)
{
	bool		ok = true ;

//	puts("\n4th Generation state machine test started.\n") ;

//	REGISTER_STATE_MACHINE(test_a) ;
//	REGISTER_STATE_MACHINE(b) ;
//	REGISTER_STATE_MACHINE(c) ;

	while(ok)
	{
		ITERATE_ALL_STATE_MACHINES() ;
	}

//	puts("\n4th Generation state machine test done.") ;
}
