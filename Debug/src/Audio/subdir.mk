################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Audio/AudioClip.cpp \
../src/Audio/AudioListener.cpp \
../src/Audio/AudioModule.cpp \
../src/Audio/AudioSource.cpp 

OBJS += \
./src/Audio/AudioClip.o \
./src/Audio/AudioListener.o \
./src/Audio/AudioModule.o \
./src/Audio/AudioSource.o 

CPP_DEPS += \
./src/Audio/AudioClip.d \
./src/Audio/AudioListener.d \
./src/Audio/AudioModule.d \
./src/Audio/AudioSource.d 


# Each subdirectory must supply rules for building sources it contributes
src/Audio/AudioClip.o: ../src/Audio/AudioClip.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Audio/AudioClip.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Audio/%.o: ../src/Audio/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Audio/AudioModule.o: ../src/Audio/AudioModule.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Audio/AudioModule.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


