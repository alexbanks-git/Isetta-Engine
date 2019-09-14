################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Components/Editor/Console.cpp \
../src/Components/Editor/EditorComponent.cpp \
../src/Components/Editor/FrameReporter.cpp \
../src/Components/Editor/Hierarchy.cpp \
../src/Components/Editor/Inspector.cpp \
../src/Components/Editor/NetworkMonitor.cpp 

OBJS += \
./src/Components/Editor/Console.o \
./src/Components/Editor/EditorComponent.o \
./src/Components/Editor/FrameReporter.o \
./src/Components/Editor/Hierarchy.o \
./src/Components/Editor/Inspector.o \
./src/Components/Editor/NetworkMonitor.o 

CPP_DEPS += \
./src/Components/Editor/Console.d \
./src/Components/Editor/EditorComponent.d \
./src/Components/Editor/FrameReporter.d \
./src/Components/Editor/Hierarchy.d \
./src/Components/Editor/Inspector.d \
./src/Components/Editor/NetworkMonitor.d 


# Each subdirectory must supply rules for building sources it contributes
src/Components/Editor/Console.o: ../src/Components/Editor/Console.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -I/home/lin/eclipse-workspace/isetta-static/src/imgui -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Components/Editor/Console.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Components/Editor/%.o: ../src/Components/Editor/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Components/Editor/FrameReporter.o: ../src/Components/Editor/FrameReporter.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Components/Editor/FrameReporter.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Components/Editor/NetworkMonitor.o: ../src/Components/Editor/NetworkMonitor.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Components/Editor/NetworkMonitor.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


