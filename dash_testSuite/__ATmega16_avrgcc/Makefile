CC				= avr-gcc
CFLAGS			= -I. -I../../ -I../../HAL -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -mmcu=atmega16 -D__AVR__ -D__ATmega16__ -DF_CPU=1000000UL -MMD -MP -MF"$(@:%.d=%.d)" -MT"$(@:%.d=%.d)" -c 
OUT_DIR			= .
OBJS			= main.d projectSpecificHardwareInterface_ATmega16.d sm_test_calculator.d sm_test_fourLevelTest.d sm_test_timeBomb.d sm_test_toaster.d dash.d dash_eventQueue.d hal_UART.d hal.d
OUT_OBJS		= $(addprefix $(OUT_DIR)/,$(OBJS))


dash_atmega16	: $(OUT_OBJS)
					@echo 'Building target: $@'
					@echo 'Invoking: AVR C Linker'
					avr-gcc -Wl,-Map,dash_atmega16_map.txt -mmcu=atmega16 -o"dash_atmega16.elf" $(OBJS) $(USER_OBJS) $(LIBS) -lm
					@echo 'Finished building target: $@'
					@echo ' '

$(OUT_DIR)/hal.d : ../../HAL/hal.c ../../HAL/*.h
					$(CC) $(CFLAGS) -c $< -o $@

$(OUT_DIR)/hal_UART.d : ../../HAL/hal_UART.c ../../HAL/*.h
					$(CC) $(CFLAGS) -c $< -o $@

$(OUT_DIR)/dash.d : ../../dash.c ../../HAL/*.h 
					$(CC) $(CFLAGS) -c $< -o $@

$(OUT_DIR)/dash_eventQueue.d : ../../dash_eventQueue.c ../../HAL/*.h
					$(CC) $(CFLAGS) -c $< -o $@

$(OUT_DIR)/%.d	: ../%.c ../../HAL/*.h
					avr-gcc -I. -I../../ -I../../HAL -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -mmcu=atmega16 -D__AVR__ -D__ATmega16__ -DF_CPU=1000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o"$@" "$<"

clean			:
					rm -rf dash_linux $(OUT_DIR)/*.d $(OUT_DIR)/*.elf $(OUT_DIR)/*.hex $(OUT_DIR)/*.lss $(OUT_DIR)/*_map*

