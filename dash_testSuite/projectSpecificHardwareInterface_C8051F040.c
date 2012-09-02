
#include <stdint.h>
#include "hal.h"
#include "hal_UART.h"
#include <C8051F040.h>

#ifndef NULL
	#define NULL	((void*)0)
#endif


bool hal_init_projectSpecific(			void)
{
	WDTCN = 0xDE ;	// Disable the watchdog timer
	WDTCN = 0xAD ;
	WDTCN = 0xFF ;	// Disable any future ability to modify the watchdog timer

	return true ;
}


bool hal_shutdown_projectSpecific(			void)
{
	return true ;
}


static volatile bool	timerShouldRun	= false ;

bool hal_clock_init_projectSpecific(	void)
{
	portSET_REGISTER_GROUP(CONFIG_PAGE)
	{
		int n ;

		// Start external oscillator: 22.1 MHz crystal
		// system clock is 22.1 / 2 = 11.05 MHz
		// set to 0x67 for running SYSCLK at full speed rather than /2

		OSCXCN = 0x77 ;

		// delay about 1ms

		for( n = 0 ; n < 255 ; n++ ) ;

		// wait for oscillator to stabilize

		while((OSCXCN & 0x80) == 0) ;

		// switch to external oscillator

		CLKSEL |= 0x01 ;

		// Turn off the internal oscillator to save a little power

		OSCICN = 0xC2 ;
	}
	portRESTORE_REGISTER_GROUP()

	return true ;
}


bool hal_clock_shutdown_projectSpecific(	void)
{
	return true ;
}


/* Constants required to setup timer 2 to produce the RTOS tick. */
#define configCPU_CLOCK_HZ				( ( unsigned long ) 11050000 )
#define configTICK_RATE_HZ				( ( unsigned long ) 1000 )
#define portCLOCK_DIVISOR				( ( unsigned long ) 12 )
#define portMAX_TIMER_VALUE				( ( unsigned long ) 0xffff )

bool hal_timer_init_projectSpecific(	void)
{
	/* Constants calculated to give the required timer capture values. */
	const unsigned long ulTicksPerSecond	= configCPU_CLOCK_HZ / portCLOCK_DIVISOR;
	const unsigned long ulCaptureTime		= ulTicksPerSecond / configTICK_RATE_HZ;
	const unsigned long ulCaptureValue		= portMAX_TIMER_VALUE - ulCaptureTime;
	const unsigned char ucLowCaptureByte	= ( unsigned char ) ( ulCaptureValue & ( unsigned long ) 0xff );
	const unsigned char ucHighCaptureByte	= ( unsigned char ) ( ulCaptureValue >> ( unsigned long ) 8 );

	/* NOTE:  This uses a timer only present on 8052 architecture. */

	/* Remember the current SFR page so we can restore it at the end of the function. */

	portSET_REGISTER_GROUP(0)
	{
		/* TMR2CF can be left in its default state. */
		TMR2CF = ( unsigned char ) 0;

		/* Setup the overflow reload value. */
		RCAP2L = ucLowCaptureByte;
		RCAP2H = ucHighCaptureByte;

		/* The initial load is performed manually. */
		TMR2L = ucLowCaptureByte;
		TMR2H = ucHighCaptureByte;

		/* Enable the timer 2 interrupts. */
		IE |= 0x20 ;

		/* Interrupts are disabled when this is called so the timer can be started here. */
		TMR2CN |= 0x04 ;
	}
	portRESTORE_REGISTER_GROUP()

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


#pragma save
#pragma nooverlay
void hal_timer_ISR( void ) __interrupt(5)
{
	taskSwitcherTickHook() ;

	portSET_REGISTER_GROUP(CONFIG_PAGE)
	{
		P5 = 1 ;
		P5 = 0 ;
	}
	portRESTORE_REGISTER_GROUP()

	portCLEAR_INTERRUPT_FLAG() ;
}
#pragma restore


bool hal_timer_shutdown_projectSpecific(	void)
{
	timerShouldRun = false ;

	return true ;
}


bool hal_gpio_init_projectSpecific(		void)
{
	portSET_REGISTER_GROUP(CONFIG_PAGE)
	{
		XBR0	 = 0x00 ;	// Start with a clean slate
		XBR1	 = 0x00 ;
		XBR2	 = 0x00 ;
		XBR3	 = 0x00 ;

		XBR0	|= 0x04 ;	// Route UART0 to P0.0-P0.1

		P0MDOUT |= 0x01 ;	// Set TX0 (P0.0) to push-pull

		P4MDOUT	|= 0xFF ;	// Set LCD drive pins to push-pull
		P5MDOUT	|= 0xFF ;	// Set state machine debug pins to push-pull
		P6MDOUT	|= 0xFF ;	// Set general purpose debug pins to push-pull

		P4		 = 0x00 ;	// Set all debugging pins to low
		P5		 = 0x00 ;
		P6		 = 0x00 ;

		XBR2	|= 0x40 ;	// Enable Crossbar/low ports and turn on global weak pullups
	}
	portRESTORE_REGISTER_GROUP()

	return true ;
}


bool hal_gpio_shutdown_projectSpecific(		void)
{
	return true ;
}




























#define UART_0_RECEIVE_BUFFER_SIZE	10
#define UART_0_TRANSMIT_BUFFER_SIZE	100

static __xdata uint8_t					UART_0_transmitBuffer[	UART_0_TRANSMIT_BUFFER_SIZE + 1] ;
static __xdata uint8_t					UART_0_receiveBuffer[	UART_0_RECEIVE_BUFFER_SIZE + 1] ;
static hal_UART_info_internal_t __xdata	UART_0_struct ;

hal_UART_info_t* UART_0 = &UART_0_struct ;



/* Constants required to setup the serial control register. */
#define ser8_BIT_MODE			( ( unsigned char ) 0x40 )
#define serRX_ENABLE			( ( unsigned char ) 0x10 )

/* Constants to setup the timer used to generate the baud rate. */
#define ser8BIT_WITH_RELOAD		( ( unsigned char ) 0x20 )
#define serSMOD					( ( unsigned char ) 0x10 )


void putchar(char c)
{
	if(c == '\n')
	{
		hal_UART_putchar(&UART_0_struct, '\r') ;
	}

	hal_UART_putchar(&UART_0_struct, c) ;
}

bool hal_UART_init_projectSpecific(								hal_UART_info_t* hal_UART_info)
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

	portSET_REGISTER_GROUP(TIMER01_PAGE)
	{
		/* Set timer one for desired mode of operation. */
		TMOD &= 0x08 ;
		TMOD |= ser8BIT_WITH_RELOAD ;
		SSTA0 |= serSMOD ;
		CKCON |= 0x10 ;

		/* Set the reload and start values for the time. */
		TL1 = ( unsigned char ) 0xB8 ;	// B8 = 9600 BAUD on unmoded eval boards, B2 = 9615 on 24MHz systems
		TH1 = ( unsigned char ) 0xB8 ;

		SCON = ser8_BIT_MODE | serRX_ENABLE ;	/* Setup the control register for standard n, 8, 1 - variable baud rate. */

		TR1 = 1 ;							/* Start the timer. */
	}
	portRESTORE_REGISTER_GROUP()

	portSET_REGISTER_GROUP(UART0_PAGE)
	{
		// 8-bit variable baud rate; 9th bit ignored; RX enabled, clear all flags

		SCON0 = 0x52 ;

		// Clear all flags; enable baud rate, doubler (not relevant for these
		// timers); Use Timer1 as RX and TX baud rate source

		SSTA0 = 0x10 ;
	}
	portRESTORE_REGISTER_GROUP()

	return true ;
}

// MUST NOT TAKE LONGER THAN 750 uS TO EXECUTE EACH ITERATION

void hal_UART_core_projectSpecific(								hal_UART_info_t* hal_UART_info)
{
	(void)hal_UART_info ;
}


bool hal_UART_isTransmitterReady_projectSpecific(				hal_UART_info_t* hal_UART_info)
{
	hal_UART_info_internal_t*	UART_internals = (hal_UART_info_internal_t*)hal_UART_info ;
	bool						returnValue ;

	if(UART_internals->atLeastOneCharacterHasBeenSent)
	{
		returnValue = (TI0 == 1) ;
	}
	else
	{
		returnValue = true ;
	}

	return returnValue ;
}


bool hal_UART_sendchar_projectSpecific(							hal_UART_info_t* hal_UART_info, uint8_t charToSend)
{
	hal_UART_info_internal_t*	UART_internals = (hal_UART_info_internal_t*)hal_UART_info ;

	portSET_REGISTER_GROUP(UART0_PAGE)
	{
		SBUF0 = charToSend ;
	}
	portRESTORE_REGISTER_GROUP()

	UART_internals->atLeastOneCharacterHasBeenSent = true ;

	return true ;
}


bool	hal_UART_hasCharBeenSent_projectSpecific(				hal_UART_info_t* hal_UART_info)
{
	hal_UART_info_internal_t*	UART_internals = (hal_UART_info_internal_t*)hal_UART_info ;
	bool						value ;

	portSET_REGISTER_GROUP(UART0_PAGE)
	{
		value = TI0 ;
	}
	portRESTORE_REGISTER_GROUP()

	return UART_internals->atLeastOneCharacterHasBeenSent ? value : false ;
}


void hal_UART_clearSentFlag_projectSpecific(					hal_UART_info_t* hal_UART_info)
{
	hal_UART_info_internal_t*	UART_internals = (hal_UART_info_internal_t*)hal_UART_info ;

	UART_internals->atLeastOneCharacterHasBeenSent = false ;

	portSET_REGISTER_GROUP(UART0_PAGE)
	{
		TI0 = 0 ;
	}
	portRESTORE_REGISTER_GROUP()
}


bool hal_UART_isReceiveReady_projectSpecific(					hal_UART_info_t* hal_UART_info)
{
	uint8_t	value ;

	(void)hal_UART_info ;

	portSET_REGISTER_GROUP(UART0_PAGE)
	{
		value = RI0 ;
	}
	portRESTORE_REGISTER_GROUP()

	return value ;
}


uint8_t hal_UART_getchar_projectSpecific(						hal_UART_info_t* hal_UART_info)
{
	uint8_t	value ;

	(void)hal_UART_info ;

	portSET_REGISTER_GROUP(UART0_PAGE)
	{
		value = SBUF0 ;
	}
	portRESTORE_REGISTER_GROUP()

	return value ;
}


void hal_UART_clearReceivedFlag_projectSpecific(				hal_UART_info_t* hal_UART_info)
{
	(void)hal_UART_info ;

	portSET_REGISTER_GROUP(UART0_PAGE)
	{
		RI0 = 0 ;
	}
	portRESTORE_REGISTER_GROUP()
}


void hal_UART_shutdown_projectSpecific(							hal_UART_info_t* hal_UART_info)
{
	(void)hal_UART_info ;
}


