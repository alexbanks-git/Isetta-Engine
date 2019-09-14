################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Core/DataStructures/Delegate.cpp \
../src/Core/DataStructures/HandleBin.cpp \
../src/Core/DataStructures/RingBuffer.cpp \
../src/Core/DataStructures/Trie.cpp 

OBJS += \
./src/Core/DataStructures/Delegate.o \
./src/Core/DataStructures/HandleBin.o \
./src/Core/DataStructures/RingBuffer.o \
./src/Core/DataStructures/Trie.o 

CPP_DEPS += \
./src/Core/DataStructures/Delegate.d \
./src/Core/DataStructures/HandleBin.d \
./src/Core/DataStructures/RingBuffer.d \
./src/Core/DataStructures/Trie.d 


# Each subdirectory must supply rules for building sources it contributes
src/Core/DataStructures/%.o: ../src/Core/DataStructures/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


