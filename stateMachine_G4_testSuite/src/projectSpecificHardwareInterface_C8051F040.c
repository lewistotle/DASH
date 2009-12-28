#include "config.h"
#include "gpio.h"
#include "ioMapping.h"
#include "HardwareAbstractionLayer.h"

#include "task_UART.h"

#define FIFTY_PERCENT_DUTY_CYCLE	((uint16_t)(256.0 * 0.50))

/*
 * projectSpecificHardwareInterface.c
 *
 *  Created on: Feb 27, 2009
 *      Author: John Lewis
 */

void gpio_init_projectSpecific(	void)
{
	char SFRPAGE_SAVE ;

	SFRPAGE_SAVE = SFRPAGE ;

	SFRPAGE	 = SPI0_PAGE ;
		SPI0CN	 = 0x00 ;	// Set the SPI module into 3 pin mode so NSS doesn't get assigned to a pin in the crossbar setup below

	SFRPAGE	 = CONFIG_PAGE ;
		XBR0	 = 0x00 ;	// Start with a clean slate
		XBR1	 = 0x00 ;
		XBR2	 = 0x00 ;
		XBR3	 = 0x00 ;

		XBR0	|= 0x04 ;	// Route UART0 to P0.0-P0.1
		XBR0	|= 0x02 ;	// Route SPI0 to P0.2-P0.4
		XBR0	|= 0x01 ;	// Route SMB0 to P0.5-P0.6
		XBR2	|= 0x04 ;	// Route UART1 to P0.7-P1.0
		XBR0	|= 0x30 ;	// Route CEXn to P1.1-P1.6
		XBR0	|= 0x80 ;	// Route CP0 to P1.7
		XBR3	|= 0x08 ;	// Route CP2 to P2.0
		XBR1	|= 0x04 ;	// Route INT0# to P2.1
		XBR1	|= 0x20 ;	// Route T2 from P2.2
		XBR3	|= 0x01 ;	// Route T3 to P2.3

		P0MDOUT |= 0x01 ;	// Set TX0 (P0.0) to push-pull

		P1MDOUT	|= 0x02 ;	// Set CEX0 (P1.1) to push-pull
		P1MDOUT	|= 0x04 ;	// Set CEX1 (P1.2) to push-pull
		P1MDOUT	|= 0x08 ;	// Set CEX2 (P1.3) to push-pull
		P1MDOUT	|= 0x10 ;	// Set CEX3 (P1.4) to push-pull
		P1MDOUT	|= 0x20 ;	// Set CEX4 (P1.5) to push-pull
		P1MDOUT |= 0x40 ;	// Set CEX5 (P1.6) to push-pull

		P1MDOUT |= 0x80 ;	// Set TX1 (P1.7) to push-pull
		P2MDOUT	&= ~0x02 ;	// Set INT0# (P2.1) to be a digital input
		P2MDOUT	&= ~0x04 ;	// Set T2 (P2.2) to be a digital input
		P2MDOUT	|= 0x08 ;	// Set P2.3 to be the Timer3 output pin

		P3MDIN	 = 0x00 ;	// Configure as analog inputs. This forces the weak pullup for these pins to be disconnected
		P3MDOUT	 = 0x00 ;	// Force the output driver for these pins to open drain output mode
		P3		 = 0xFF ;	// Force the input driver for these pins to high impedance

		XBR3	|= 0x80 ;	// Configure CAN TX pin (CTX) as push-pull digital output

		P4MDOUT	|= 0xFF ;	// Set LCD drive pins to push-pull
		P5MDOUT	|= 0xFF ;	// Set state machine debug pins to push-pull
		P6MDOUT	|= 0xFF ;	// Set general purpose debug pins to push-pull

		P4		 = 0x00 ;	// Set all debugging pins to low
		P5		 = 0x00 ;
		P6		 = 0x00 ;

		P2MDIN	&= 0x0F ;	// set comparator analog inputs up as per Section 17.1.5 of the C8050F040 manual
		P2MDOUT	&= 0x0F ;
		P2		|= 0xF0 ;

//		gpio_setToOutput(ioMapping_POWER_ONn) ;
//		gpio_setToOutput(ioMapping_BOOTSTRAP_SHUTDOWNn) ;

		XBR2	|= 0x40 ;	// Enable Crossbar/low ports and turn on global weak pullups
	SFRPAGE	 = SFRPAGE_SAVE ;
}


void pwm_init_projectSpecific(								unsigned char channelNumber)
{
	// This function configures the PCA time base, and sets up 8-bit PWM output
	// mode for Module 0 (CEX0 pin).
	//
	// The frequency of the PWM signal generated at the CEX0 pin is equal to the
	// PCA main timebase frequency divided by 256.
	//
	// The PCA time base in this example is configured to use SYSCLK, and SYSCLK
	// is set up to use the internal oscillator running at 24.5 MHz.  Therefore,
	// the frequency of the PWM signal will be 24.5 MHz / 256 = 95.7 kHz.
	// Using different PCA clock sources or a different processor clock will
	// result in a different frequency for the PWM signal.
	//
	//    -------------------------------------------------------------------------
	//    How "8-Bit PWM Mode" Works:
	//
	//       The PCA's 8-bit PWM Mode works by setting an output pin low every
	//    time the main PCA counter low byte (PCA0L) overflows, and then setting
	//    the pin high whenever a specific match condition is met.
	//
	//    Upon a PCA0L overflow (PCA0L incrementing from 0xFF to 0x00), two things
	//    happen:
	//
	//    1) The CEXn pin will be set low.
	//    2) The contents of the PCA0CPHn register for the module are copied into
	//       the PCA0CPLn register for the module.
	//
	//    When the PCA0L register increments and matches the PCA0CPLn register for
	//    the selected module, the CEXn pin will be set high, except when the
	//    ECOMn bit in PCA0CPMn is cleared to '0'.  By varying the value of the
	//    PCA0CPHn register, the duty cycle of the waveform can also be varied.
	//
	//    When ECOMn = '1', the duty cycle of the PWM waveform is:
	//
	//       8-bit PWM Duty Cycle = (256 - PCA0CPLn) / 256
	//
	//    To set the duty cycle to 100%, a value of 0x00 should be loaded into the
	//    PCA0CPHn register for the module Not surebeing used (with ECOMn set to '1').
	//    When the value of PCA0CPLn is equal to 0x00, the pin will never be
	//    set low.
	//
	//    To set the duty cycle to 0%, the ECOMn bit in the PCA0CPMn register
	//    should be cleared to 0.  This prevents the PCA0CPLn match from occuring,
	//    which results in the pin never being set high.
	//    -------------------------------------------------------------------------
	//

		static bool	initialized ;
		char		SFRPAGE_save = SFRPAGE ;	// Save current SFR Page

		SFRPAGE = PCA0_PAGE ;

		if(!initialized)
		{
			PCA0CN = 0x00 ;				// Stop counter; clear all flags
			PCA0MD = 0x08 ;				// Use SYSCLK as time base

			PCA0CPM0 = 0x00 ;			// Module 0 = Off
			PCA0CPH0 = 0x00 ;			// Configure initial PWM duty cycle = 100%. This will result in a continuously high output which, since it's active low, will disable any output.

			PCA0CPM0 = 0x00 ;			// Module 1 = Off
			PCA0CPH1 = 0x00 ;			// Configure initial PWM duty cycle = 100%. This will result in a continuously high output which, since it's active low, will disable any output.

			PCA0CPM0 = 0x00 ;			// Module 2 = Off
			PCA0CPH2 = 0x00 ;			// Configure initial PWM duty cycle = 100%. This will result in a continuously high output which, since it's active low, will disable any output.

			PCA0CPM0 = 0x00 ;			// Module 3 = Off
			PCA0CPH3 = 0x00 ;			// Configure initial PWM duty cycle = 100%. This will result in a continuously high output which, since it's active low, will disable any output.

			PCA0CPM0 = 0x00 ;			// Module 4 = Off
			PCA0CPH4 = 0x00 ;			// Configure initial PWM duty cycle = 100%. This will result in a continuously high output which, since it's active low, will disable any output.

			PCA0CPM0 = 0x00 ;			// Module 5 = Off
			PCA0CPH5 = 0x00 ;			// Configure initial PWM duty cycle = 100%. This will result in a continuously high output which, since it's active low, will disable any output.
		}

		// If this is the 50% duty cycle fixed channel, go ahead and get it started
		// All other channels are initialized when their duty cycle changes. That
		// lets me properly turn them off if 0% is specified.

		if(channelNumber == ioMapping_PWM_TO_TICK_SYNCHRONIZER_CHANNEL)
		{
			// Set one channel at a constant 50% duty cycle. This will be fed into Timer2
			// so that I can keep all the state transitions, etc., that occur on a tick
			// boundary synchronized with the PWM output. This makes debugging a little easier

			PWM_B50_MODE		= 0x42 ;						// Module 1 = 8-bit PWM mode
			PWM_B50_HIGH_BYTE	= FIFTY_PERCENT_DUTY_CYCLE ;	// Configure initial PWM duty cycle = 50%
		}

		if(!initialized)
		{
			initialized = true ;

			CR = 1 ;					// Start PCA counter
		}

		SFRPAGE = SFRPAGE_save ;
}


void pwm_incrementDutyCycle_projectSpecific(				unsigned char channelNumber)
{
	(void)channelNumber ;	// unused at this time
}


void pwm_decrementDutyCycle_projectSpecific(				unsigned char channelNumber)
{
	(void)channelNumber ;	// unused at this time
}


uint8_t pwm_getDutyCycle_projectSpecific(					unsigned char channelNumber)
{
	(void)channelNumber ;	// unused at this time

	return 0 ;
}


void pwm_setDutyCycle_projectSpecific(						unsigned char channelNumber, uint8_t newDutyCycle)
{
	(void)channelNumber ;	// unused at this time
	(void)newDutyCycle ;	// unused at this time
}


void pwm_adjustDutyCycle_projectSpecific(					unsigned char channelNumber, int8_t dutyCycleAdjustment)
{
	(void)channelNumber ;		// unused at this time
	(void)dutyCycleAdjustment ;	// unused at this time
}


void pwm_setDutyCycleAsPercentage_projectSpecific(			unsigned char channelNumber, unsigned char newDutyCycle)
{
	(void)channelNumber ;		// unused at this time
	(void)newDutyCycle ;		// unused at this time
}


unsigned char pwm_getDutyCycleAsPercentage_projectSpecific(	unsigned char channelNumber)
{
	unsigned short	currentPercentage	= 0 ;
	unsigned short	divisor				= (((unsigned short)255 * (unsigned short)255) / (unsigned short)100) ;

	(void)channelNumber ;		// unused at this time

	currentPercentage *= 255 ;
	currentPercentage += (divisor / 2) ; // to round up to the next percentage
	currentPercentage /= divisor ;

	return (unsigned char)0 ;//min(currentPercentage, 100) ;
}


/* Constants required to setup the serial control register. */
#define ser8_BIT_MODE			( ( unsigned char ) 0x40 )
#define serRX_ENABLE			( ( unsigned char ) 0x10 )

/* Constants to setup the timer used to generate the baud rate. */
#define serCLOCK_DIV_48			( ( unsigned char ) 0x03 )
#define serUSE_PRESCALED_CLOCK	( ( unsigned char ) 0x10 )
#define ser8BIT_WITH_RELOAD		( ( unsigned char ) 0x20 )
#define serSMOD					( ( unsigned char ) 0x10 )

#define BAUDRATE		115200			// Baud rate of UART in bps
#define SYSTEMCLOCK		22118400L		// SYSTEMCLOCK = System clock frequency in Hz


#define NUMBER_OF_UARTS			1
#define TRANSMIT_BUFFER_SIZE	1100
#define RECEIVE_BUFFER_SIZE		10

char	UARTtempBuffer[TRANSMIT_BUFFER_SIZE] ;

void UART0_Init(void) ;
void UART1_Init(void) ;

typedef struct
{
	uint16_t	Capacity ;
	uint16_t	Front ;
	uint16_t	Rear ;
	uint16_t	Size ;
	unsigned char*	Array ;
} QUEUE_TYPE ;

unsigned char IsEmpty(QUEUE_TYPE* Q)
{
	return Q->Size == 0 ;
}

unsigned char IsFull(QUEUE_TYPE* Q)
{
	return Q->Size == Q->Capacity ;
}

static unsigned short Succ(unsigned short Value, QUEUE_TYPE* Q)
{
	if(++Value == Q->Capacity)
	{
		Value = 0 ;
	}

	return Value ;
}

static unsigned char	transmitBuffer[NUMBER_OF_UARTS][TRANSMIT_BUFFER_SIZE + 1] ;
static unsigned char	receiveBuffer[NUMBER_OF_UARTS][RECEIVE_BUFFER_SIZE + 1] ;

static QUEUE_TYPE		transmitBuffers[NUMBER_OF_UARTS] ;
static QUEUE_TYPE		receiveBuffers[NUMBER_OF_UARTS] ;

static uint8_t			charSent[NUMBER_OF_UARTS] ;
static uint8_t			lineReady[NUMBER_OF_UARTS] ;

#if FreeRTOS_ENABLED
void task_UART(void *pvParameters)
{
	/* The parameters are not used. */
	(void)pvParameters ;

	task_UART_init() ;

	while(1)
	{
		task_UART_core() ;

		vTaskDelay(1000) ;
	}
}
#endif


#ifdef include_task_UART_init
void task_UART_init_projectSpecific(	unsigned char channelNumber)
{
	static bool	timer1initialized = false ;

	QUEUE_TYPE*	Q = &transmitBuffers[channelNumber] ;

	Q->Capacity	= TRANSMIT_BUFFER_SIZE ;
	Q->Size		= 0 ;
	Q->Front	= 1 ;
	Q->Rear		= 0 ;
	Q->Array	= transmitBuffer[0] ;

	Q = &receiveBuffers[channelNumber] ;

	Q->Capacity	= RECEIVE_BUFFER_SIZE ;
	Q->Size		= 0 ;
	Q->Front	= 1 ;
	Q->Rear		= 0 ;
	Q->Array	= receiveBuffer[0] ;

	charSent[channelNumber]		= false ;
	lineReady[channelNumber]	= false ;

	if(!timer1initialized)
	{
		timer1initialized = true ;

		portSET_REGISTER_GROUP(TIMER01_PAGE)
		{
			/* Set timer one for desired mode of operation. */
			TMOD &= 0x08 ;
			TMOD |= ser8BIT_WITH_RELOAD ;
			SSTA0 |= serSMOD ;
			CKCON |= 0x10 ;

			/* Set the reload and start values for the time. */
			TL1 = ( unsigned char ) 0xB2 ;	// B8 = 9600 BAUD on unmoded eval boards, B2 = 9615 on 24MHz systems
			TH1 = ( unsigned char ) 0xB2 ;

			SCON = ser8_BIT_MODE | serRX_ENABLE ;	/* Setup the control register for standard n, 8, 1 - variable baud rate. */

			TR1 = 1 ;							/* Start the timer. */
		}
		portRESTORE_REGISTER_GROUP()
	}

	if(channelNumber == 0)
	{
		UART0_Init() ;
	}
	else if(channelNumber == 1)
	{
		UART1_Init() ;
	}
}
#endif

// MUST NOT TAKE LONGER THAN 750 uS TO EXECUTE EACH ITERATION
static int countdown = 5 ;

#ifdef include_task_UART_core
void task_UART_core_projectSpecific(	unsigned char channelNumber)
{
	if(channelNumber < NUMBER_OF_UARTS)
	{
		portSET_REGISTER_GROUP(UART0_PAGE)
		{
			QUEUE_TYPE*	Q = &receiveBuffers[channelNumber] ;

			if(RI0)
			{
				if(!IsFull(Q))
				{
					char	charReceived = SBUF0 ;

					Q->Size++ ;
					Q->Rear = Succ(Q->Rear, Q) ;
					Q->Array[Q->Rear] = charReceived ;

					if(charReceived == '\n')
					{
						lineReady[channelNumber] = true ;
					}
				}

				RI0 = 0 ;
			}

			Q = &transmitBuffers[channelNumber] ;

			if(charSent[channelNumber] == true)
			{
				charSent[channelNumber] = false ;

				// wait for previous character to finish

				while(TI0 == 0) { /* empty loop */} ;
			}

			if(!IsEmpty(Q))
			{
				unsigned char byteToSend = Q->Array[Q->Front] ;

				Q->Size-- ;
				Q->Front = Succ(Q->Front, Q) ;

				TI0 = 0 ;	// clear it and send the next character

				SBUF0 = byteToSend ;

				charSent[channelNumber] = true ;
			}
		}
		portRESTORE_REGISTER_GROUP()
	}
}
#endif

bool task_UART_putchar_projectSpecific(	unsigned char channelNumber, char charToSend)
{
	task_UART_core(0) ;

	portDISABLE_INTERRUPTS() ;

	if(channelNumber < NUMBER_OF_UARTS)
	{
		QUEUE_TYPE*	Q = &transmitBuffers[channelNumber] ;

		if(!IsFull(Q))
		{
			Q->Size++ ;
			Q->Rear = Succ(Q->Rear, Q) ;
			Q->Array[Q->Rear] = charToSend ;

			portENABLE_INTERRUPTS() ;

			return true ;
		}
	}

	portENABLE_INTERRUPTS() ;

	// If I get here, something didn't work so return failure

	return false ;
}


void task_UART_puts_projectSpecific(	unsigned char channelNumber, const char *buffer)
{
	if(channelNumber < NUMBER_OF_UARTS)
	{
		unsigned char* myBuffer = buffer ;

		while(*myBuffer)
		{
			if((*myBuffer) == '\n')
			{
				if(!task_UART_putchar(channelNumber, '\r'))
				{
					break ;
				}
			}

			if(!task_UART_putchar(channelNumber, *myBuffer++))
			{
				break ;
			}
		}
	}
}


char task_UART_getchar_projectSpecific(	unsigned char channelNumber)
{
	if(channelNumber < NUMBER_OF_UARTS)
	{
		QUEUE_TYPE*	Q = &receiveBuffers[channelNumber] ;

		if(!IsEmpty(Q))
		{
			unsigned char byteReceived = Q->Array[Q->Front] ;

			Q->Size-- ;
			Q->Front = Succ(Q->Front, Q) ;

			return byteReceived ;
		}
	}

	return -1 ;
}


char* task_UART_gets_projectSpecific(	unsigned char channelNumber, char* buffer, unsigned short maxBufferLength)
{
	if(channelNumber < NUMBER_OF_UARTS)
	{
		unsigned short charsReturned = 0 ;

		while(charsReturned < maxBufferLength)
		{
			char latestCharInBuffer = task_UART_getchar(channelNumber) ;

			if(latestCharInBuffer <= 0)	// break on a NULL or a -1
			{
				break ;
			}
			else if(latestCharInBuffer == '\r')	// Skip carriage returns
			{
				continue ;
			}

			buffer[charsReturned] = latestCharInBuffer ;

			charsReturned++ ;
		}
	}

	return 0 ;
}


bool task_UART_isLineReady(	unsigned char channelNumber)
{
	return lineReady[channelNumber] ;
}


void UART0_Init(void)
{
	  char SFRPAGE_SAVE;

	   SFRPAGE_SAVE = SFRPAGE;             // Preserve SFRPAGE

	   SFRPAGE = UART0_PAGE;

	   SCON0 = 0x52;                       // 8-bit variable baud rate;
	                                       // 9th bit ignored; RX enabled
	                                       // clear all flags
	   SSTA0 = 0x10;                       // Clear all flags; enable baud rate
	                                       // doubler (not relevant for these
	                                       // timers);
	                                       // Use Timer1 as RX and TX baud rate
	                                       // source;
	//   ES0 = 1;
	//   IP |= 0x10;
	   SFRPAGE = SFRPAGE_SAVE;
/*
	transmitReadIndex[0]	= 0 ;
	transmitWriteIndex[0]	= 0 ;

	portSET_REGISTER_GROUP(UART0_PAGE)
	{
		SCON0 = 0x52 ;	// 8-bit variable baud rate;
						// 9th bit ignored; RX enabled
						// set the TI0 flag so it looks like a character has been sent.
		SSTA0 = 0x10 ;	// Clear all flags; enable baud rate
						// doubler (not relevant for these timers);
						// Use Timer1 as RX and TX baud rate source;
//		ES0 = 1 ;		// enable the interrupt for this UART
//		IP |= 0x10;
	}
	portRESTORE_REGISTER_GROUP()
*/
}


void UART1_Init(void)
{
	portSET_REGISTER_GROUP(UART1_PAGE)
	{
		SCON1 = 0x10 ;	// 8-bit variable baud rate;
						// 9th bit ignored; RX enabled
						// clear all flags
//		ES1 = 1 ;		// enable the interrupt for this UART
//		IP |= 0x10;
	}
	portRESTORE_REGISTER_GROUP()
}


void putchar(char c)
{
	if(c == '\n')
	{
		task_UART_putchar(0, '\r') ;
	}

	task_UART_putchar(0, c) ;
}






#define configCPU_CLOCK_HZ			( ( unsigned long ) 11050000 )
#define configTICK_RATE_HZ			( ( unsigned long ) 1000 )
#define configCLOCK_SPEED_FINE_TUNE ( ( unsigned long ) 100 )
#define configUSE_16_BIT_TICKS		1

/* Constants required to setup timer 2 to produce the RTOS tick. */
#define portCLOCK_DIVISOR				( ( unsigned long ) 12 )
#define portMAX_TIMER_VALUE				( ( unsigned long ) 0xffff )
#define portENABLE_TIMER				( ( unsigned char ) 0x06 )
#define portTIMER_2_INTERRUPT_ENABLE	( ( unsigned char ) 0x20 )

#define portTICK_RATE_MS			( ( unsigned long ) 1000 / configTICK_RATE_HZ )


static void prvSetupSystemClock( void )
{
	int n ;							// local variable used in delay FOR loop.
	SFRPAGE = CONFIG_PAGE ;			// switch to config page to config oscillator

	OSCXCN = 0x77 ;					// start external oscillator; 24 MHz Crystal
									// system clock is 24 MHz / 2 = 12 MHz
									// set to 0x67 for running SYSCLK @ full speed rather than / 2

	for( n = 0 ; n < 255 ; n++ ) ;	// delay about 1ms
	while((OSCXCN & 0x80) == 0) ;	// wait for oscillator to stabilize

	CLKSEL |= 0x01 ;				// switch to external oscillator

	OSCICN = 0xC2 ;					// Turn off the internal oscillator to save a little power
}


static void prvSetupTimerInterrupt( void )
{
unsigned char ucOriginalSFRPage;

/* Constants calculated to give the required timer capture values. */
const unsigned long ulTicksPerSecond = configCPU_CLOCK_HZ / portCLOCK_DIVISOR;
const unsigned long ulCaptureTime = ulTicksPerSecond / configTICK_RATE_HZ;
const unsigned long ulCaptureValue = portMAX_TIMER_VALUE - ulCaptureTime;
const unsigned char ucLowCaptureByte = ( unsigned char ) 0xD1 ;//( ulCaptureValue & ( unsigned long ) 0xff );
const unsigned char ucHighCaptureByte = ( unsigned char ) 0xFF ;//( ulCaptureValue >> ( unsigned long ) 8 );

	/* NOTE:  This uses a timer only present on 8052 architecture. */

	/* Remember the current SFR page so we can restore it at the end of the function. */
	ucOriginalSFRPage = SFRPAGE;
	SFRPAGE = 0;

	/* TMR2CF can be left in its default state. */
	TMR2CF = ( unsigned char ) 0;

	/* Setup the overflow reload value. */
	RCAP2L = ucLowCaptureByte;
	RCAP2H = ucHighCaptureByte;

	/* The initial load is performed manually. */
	TMR2L = ucLowCaptureByte;
	TMR2H = ucHighCaptureByte;

	/* Enable the timer 2 interrupts. */
	IE |= portTIMER_2_INTERRUPT_ENABLE;

	/* Interrupts are disabled when this is called so the timer can be started here. */
	TMR2CN = portENABLE_TIMER ;

#if 1
	SFRPAGE	= 1 ;
	TMR3CF	= 0x0A ;

	RCAP3L	= 0xCE ;	// 120kHz on boost boards
	RCAP3H	= 0xFF ;	// 120kHz on boost boards

	TMR3L	= 0xF0 ;
	TMR3H	= 0xFF ;
	TMR3CN	= 0x04 ;
#endif

	/* Restore the original SFR page. */
	SFRPAGE = ucOriginalSFRPage;
}


/*-----------------------------------------------------------*/

unsigned short*	tickCounterToIncrement[configNUMBER_OF_TICK_COUNTERS] ;

void addTickCounter(							unsigned short* pointerToIncrement)
{
	unsigned char i ;

	for( i = 0 ; i < configNUMBER_OF_TICK_COUNTERS ; i++ )
	{
		// If this pointer has already been added, bail now

		if(tickCounterToIncrement[i] == pointerToIncrement)
		{
			break ;
		}

		if(tickCounterToIncrement[i] == 0)
		{
			tickCounterToIncrement[i] = pointerToIncrement ;

			break ;
		}
	}
}


////////////////////////////////////////////////////////////////////////////////
//Interrupt Service Routines
////////////////////////////////////////////////////////////////////////////////
void vTimer2ISR( void ) interrupt 5
{
	unsigned char i ;

	for( i = 0 ; i < configNUMBER_OF_TICK_COUNTERS ; i++ )
	{
		if(tickCounterToIncrement[i])
		{
			*tickCounterToIncrement[i] += 1 ;
		}
	}

	taskSwitcherTickHook() ;

	portCLEAR_INTERRUPT_FLAG() ;
}


