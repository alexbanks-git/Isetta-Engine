################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Components/AxisDrawer.cpp \
../src/Components/FlyController.cpp \
../src/Components/GridComponent.cpp \
../src/Components/JointFollow.cpp 

OBJS += \
./src/Components/AxisDrawer.o \
./src/Components/FlyController.o \
./src/Components/GridComponent.o \
./src/Components/JointFollow.o 

CPP_DEPS += \
./src/Components/AxisDrawer.d \
./src/Components/FlyController.d \
./src/Components/GridComponent.d \
./src/Components/JointFollow.d 


# Each subdirectory must supply rules for building sources it contributes
src/Components/%.o: ../src/Components/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Components/FlyController.o: ../src/Components/FlyController.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Components/FlyController.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


