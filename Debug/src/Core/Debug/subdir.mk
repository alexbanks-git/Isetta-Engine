################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Core/Debug/DebugDraw.cpp \
../src/Core/Debug/Logger.cpp 

OBJS += \
./src/Core/Debug/DebugDraw.o \
./src/Core/Debug/Logger.o 

CPP_DEPS += \
./src/Core/Debug/DebugDraw.d \
./src/Core/Debug/Logger.d 


# Each subdirectory must supply rules for building sources it contributes
src/Core/Debug/DebugDraw.o: ../src/Core/Debug/DebugDraw.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Core/Debug/DebugDraw.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Core/Debug/Logger.o: ../src/Core/Debug/Logger.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Core/Debug/Logger.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


