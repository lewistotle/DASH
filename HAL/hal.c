
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

#include "hal.h"

bool hal_init(				void)
{
	return hal_init_projectSpecific() ;
}


bool hal_shutdown(			void)
{
	return hal_shutdown_projectSpecific() ;
}


bool hal_clock_init(		void)
{
	return hal_clock_init_projectSpecific() ;
}


bool hal_clock_shutdown(	void)
{
	return hal_clock_shutdown_projectSpecific() ;
}


bool hal_timer_init(		void)
{
	return hal_timer_init_projectSpecific() ;
}


bool hal_timer_is_time_for_tick_processing(	void)
{
	return hal_timer_is_time_for_tick_processing_projectSpecific() ;
}


void hal_timer_tick_procesed(				void)
{
	hal_timer_tick_procesed_projectSpecific() ;
}


bool hal_timer_shutdown(	void)
{
	return hal_timer_shutdown_projectSpecific() ;
}


bool hal_gpio_init(			void)
{
	return hal_gpio_init_projectSpecific() ;
}


bool hal_gpio_shutdown(		void)
{
	return hal_gpio_shutdown_projectSpecific() ;
}
