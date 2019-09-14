################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Custom/EditorLevel/EditorLevel.cpp 

OBJS += \
./src/Custom/EditorLevel/EditorLevel.o 

CPP_DEPS += \
./src/Custom/EditorLevel/EditorLevel.d 


# Each subdirectory must supply rules for building sources it contributes
src/Custom/EditorLevel/EditorLevel.o: ../src/Custom/EditorLevel/EditorLevel.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Custom/EditorLevel/EditorLevel.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


