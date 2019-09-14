################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Core/Math/Matrix3.cpp \
../src/Core/Math/Matrix4.cpp \
../src/Core/Math/Quaternion.cpp \
../src/Core/Math/Random.cpp \
../src/Core/Math/Rect.cpp \
../src/Core/Math/Util.cpp \
../src/Core/Math/Vector2.cpp \
../src/Core/Math/Vector2Int.cpp \
../src/Core/Math/Vector3.cpp \
../src/Core/Math/Vector3Int.cpp \
../src/Core/Math/Vector4.cpp 

OBJS += \
./src/Core/Math/Matrix3.o \
./src/Core/Math/Matrix4.o \
./src/Core/Math/Quaternion.o \
./src/Core/Math/Random.o \
./src/Core/Math/Rect.o \
./src/Core/Math/Util.o \
./src/Core/Math/Vector2.o \
./src/Core/Math/Vector2Int.o \
./src/Core/Math/Vector3.o \
./src/Core/Math/Vector3Int.o \
./src/Core/Math/Vector4.o 

CPP_DEPS += \
./src/Core/Math/Matrix3.d \
./src/Core/Math/Matrix4.d \
./src/Core/Math/Quaternion.d \
./src/Core/Math/Random.d \
./src/Core/Math/Rect.d \
./src/Core/Math/Util.d \
./src/Core/Math/Vector2.d \
./src/Core/Math/Vector2Int.d \
./src/Core/Math/Vector3.d \
./src/Core/Math/Vector3Int.d \
./src/Core/Math/Vector4.d 


# Each subdirectory must supply rules for building sources it contributes
src/Core/Math/%.o: ../src/Core/Math/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


