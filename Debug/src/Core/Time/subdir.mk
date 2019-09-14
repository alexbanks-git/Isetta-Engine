################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Core/Time/Clock.cpp \
../src/Core/Time/StopWatch.cpp 

OBJS += \
./src/Core/Time/Clock.o \
./src/Core/Time/StopWatch.o 

CPP_DEPS += \
./src/Core/Time/Clock.d \
./src/Core/Time/StopWatch.d 


# Each subdirectory must supply rules for building sources it contributes
src/Core/Time/%.o: ../src/Core/Time/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


