################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Core/Config/CVar.cpp \
../src/Core/Config/Config.cpp 

OBJS += \
./src/Core/Config/CVar.o \
./src/Core/Config/Config.o 

CPP_DEPS += \
./src/Core/Config/CVar.d \
./src/Core/Config/Config.d 


# Each subdirectory must supply rules for building sources it contributes
src/Core/Config/%.o: ../src/Core/Config/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Core/Config/Config.o: ../src/Core/Config/Config.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Core/Config/Config.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


