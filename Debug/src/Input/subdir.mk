################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Input/GLFWInput.cpp \
../src/Input/Input.cpp \
../src/Input/InputModule.cpp 

OBJS += \
./src/Input/GLFWInput.o \
./src/Input/Input.o \
./src/Input/InputModule.o 

CPP_DEPS += \
./src/Input/GLFWInput.d \
./src/Input/Input.d \
./src/Input/InputModule.d 


# Each subdirectory must supply rules for building sources it contributes
src/Input/%.o: ../src/Input/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


