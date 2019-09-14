################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Custom/NoCameraLevel/NoCameraComponent.cpp \
../src/Custom/NoCameraLevel/NoCameraLevel.cpp 

OBJS += \
./src/Custom/NoCameraLevel/NoCameraComponent.o \
./src/Custom/NoCameraLevel/NoCameraLevel.o 

CPP_DEPS += \
./src/Custom/NoCameraLevel/NoCameraComponent.d \
./src/Custom/NoCameraLevel/NoCameraLevel.d 


# Each subdirectory must supply rules for building sources it contributes
src/Custom/NoCameraLevel/NoCameraComponent.o: ../src/Custom/NoCameraLevel/NoCameraComponent.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Custom/NoCameraLevel/NoCameraComponent.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Custom/NoCameraLevel/NoCameraLevel.o: ../src/Custom/NoCameraLevel/NoCameraLevel.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Custom/NoCameraLevel/NoCameraLevel.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


