################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/yojimbo/netcode/netcode.c 

OBJS += \
./src/yojimbo/netcode/netcode.o 

C_DEPS += \
./src/yojimbo/netcode/netcode.d 


# Each subdirectory must supply rules for building sources it contributes
src/yojimbo/netcode/%.o: ../src/yojimbo/netcode/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -lglfw3 -Bstatic -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


