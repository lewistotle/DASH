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


#include "config.h"
#include "stateMachine_G4.h"

#include "sm_globalEvents.h"
#include "sm_test_timeBomb.h"
#include "sm_test_calculator.h"














extern stateMachine_t*	bomb ;
extern stateMachine_t*	calculator ;

#define puts(s)		puts(s) ; fflush(stdout) ;

static struct termios init_tio;
struct termios tio;
struct timeval tv;




void init_keyboard()
{
    tcgetattr(0,&init_tio);
    /* set up terminal */
    memcpy(&tio,&init_tio,sizeof(struct termios));
    tio.c_lflag &= ~(ICANON);
    tcsetattr(0,TCSANOW,&tio);
}


void close_keyboard()
{
    /* back to initial terminal mode */
    tcsetattr(0,TCSANOW,&init_tio);
    tcsetattr(0,TCSANOW,&init_tio);
}


int kbhit()
{
    fd_set rfds;
    /* do not wait */
    FD_ZERO(&rfds);
    FD_SET(0,&rfds);
    tv.tv_usec = 0;
    tv.tv_sec  = 0;
    fflush(stdout) ;
    fflush(stdin) ;
    select(1,&rfds,NULL,NULL,&tv);
    return (FD_ISSET(0,&rfds)?1:0);
}


int readkey()
{
    int ch;
    struct termios tio;
    /* set up terminal */
    memcpy(&tio,&init_tio,sizeof(struct termios));
    tio.c_lflag &= ~(ICANON | ECHO);
    tcsetattr(STDIN_FILENO,TCSANOW,&tio);
    /* input key */
    read(0,&ch,1);
    /* back to initial terminal mode */
    tcsetattr(0,TCSANOW,&init_tio);
    return ch;
}


void handleKeypress(uint8_t c) ;
void* charInput_thread(	void* threadID) ;

pthread_t		charInput_threadHandle ;
void*			charInput_threadStatus ;

char	UARTtempBuffer[512] ;

void task_UART_init_projectSpecific(	unsigned char channelNumber)
{
	int	rc ;

	rc = pthread_create(&charInput_threadHandle, NULL, charInput_thread, (void*)&charInput_threadStatus) ;

	if (rc != 0)
	{
		puts("\nInternal error starting charInput thread.  Exiting...\n") ;

		exit(EXIT_FAILURE) ;
	}
}


void task_UART_core_projectSpecific(	unsigned char channelNumber)
{
	/* Nothing to do here since it's all handled by charInput_thread */
}


void* charInput_thread(	void* threadID)
{
	char c = 0 ;

	puts("charInput thread started.") ;

	init_keyboard() ;

	do
	{
		c = readkey() ;

		handleKeypress(c) ;
	} while(c != 0x1B) ;


	puts("charInput thread exited.") ;

	close_keyboard() ;

	pthread_exit((void*)threadID) ;

	return NULL ;
}


bool task_UART_putchar_projectSpecific(						unsigned char channelNumber, char charToSend)
{
	return putchar(charToSend) ;
}


void task_UART_puts_projectSpecific(						unsigned char channelNumber, const char* buffer)
{
	puts(buffer) ;
}


char task_UART_getchar_projectSpecific(						unsigned char channelNumber)
{
	return getchar() ;
}


char* task_UART_gets_projectSpecific(						unsigned char channelNumber, char* buffer, unsigned short maxBufferLength)
{
	return gets(buffer) ;
}


void task_UART_shutdown_projectSpecific(	unsigned char channelNumber)
{
	pthread_join(charInput_threadHandle, &charInput_threadStatus) ;
}









#ifdef __c8051f040__
	#include "config.h"
	#include "HardwareAbstractionLayer.h"
	#include "ioMapping.h"
	#include "gpio.h"
	#include "pwm.h"
	#include "task_UART.h"

	static void prvSetupSystemClock(	void ) ;
	static void prvSetupTimerInterrupt(	void ) ;

	static volatile bool		timeForTickProcessing ;				/* set in an ISR so volatile is needed */
#else
	#include <pthread.h>
	#include <unistd.h>

	void* charInput_thread(	void* threadID) ;
	void* timer_thread(		void* threadID) ;

	pthread_t		timer_threadHandle ;
	void*			timer_threadStatus ;

	void handleTimer(		void) ;
	void hsm_handleTick(	uint32_t microsecondsSinceLastHandled) ;
#endif


uint32_t	uptime_hours ;
uint32_t	uptime_microseconds ;

void task_TIMER_init(		void)
{
#ifdef __c8051f040__
	WDTCN = 0xDE ;	/* Disable the watchdog timer */
	WDTCN = 0xAD ;
	WDTCN = 0xFF ;	/* Disable any future ability to modify the watchdog timer */

	prvSetupSystemClock() ;
	gpio_init() ;
	pwm_init(ioMapping_PWM_TO_TICK_SYNCHRONIZER_CHANNEL) ;
	prvSetupTimerInterrupt() ;
	task_UART_init(0) ;

	portENABLE_INTERRUPTS() ;
#else
	int				rc ;

	rc = pthread_create(&timer_threadHandle, NULL, timer_thread, (void*)&timer_threadStatus) ;

	if (rc != 0)
	{
		puts("\nInternal error starting timer thread.  Exiting...\n") ;

		exit(EXIT_FAILURE) ;
	}

	uptime_hours		= 0 ;
	uptime_microseconds	= 0 ;
#endif
}


void task_TIMER_core(		void)
{
}


void task_TIMER_shutdown(	void)
{
#if defined(__TS7800__) || defined(__cygwin__) || defined(__linux__)
	pthread_join(timer_threadHandle, &timer_threadStatus) ;
#endif
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

	while(true)
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

