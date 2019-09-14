################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Custom/LevelLoadingMenu.cpp 

OBJS += \
./src/Custom/LevelLoadingMenu.o 

CPP_DEPS += \
./src/Custom/LevelLoadingMenu.d 


# Each subdirectory must supply rules for building sources it contributes
src/Custom/%.o: ../src/Custom/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


