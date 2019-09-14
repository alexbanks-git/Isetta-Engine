################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Events/EventObject.cpp \
../src/Events/Events.cpp 

OBJS += \
./src/Events/EventObject.o \
./src/Events/Events.o 

CPP_DEPS += \
./src/Events/EventObject.d \
./src/Events/Events.d 


# Each subdirectory must supply rules for building sources it contributes
src/Events/EventObject.o: ../src/Events/EventObject.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Events/EventObject.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Events/Events.o: ../src/Events/Events.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Events/Events.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


