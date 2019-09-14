################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/yojimbo/yojimbo.cpp 

OBJS += \
./src/yojimbo/yojimbo.o 

CPP_DEPS += \
./src/yojimbo/yojimbo.d 


# Each subdirectory must supply rules for building sources it contributes
src/yojimbo/yojimbo.o: ../src/yojimbo/yojimbo.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/yojimbo/netcode.io -I/home/lin/eclipse-workspace/isetta-static/src/yojimbo/reliable.io -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/yojimbo/yojimbo.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


