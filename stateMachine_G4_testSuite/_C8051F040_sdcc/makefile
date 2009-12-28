################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include src/stateMachines_G4/subdir.mk
-include src/subdir.mk
-include src/HAL/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: stateMachine_G4_testSuite.hex

# Tool invocations
stateMachine_G4_testSuite.hex: $(RELS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: SDCC Linker'
	sdcc --model-large  -o"stateMachine_G4_testSuite.hex" $(RELS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(C_DEPS)$(RELS)$(EXECUTABLES) stateMachine_G4_testSuite.hex
	-@echo ' '

post-build:
	-../../../FlashUtilCL/bin/FlashUtilCL.exe downloadUSB -R ./stateMachine_G4_testSuite.hex EC300019758
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY: post-build

-include ../makefile.targets
