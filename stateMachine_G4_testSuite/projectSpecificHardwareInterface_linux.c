/*
 * projectSpecificHardwareInterface_cygwin_and_TS7800.c
 *
 *  Created on: Jan 24, 2010
 *      Author: jlewis
 */

#include <pthread.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <sys/time.h>
#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <termios.h>

#include "hal.h"
#include "hal_UART.h"




#define configMICROSECONDS_PER_TICK                    (1000)




#define UART_0_RECEIVE_BUFFER_SIZE	100
#define UART_0_TRANSMIT_BUFFER_SIZE	1000

static bool		UART_0_initializedFlag	= false ;
static bool		UART_0_lineReadyFlag	= false ;
static uint8_t	UART_0_receiveBuffer[	UART_0_RECEIVE_BUFFER_SIZE + 1] ;
static uint8_t	UART_0_transmitBuffer[	UART_0_TRANSMIT_BUFFER_SIZE + 1] ;

static hal_UART_queue_t	UART_0_transmitQueue =	{
													UART_0_transmitBuffer,
													UART_0_TRANSMIT_BUFFER_SIZE,
													0,
													1,
													0
												} ;

static hal_UART_queue_t	UART_0_receiveQueue =	{
													UART_0_receiveBuffer,
													UART_0_RECEIVE_BUFFER_SIZE,
													0,
													1,
													0
												} ;

static hal_UART_info_t	UART_0_struct =	{	0,							/* channel number */
											&UART_0_initializedFlag,	/* initialized flag */
											&UART_0_lineReadyFlag,
											&UART_0_transmitQueue,
											&UART_0_receiveQueue,
											hal_UART_init_projectSpecific,
											hal_UART_core_projectSpecific,
											hal_UART_isTransmitterReadyForChar_projectSpecific,
											hal_UART_sendchar_projectSpecific,
											hal_UART_hasCharBeenSent_projectSpecific,
											hal_UART_clearCharacterTransmittedFlag_projectSpecific,
											hal_UART_isCharacterInReceiveBuffer_projectSpecific,
											hal_UART_getchar_projectSpecific,
											hal_UART_clearCharacterReceivedFlag_projectSpecific,
											hal_UART_shutdown_projectSpecific,
											NULL						/* device specific data */
										} ;

hal_UART_info_t* UART_0 = &UART_0_struct ;



#define puts(s)		puts(s) ; fflush(stdout) ;


void handleKeypress(uint8_t c) ;
void* charInput_thread(	void* threadID) ;

pthread_t		charInput_threadHandle ;
void*			charInput_threadStatus ;

char	UARTtempBuffer[512] ;

bool hal_UART_init_projectSpecific(	struct hal_UART_info_ps_t* hal_UART_info)
{
	int	rc ;

	puts("charInput thread starting.") ;

	rc = pthread_create(&charInput_threadHandle, NULL, charInput_thread, (void*)&charInput_threadStatus) ;

	if (rc != 0)
	{
		puts("\nInternal error starting charInput thread.  Exiting...\n") ;

		exit(EXIT_FAILURE) ;
	}

	return true ;
}


void hal_UART_core_projectSpecific(	struct hal_UART_info_ps_t* hal_UART_info)
{
	/* Nothing to do here since it's all handled by charInput_thread */
}


void* charInput_thread(	void* threadID)
{
	static struct termios	init_tio ;
	struct termios			tio ;
	char					characterRead ;
	ssize_t 				ignored = 0 ;

	puts("charInput thread started.") ;

	// Set up the terminal so that it will buffer by character rather than by line and apply the change immediately

    tcgetattr(0, &init_tio) ;

    memcpy(&tio, &init_tio, sizeof(struct termios)) ;

    tio.c_lflag &= ~(ICANON | ECHO) ;

    tcsetattr(0, TCSANOW, &tio) ;

	do
	{
		ignored = read(0, &characterRead, 1) ;

		handleKeypress(characterRead) ;
	} while(characterRead != 0x1B) ;


	puts("charInput thread exited.") ;

    /* back to initial terminal mode */
    tcsetattr(0, TCSANOW, &init_tio) ;
    tcsetattr(0, TCSANOW, &init_tio) ;

	pthread_exit((void*)threadID) ;

	return NULL ;
}


bool hal_UART_isTransmitterReadyForChar_projectSpecific(		struct hal_UART_info_ps_t* hal_UART_info)
{
	return true ;
}


bool hal_UART_sendchar_projectSpecific(							struct hal_UART_info_ps_t* hal_UART_info, uint8_t charToSend)
{
	return putchar(charToSend) ;
}


bool	hal_UART_hasCharBeenSent_projectSpecific(				struct hal_UART_info_ps_t* hal_UART_info)
{
	return true ;
}


void hal_UART_clearCharacterTransmittedFlag_projectSpecific(	struct hal_UART_info_ps_t* hal_UART_info)
{
}


bool hal_UART_isCharacterInReceiveBuffer_projectSpecific(		struct hal_UART_info_ps_t* hal_UART_info)
{
	return false ;
}


uint8_t hal_UART_getchar_projectSpecific(						struct hal_UART_info_ps_t* hal_UART_info)
{
	return getchar() ;
}


void hal_UART_clearCharacterReceivedFlag_projectSpecific(		struct hal_UART_info_ps_t* hal_UART_info)
{
}


void hal_UART_shutdown_projectSpecific(	struct hal_UART_info_ps_t* hal_UART_info)
{
	puts("charInput thread join pending.") ;

	pthread_join(charInput_threadHandle, &charInput_threadStatus) ;

	puts("charInput thread join complete.") ;
}







#include <pthread.h>
#include <unistd.h>

void* charInput_thread(	void* threadID) ;
void* timer_thread(		void* threadID) ;

pthread_t		timer_threadHandle ;
void*			timer_threadStatus ;

void handleTimer(		void) ;
void hsm_handleTick(	uint32_t microsecondsSinceLastHandled) ;


uint32_t	uptime_hours ;
uint32_t	uptime_microseconds ;

static bool timerShouldRun = false ;

void task_TIMER_init(		void)
{
	int				rc ;

	timerShouldRun = true ;

	rc = pthread_create(&timer_threadHandle, NULL, timer_thread, (void*)&timer_threadStatus) ;

	if (rc != 0)
	{
		puts("\nInternal error starting timer thread.  Exiting...\n") ;

		exit(EXIT_FAILURE) ;
	}

	puts("timer thread started.") ;

	uptime_hours		= 0 ;
	uptime_microseconds	= 0 ;
}


void task_TIMER_core(		void)
{
}


void task_TIMER_shutdown(	void)
{
	timerShouldRun = false ;

	puts("timer thread join pending.") ;

	pthread_join(timer_threadHandle, &timer_threadStatus) ;

	puts("timer thread join complete.") ;
}











/* Subtract the `struct timeval' values X and Y,
   storing the result in RESULT.
   Return 1 if the difference is negative, otherwise 0.  */

int timeval_subtract(struct timeval* result, struct timeval* x, struct timeval* y)
{
	/* Perform the carry for the later subtraction by updating y. */

	if (x->tv_usec < y->tv_usec)
	{
		int nsec = (y->tv_usec - x->tv_usec) / 1000000 + 1;

		y->tv_usec -= 1000000 * nsec;
		y->tv_sec += nsec;
	}

	if (x->tv_usec - y->tv_usec > 1000000)
	{
		int nsec = (x->tv_usec - y->tv_usec) / 1000000;

		y->tv_usec += 1000000 * nsec;
		y->tv_sec -= nsec;
	}

	/* Compute the time remaining to wait. tv_usec is certainly positive. */
	result->tv_sec = x->tv_sec - y->tv_sec;
	result->tv_usec = x->tv_usec - y->tv_usec;

	/* Return 1 if result is negative. */

	return x->tv_sec < y->tv_sec;
}



struct timeval systemUptime ;

void* timer_thread(	void* threadID)
{
	struct timeval lastTickTime ;

	printf("timer thread started.\n") ;

	gettimeofday(&lastTickTime, NULL) ;

	while(timerShouldRun)
	{
		struct timeval	currentTime ;
		struct timeval	timeSinceLastCheck ;

		gettimeofday(&currentTime, NULL) ;

		timeval_subtract(&timeSinceLastCheck, &currentTime, &lastTickTime) ;

		if(timeSinceLastCheck.tv_usec >= configMICROSECONDS_PER_TICK)
		{
			lastTickTime.tv_sec		= currentTime.tv_sec ;
			lastTickTime.tv_usec	= currentTime.tv_usec ;

			systemUptime.tv_sec		+= timeSinceLastCheck.tv_sec ;
			systemUptime.tv_usec	+= timeSinceLastCheck.tv_usec ;

			if(systemUptime.tv_usec > 1000000 /* microseconds per second */)
			{
#if 0
				puts("[TICK]") ;
#endif

				systemUptime.tv_sec		+= 1 ;
				systemUptime.tv_usec	-= 1000000 /* microseconds per second */ ;
			}

			hsm_handleTick(timeSinceLastCheck.tv_usec) ;
#if 0
			putchar('0' + (timeSinceLastCheck.tv_usec / configMICROSECONDS_PER_TICK)) ;
#endif
		}

		usleep(configMICROSECONDS_PER_TICK) ;
	}

	puts("timer thread exited.") ;

	pthread_exit((void*)threadID) ;

	return NULL ;
}