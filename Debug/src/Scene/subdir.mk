################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Scene/Component.cpp \
../src/Scene/Entity.cpp \
../src/Scene/Layers.cpp \
../src/Scene/Level.cpp \
../src/Scene/LevelManager.cpp \
../src/Scene/Primitive.cpp \
../src/Scene/Transform.cpp 

OBJS += \
./src/Scene/Component.o \
./src/Scene/Entity.o \
./src/Scene/Layers.o \
./src/Scene/Level.o \
./src/Scene/LevelManager.o \
./src/Scene/Primitive.o \
./src/Scene/Transform.o 

CPP_DEPS += \
./src/Scene/Component.d \
./src/Scene/Entity.d \
./src/Scene/Layers.d \
./src/Scene/Level.d \
./src/Scene/LevelManager.d \
./src/Scene/Primitive.d \
./src/Scene/Transform.d 


# Each subdirectory must supply rules for building sources it contributes
src/Scene/%.o: ../src/Scene/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Scene/Level.o: ../src/Scene/Level.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -I/home/lin/eclipse-workspace/isetta-static/src/yojimbo -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Scene/Level.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Scene/LevelManager.o: ../src/Scene/LevelManager.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Scene/LevelManager.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


