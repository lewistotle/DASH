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




#define config_CalcEVENT_QUEUE_DEPTH		16

#define config_tbEVENT_QUEUE_DEPTH			16
#define config_tbFINE_TICKS_PER_SECOND		10
#define config_tbINIT_TIMEOUT				30

#define config_toastEVENT_QUEUE_DEPTH		8


#define configHSM_DEBUGGING_ENABLED					true

#define configMAXIMUM_NUMBER_OF_STATE_MACHINES		5
#define configMAXIMUM_NUMBER_OF_TIMEOUTS			50
#define configMAXIMUM_NUMBER_OF_WATCH_VARIABLES		50
#define configMAXIMUM_STATE_HIERARCHY_DEPTH			16

#define configPRINT_RTC_EXECUTION_TIME		false

#define configMICROSECONDS_PER_TICK			(1000)

#endif /* _HAL_CONFIG_H_ */
