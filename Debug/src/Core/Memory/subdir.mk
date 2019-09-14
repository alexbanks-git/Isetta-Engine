################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Core/Memory/DoubleBufferedAllocator.cpp \
../src/Core/Memory/FreeListAllocator.cpp \
../src/Core/Memory/MemUtil.cpp \
../src/Core/Memory/MemoryArena.cpp \
../src/Core/Memory/MemoryManager.cpp \
../src/Core/Memory/ObjectHandle.cpp \
../src/Core/Memory/PoolAllocator.cpp \
../src/Core/Memory/StackAllocator.cpp 

OBJS += \
./src/Core/Memory/DoubleBufferedAllocator.o \
./src/Core/Memory/FreeListAllocator.o \
./src/Core/Memory/MemUtil.o \
./src/Core/Memory/MemoryArena.o \
./src/Core/Memory/MemoryManager.o \
./src/Core/Memory/ObjectHandle.o \
./src/Core/Memory/PoolAllocator.o \
./src/Core/Memory/StackAllocator.o 

CPP_DEPS += \
./src/Core/Memory/DoubleBufferedAllocator.d \
./src/Core/Memory/FreeListAllocator.d \
./src/Core/Memory/MemUtil.d \
./src/Core/Memory/MemoryArena.d \
./src/Core/Memory/MemoryManager.d \
./src/Core/Memory/ObjectHandle.d \
./src/Core/Memory/PoolAllocator.d \
./src/Core/Memory/StackAllocator.d 


# Each subdirectory must supply rules for building sources it contributes
src/Core/Memory/%.o: ../src/Core/Memory/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Core/Memory/FreeListAllocator.o: ../src/Core/Memory/FreeListAllocator.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Core/Memory/FreeListAllocator.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Core/Memory/MemoryManager.o: ../src/Core/Memory/MemoryManager.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Core/Memory/MemoryManager.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


