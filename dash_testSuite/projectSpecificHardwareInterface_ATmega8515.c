/*
 * projectSpecificHardwareInterface_cygwin_and_TS7800.c
 *
 *  Created on: Jan 24, 2010
 *      Author: jlewis
 */

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <stdio.h>

#include "hal.h"
#include "hal_UART.h"


bool hal_init_projectSpecific(			void)
{
	return true ;
}


bool hal_shutdown_projectSpecific(			void)
{
	return true ;
}


#define configMICROSECONDS_PER_TICK                    (1000)

static volatile bool	timerShouldRun			= false ;
static volatile	bool	timeForTickProcessing	= false ;

bool hal_clock_init_projectSpecific(	void)
{
	return true ;
}


bool hal_clock_shutdown_projectSpecific(	void)
{
	return true ;
}


bool hal_timer_init_projectSpecific(	void)
{
	return true ;
}


bool hal_timer_is_time_for_tick_processing_projectSpecific(	void)
{
	if(timeForTickProcessing)
	{
		return true ;
	}
	else
	{
		return false ;
	}
}


void hal_timer_tick_procesed_projectSpecific(				void)
{
	timeForTickProcessing = false ;
}


bool hal_timer_shutdown_projectSpecific(	void)
{
	timerShouldRun = false ;

	return true ;
}


bool hal_gpio_init_projectSpecific(		void)
{
	return true ;
}


bool hal_gpio_shutdown_projectSpecific(		void)
{
	return true ;
}


#define UART_0_RECEIVE_BUFFER_SIZE	10
#define UART_0_TRANSMIT_BUFFER_SIZE	100

static __xdata uint8_t					UART_0_transmitBuffer[	UART_0_TRANSMIT_BUFFER_SIZE + 1] ;
static __xdata uint8_t					UART_0_receiveBuffer[	UART_0_RECEIVE_BUFFER_SIZE  + 1] ;
static hal_UART_info_internal_t __xdata	UART_0_struct ;

hal_UART_info_t* UART_0 = &UART_0_struct ;



#define puts(s)		puts(s) ; fflush(stdout) ;


bool hal_UART_init_projectSpecific(	hal_UART_info_t* hal_UART_info)
{
	hal_UART_info_internal_t*	UART_internals = (hal_UART_info_internal_t*)hal_UART_info ;

	if(hal_UART_info)
	{
		UART_internals->channelNumber					= 0 ;

		UART_internals->transmitQueue.Array				= UART_0_transmitBuffer ;
		UART_internals->transmitQueue.Capacity			= UART_0_TRANSMIT_BUFFER_SIZE ;

		UART_internals->receiveQueue.Array				= UART_0_receiveBuffer ;
		UART_internals->receiveQueue.Capacity			= UART_0_RECEIVE_BUFFER_SIZE ;
	}

	return true ;
}


void hal_UART_core_projectSpecific(	hal_UART_info_t* hal_UART_info)
{
	/* Nothing to do here since it's all handled by charInput_thread */
}


bool hal_UART_isTransmitterReady_projectSpecific(				hal_UART_info_t* hal_UART_info)
{
	return true ;
}


bool hal_UART_sendchar_projectSpecific(							hal_UART_info_t* hal_UART_info, uint8_t charToSend)
{
	return putchar(charToSend) ;
}


bool	hal_UART_hasCharBeenSent_projectSpecific(				hal_UART_info_t* hal_UART_info)
{
	return true ;
}


void hal_UART_clearSentFlag_projectSpecific(					hal_UART_info_t* hal_UART_info)
{
}


bool hal_UART_isReceiveReady_projectSpecific(					hal_UART_info_t* hal_UART_info)
{
	return false ;
}


uint8_t hal_UART_getchar_projectSpecific(						hal_UART_info_t* hal_UART_info)
{
	return getchar() ;
}


void hal_UART_clearReceivedFlag_projectSpecific(				hal_UART_info_t* hal_UART_info)
{
}


void hal_UART_shutdown_projectSpecific(	hal_UART_info_t* hal_UART_info)
{
}
