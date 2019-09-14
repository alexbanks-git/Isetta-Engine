################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/glad/glad.c 

OBJS += \
./src/glad/glad.o 

C_DEPS += \
./src/glad/glad.d 


# Each subdirectory must supply rules for building sources it contributes
src/glad/glad.o: ../src/glad/glad.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -I/home/lin/eclipse-workspace/isetta-static/src/glad -O0 -g3 -Wall -c -lglfw3 -Bstatic -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/glad/glad.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


