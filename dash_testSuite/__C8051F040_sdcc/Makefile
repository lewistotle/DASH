CC			= sdcc -mmcs51
MODEL_FLAGS		= --model-small --stack-auto
CFLAGS			= -D__c8051f040__ -I. -I../../ -I../../HAL -pedantic $(MODEL_FLAGS)
OUT_DIR			= .
OBJS			= main.rel hal.rel hal_UART.rel dash.rel dash_eventQueue.rel sm_test_timeBomb.rel
OUT_OBJS		= $(addprefix $(OUT_DIR)/,$(OBJS))


dash_c8051f040.hex : $(OUT_OBJS)
				sdcc -mmcs51 $(MODEL_FLAGS) -o"$@" $(OBJS)
				chmod +x $@

$(OUT_DIR)/hal.rel : ../../HAL/hal.c ../../HAL/*.h
				$(CC) $(CFLAGS) -c $< -o $@

$(OUT_DIR)/hal_UART.rel : ../../HAL/hal_UART.c ../../HAL/*.h
				$(CC) $(CFLAGS) -c $< -o $@

$(OUT_DIR)/dash.rel : ../../dash.c ../../dash.h ../../dash_eventQueue.h ../../HAL/*.h 
				$(CC) $(CFLAGS) -c $< -o $@

$(OUT_DIR)/dash_eventQueue.rel : ../../dash_eventQueue.c ../../dash.h ../../dash_eventQueue.h ../../HAL/*.h
				$(CC) $(CFLAGS) -c $< -o $@

$(OUT_DIR)/%.rel	: ../%.c ../../dash.h ../../dash_eventQueue.h ../../HAL/*.h ../projectSpecificHardwareInterface_C8051F040.c
				$(CC) $(CFLAGS) -c -o"$@" "$<"

clean :
				rm -rf dash_linux $(OUT_DIR)/*.rel $(OUT_DIR)/*.asm $(OUT_DIR)/*.hex $(OUT_DIR)/*.lk $(OUT_DIR)/*.lnk $(OUT_DIR)/*.lst $(OUT_DIR)/*.map $(OUT_DIR)/*.mem $(OUT_DIR)/*.rst $(OUT_DIR)/*.sym

