#ifndef _HAL_CONFIG_H_
#define _HAL_CONFIG_H_

#define v01					1

#ifndef true
	#define true	(1)
#endif

#ifndef false
	#define false	(0)
#endif

#define PRODUCT_VERSION			v01

#define FreeRTOS_ENABLED		false

#define configDEBUG_ENABLED		false

#define configUART_ENABLED													true
#define configNUMBER_OF_UARTS												(1)
#define configUART_CHANNEL_STDOUT											(0)
#if configDEBUG_ENABLED == true
	#define DEBUG_OUTPUT_INIT()													task_UART_init(configUART_CHANNEL_STDOUT)
	#define DEBUG_PUTS(a)														task_UART_puts(configUART_CHANNEL_STDOUT, a)
#else
	#define DEBUG_OUTPUT_INIT()
	#define DEBUG_PUTS(a)
#endif

#define configMINIMUM_POS12_VOLTAGE_ALLOWED_FOR_BOOTSTRAP_DISABLE_mV		(11000)
#define configMINIMUM_INPUT_VOLTAGE_ALLOWED_FOR_SYSTEM_POWER_UP_mV			(20000)
#define configMPPT_INITIAL_SCAN_CUTOFF_VOLTAGE_mV							(19000)
#define configMPPT_CONSTANT_VOLTAGE_MINIMUM_VOLTAGE_mV						(21000)
#define configMINIMUM_INPUT_VOLTAGE_ALLOWED_HYSTERESIS_mV					(2000)

#define configOVERTEMP_PROTECTION_ENABLED									true

#if configOVERTEMP_PROTECTION_ENABLED
	#define configMAXIMUM_OPERATING_TEMP_millidegreesC							(100000L)
	#define configRESUME_OPERATION_AFTER_OVERTEMP_millidegreesC					(90000U)
#endif

#define configTICKS_BETWEEN_IOUT_OFFSET_NULL_CALIBRATION_STEPS_ms			(5)
#define configOFFSET_NULL_CALIBRATION_CUTOFF_mA								(10)

#define configNUMBER_OF_TICK_COUNTERS										10

#define configSTATE_MACHINE_ACTIONS_ARE_IMMEDIATE_BY_DEFAULT				false

#define configSYSTEM_STARTUP_DELAY											(100)

#define configSYSTEM_WATCHDOG_TIMER_ENABLED									true

#define configSYSTEM_USE_FASTER_BUT_LESS_ELEGANT_EMERGENCY_SHUTDOWN			true

#define configEIQCOMM_PACKET_TIMEOUT_PERIOD_ms								(200)

#define configEIQCOMM_HEARTBEAT_TIME_BEFORE_SHUTDOWN_ms						(10000)
#define configEIQCOMM_ENABLE_SPECIFICALLY_ADDRESS_MESSAGE_HEARTBEAT			true
#if configEIQCOMM_ENABLE_SPECIFICALLY_ADDRESS_MESSAGE_HEARTBEAT
	#define configEIQCOMM_DELAY_BEFORE_NO_ADDRESS_MESSAGE_TRIGGERS_RESET_ms		(60000U)
	#define configEIQCOMM_MINUTES_BEFORE_NO_ADDRESS_MESSAGE_TRIGGERS_RESET		(5)
#endif

#define configEIQCOMM_POST_SHUTDOWN_DELAY_BEFORE_RESPONSE_SEND_ms			(100)

#define configEIQCOMM_MAX_TELEMETRY_GROUP_SIZE								(25)

#define configMPPT_IGNORE_OVERCURRENT_INTERRUPTS_DURATION_ms				(20)

#define configMPPT_CONSTANT_VOLTAGE_MAX_DUTY_CYCLE							(300)

/*******************************************************************************************/
/*                                       PWM config                                        */
/*******************************************************************************************/

#define config_50_VOLTS_mV													(50000)
#define config_60_VOLTS_mV													(60000)
#define config_70_VOLTS_mV													(70000)
#define config_80_VOLTS_mV													(80000)
#define config_90_VOLTS_mV													(90000)

#define configPWM_MAXIMUM_POSSIBLE_DUTY_CYCLE_VALUE							(255)

#define configPWM_MINIMUM_DUTY_CYCLE_VALUE_BELOW_50_VOLTS_SIDE_A			(uint8_t)(0.05  * (float)configPWM_MAXIMUM_POSSIBLE_DUTY_CYCLE_VALUE)
#define configPWM_MINIMUM_DUTY_CYCLE_VALUE_BELOW_60_VOLTS_SIDE_A			(uint8_t)(0.04  * (float)configPWM_MAXIMUM_POSSIBLE_DUTY_CYCLE_VALUE)
#define configPWM_MINIMUM_DUTY_CYCLE_VALUE_BELOW_70_VOLTS_SIDE_A			(uint8_t)(0.03  * (float)configPWM_MAXIMUM_POSSIBLE_DUTY_CYCLE_VALUE)
#define configPWM_MINIMUM_DUTY_CYCLE_VALUE_BELOW_80_VOLTS_SIDE_A			(uint8_t)(0.02  * (float)configPWM_MAXIMUM_POSSIBLE_DUTY_CYCLE_VALUE)
#define configPWM_MINIMUM_DUTY_CYCLE_VALUE_BELOW_90_VOLTS_SIDE_A			(uint8_t)(0.01  * (float)configPWM_MAXIMUM_POSSIBLE_DUTY_CYCLE_VALUE)
#define configPWM_MINIMUM_DUTY_CYCLE_VALUE_ABOVE_90_VOLTS_SIDE_A			(uint8_t)(0.005 * (float)configPWM_MAXIMUM_POSSIBLE_DUTY_CYCLE_VALUE)

#define configPWM_MINIMUM_DUTY_CYCLE_VALUE_BELOW_50_VOLTS_SIDE_B			(uint8_t)(0.05  * (float)configPWM_MAXIMUM_POSSIBLE_DUTY_CYCLE_VALUE)
#define configPWM_MINIMUM_DUTY_CYCLE_VALUE_BELOW_60_VOLTS_SIDE_B			(uint8_t)(0.04  * (float)configPWM_MAXIMUM_POSSIBLE_DUTY_CYCLE_VALUE)
#define configPWM_MINIMUM_DUTY_CYCLE_VALUE_BELOW_70_VOLTS_SIDE_B			(uint8_t)(0.03  * (float)configPWM_MAXIMUM_POSSIBLE_DUTY_CYCLE_VALUE)
#define configPWM_MINIMUM_DUTY_CYCLE_VALUE_BELOW_80_VOLTS_SIDE_B			(uint8_t)(0.02  * (float)configPWM_MAXIMUM_POSSIBLE_DUTY_CYCLE_VALUE)
#define configPWM_MINIMUM_DUTY_CYCLE_VALUE_BELOW_90_VOLTS_SIDE_B			(uint8_t)(0.01  * (float)configPWM_MAXIMUM_POSSIBLE_DUTY_CYCLE_VALUE)
#define configPWM_MINIMUM_DUTY_CYCLE_VALUE_ABOVE_90_VOLTS_SIDE_B			(uint8_t)(0.005 * (float)configPWM_MAXIMUM_POSSIBLE_DUTY_CYCLE_VALUE)

#define configPWM_MAXIMUM_DUTY_CYCLE_VALUE_SIDE_A							(uint8_t)(0.70 * (float)configPWM_MAXIMUM_POSSIBLE_DUTY_CYCLE_VALUE)
#define configPWM_MAXIMUM_DUTY_CYCLE_VALUE_SIDE_B							(uint8_t)(0.47 * (float)configPWM_MAXIMUM_POSSIBLE_DUTY_CYCLE_VALUE)


/*******************************************************************************************/
/*                                       MPPT config                                       */
/*******************************************************************************************/

#define configMPPT_AUTO_START_VIA_JUMPER_ENABLE									true
#if configMPPT_AUTO_START_VIA_JUMPER_ENABLE
	#define configMPPT_FORCE_UNCONDITIONAL_AUTO_START								true
	#define configMPPT_FORCE_UNCONDITIONAL_AUTO_START_INTO_FD_MODE					true

	#if configMPPT_FORCE_UNCONDITIONAL_AUTO_START_INTO_FD_MODE
		#define configMPPT_USE_HV_ADC_INPUT_FOR_DUTY_CYCLE							true
	#endif
#endif
#define configMPPT_OUTPUT_CURRENT_OFFSET_NULLING_ENABLED						false
#define configMPPT_INITIAL_PEAK_SCAN_ENABLED									true
#define configMPPT_PEAK_SCAN_JUMPING_ENABLED									false

#define configMPPT_STEP_SIZE_THRESHHOLD_FOR_DELAYED_MOVEMENT					(10)
#define configMPPT_TIME_BETWEEN_DUTY_CYCLE_CHANGES_ms							(100)

#if configMPPT_USE_FIXED_DUTY_CYCLE
	#define configMPPT_POST_TURN_ON_COMMAND_RECEIVED_DELAY_TIME_ms				(1000)
#else
	#define configMPPT_POST_TURN_ON_COMMAND_RECEIVED_DELAY_TIME_ms				(1000)
#endif

#if ! configMPPT_INITIAL_PEAK_SCAN_ENABLED
	#define configMPPT_INITIAL_MPPT_STARTING_DUTY_CYCLE_PERCENTAGE				(25)
#endif

#if configMPPT_FIXED_PERIOD_ZERO_TO_MAX_SWEEP
	#define configMPPT_TIME_PERIOD_BETWEEN_INCREMENTS_ms						(2000)
#else
	#if configMPPT_INITIAL_PEAK_SCAN_ENABLED
		#define configMPPT_INITIAL_PEAK_SCAN_STEP_TIME_ms							(100)
		#define configMPPT_THIN_FILM_DETECTION_THRESHHOLD_VOLTAGE_mV				(45000)
		#define configMPPT_THIN_FILM_INITIAL_PEAK_SCAN_STEP_TIME_ms					(100)
		#define configMPPT_POST_INITIAL_SCAN_DELAY_TIME_ms							(20000)

		#define configMPPT_NUMBER_OF_TRACKING_WINDOW_EDGE_HITS_BEFORE_SHIFTING_WINDOW	(100)
		#define configMPPT_INPUT_VOLTAGE_TRACKING_WINDOW_SHIFT_AMOUNT_mV				(300)
		#define configMPPT_ITERATIONS_BETWEEN_EDGE_HIT_COUNT_DECREMENT					(50)
	#endif

	#define configMPPT_INPUT_POWER_TRACKING_RESPONSE_TIME_ms					(10)
	#define configMPPT_CONSTANT_VOLTAGE_TRACKING_RESPONSE_TIME_ms				(50)
	#define configMPPT_INPUT_VOLTAGE_TRACKING_WINDOW_NEGATIVE_WIDTH_mV			(500)
	#define configMPPT_INPUT_VOLTAGE_TRACKING_WINDOW_POSITIVE_WIDTH_mV			(500)
	#define configMPPT_INPUT_POWER_TRACKING_NEGATIVE_HYSTERESIS_mW				(50)
	#define configMPPT_INPUT_POWER_TRACKING_POSITIVE_HYSTERESIS_mW				(50)
	#define	configMPPT_VOLTAGE_TRACKING_ENABLED									true
	#define	configMPPT_CURRENT_TRACKING_ENABLED									true
#endif

/*******************************************************************************************/
/*                                     telemetry config                                    */
/*******************************************************************************************/

#define configTELEMETRY_INTERPACKET_DELAY_ms								(5)

/*******************************************************************************************/
/*                                   state machine config                                  */
/*******************************************************************************************/

#define	configSTATE_MACHINE_DEBUGGING_ENABLED								false
#define configSTATE_MACHINE_ACTIONS_ARE_EXCLUSIVE_BY_DEFAULT				true
#define configSTATE_MACHINE_TIMEOUTS_ENABLED								true
#define configSTATE_MACHINE_USE_SHORT_FOR_MILLISECOND_TIMER					true
//#define configSTATE_MACHINE_USE_LONG_FOR_MILLISECOND_TIMER					false

#if 1
	#define configSTATE_MACHINE_TIME_IN_STATE_VARIABLE_BASED				true
	#define configSTATE_MACHINE_TIME_IN_STATE_VARIABLE_REGISTRY_FUNCTION	addTickCounter
#else
	#define configSTATE_MACHINE_TIME_IN_STATE_CALLBACK_BASED				true
	typedef void(*callbackFunctionType)(void) ;
	void registerTickCallback(callbackFunctionType callbackFunction) ;
	#define configSTATE_MACHINE_TIME_IN_STATE_CALLBACK_REGISTRY_FUNCTION	registerTickCallback
#endif


#define configSTATE_MACHINE_FORCE_IMMEDIATE_CHANGES_TO_QUEUED				(true)


#define configMPPT_STATE_MACHINE_ID											(0)
#define configTELEMETRY_STATE_MACHINE_ID									(1)

#define configLCD_ENABLED


//#define F_CPU 24500000UL



//#include "../Common/CANconfig.h"


#endif /* _HAL_CONFIG_H_ */
