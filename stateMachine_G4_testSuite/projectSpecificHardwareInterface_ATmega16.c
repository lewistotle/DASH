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


bool hal_UART_init_projectSpecific(	struct hal_UART_info_ps_t* hal_UART_info)
{
	return true ;
}


void hal_UART_core_projectSpecific(	struct hal_UART_info_ps_t* hal_UART_info)
{
	/* Nothing to do here since it's all handled by charInput_thread */
}


bool hal_UART_isTransmitterReadyForChar_projectSpecific(		struct hal_UART_info_ps_t* hal_UART_info)
{
	return true ;
}


bool hal_UART_sendchar_projectSpecific(							struct hal_UART_info_ps_t* hal_UART_info, uint8_t charToSend)
{
	return true ;
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
	return 0 ;
}


void hal_UART_clearCharacterReceivedFlag_projectSpecific(		struct hal_UART_info_ps_t* hal_UART_info)
{
}


void hal_UART_shutdown_projectSpecific(	struct hal_UART_info_ps_t* hal_UART_info)
{
}







uint32_t	uptime_hours ;
uint32_t	uptime_microseconds ;

static bool timerShouldRun = false ;

void task_TIMER_init(		void)
{
}


void task_TIMER_core(		void)
{
}


void task_TIMER_shutdown(	void)
{
	timerShouldRun = false ;
}







