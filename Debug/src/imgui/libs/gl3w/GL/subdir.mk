################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/imgui/libs/gl3w/GL/gl3w.c 

OBJS += \
./src/imgui/libs/gl3w/GL/gl3w.o 

C_DEPS += \
./src/imgui/libs/gl3w/GL/gl3w.d 


# Each subdirectory must supply rules for building sources it contributes
src/imgui/libs/gl3w/GL/%.o: ../src/imgui/libs/gl3w/GL/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -lglfw3 -Bstatic -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


