################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Networking/NetworkId.cpp \
../src/Networking/NetworkManager.cpp \
../src/Networking/NetworkTransform.cpp \
../src/Networking/NetworkingModule.cpp 

OBJS += \
./src/Networking/NetworkId.o \
./src/Networking/NetworkManager.o \
./src/Networking/NetworkTransform.o \
./src/Networking/NetworkingModule.o 

CPP_DEPS += \
./src/Networking/NetworkId.d \
./src/Networking/NetworkManager.d \
./src/Networking/NetworkTransform.d \
./src/Networking/NetworkingModule.d 


# Each subdirectory must supply rules for building sources it contributes
src/Networking/%.o: ../src/Networking/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Networking/NetworkManager.o: ../src/Networking/NetworkManager.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Networking/NetworkManager.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Networking/NetworkTransform.o: ../src/Networking/NetworkTransform.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Networking/NetworkTransform.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Networking/NetworkingModule.o: ../src/Networking/NetworkingModule.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Networking/NetworkingModule.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


