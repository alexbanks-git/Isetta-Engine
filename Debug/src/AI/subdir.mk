################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/AI/Nav2DAgent.cpp \
../src/AI/Nav2DObstacle.cpp \
../src/AI/Nav2DPlane.cpp 

OBJS += \
./src/AI/Nav2DAgent.o \
./src/AI/Nav2DObstacle.o \
./src/AI/Nav2DPlane.o 

CPP_DEPS += \
./src/AI/Nav2DAgent.d \
./src/AI/Nav2DObstacle.d \
./src/AI/Nav2DPlane.d 


# Each subdirectory must supply rules for building sources it contributes
src/AI/%.o: ../src/AI/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


