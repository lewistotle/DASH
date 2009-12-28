/*
 ============================================================================
 Name        : StateMachine_G4.c
 Author      :
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <pthread.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#define true	1

#include "stateMachine_G4.h"

#include "sm_test_timeBomb.h"
#include "sm_test_calculator.h"

//#include "sm_test_machine_c.h"

#define puts(s)		puts(s) ; fflush(stdout) ;

void* ISR_thread(	void* threadID)
{
	uint32_t	iterations = 0 ;

	puts("ISR thread started.") ;

	usleep(10000) ;

//	while(iterations < 5000)
	{
		iterations++ ;

		if((iterations % 1000) == 0)
		{
			puts(".") ;
		}

		usleep(1) ;
	}

	puts("ISR thread exited.") ;

	pthread_exit((void*)threadID) ;

	return NULL ;
}

int main()
{
	int				rc ;
	pthread_t		ISR_threadHandle ;
	void*			ISR_threadStatus ;
	bool			ok = true ;
	stateMachine_t*	bomb ;
	stateMachine_t*	calculator ;

	puts("4th Generation state machine test started.") ;

	rc = pthread_create(&ISR_threadHandle, NULL, ISR_thread, (void*)&ISR_threadStatus) ;

	if (rc != 0)
	{
		puts("\nInternal error starting ISR thread.  Exiting...\n") ;

		exit(EXIT_FAILURE) ;
	}

	puts("Generating timebomb") ;

	bomb = STATE_MACHINE_CREATE_INSTANCE_OF(timeBomb) ;

	if(bomb)
	{
//		REGISTER_STATE_MACHINE(bomb) ;
	}

	puts("Generating calculator") ;

	calculator = STATE_MACHINE_CREATE_INSTANCE_OF(calculator) ;

	if(calculator)
	{
		puts("Registering calculator") ;

		REGISTER_STATE_MACHINE(calculator) ;
	}

	puts("Iterating state machines") ;

//	while(ok)
	{
		puts("loop") ;

		ITERATE_ALL_STATE_MACHINES() ;
	}

	pthread_join(ISR_threadHandle, &ISR_threadStatus) ;

	if(calculator)
	{
		UNREGISTER_STATE_MACHINE(calculator) ;

		STATE_MACHINE_DESTROY_INSTANCE_OF(calculator, calculator) ;

		calculator = 0 ;
	}

	if(bomb)
	{
		UNREGISTER_STATE_MACHINE(bomb) ;

		STATE_MACHINE_DESTROY_INSTANCE_OF(timeBomb, bomb) ;

		bomb = 0 ;
	}

	puts("\n4th Generation state machine test done.") ;

	return EXIT_SUCCESS ;
}
