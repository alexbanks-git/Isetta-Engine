################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Core/Color.cpp \
../src/Core/EngineResource.cpp \
../src/Core/Filesystem.cpp \
../src/Core/SystemInfo.cpp 

OBJS += \
./src/Core/Color.o \
./src/Core/EngineResource.o \
./src/Core/Filesystem.o \
./src/Core/SystemInfo.o 

CPP_DEPS += \
./src/Core/Color.d \
./src/Core/EngineResource.d \
./src/Core/Filesystem.d \
./src/Core/SystemInfo.d 


# Each subdirectory must supply rules for building sources it contributes
src/Core/%.o: ../src/Core/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Core/SystemInfo.o: ../src/Core/SystemInfo.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Core/SystemInfo.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


