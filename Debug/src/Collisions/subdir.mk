################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Collisions/AABB.cpp \
../src/Collisions/BVTree.cpp \
../src/Collisions/BoxCollider.cpp \
../src/Collisions/CapsuleCollider.cpp \
../src/Collisions/Collider.cpp \
../src/Collisions/CollisionHandler.cpp \
../src/Collisions/CollisionSolverModule.cpp \
../src/Collisions/Collisions.cpp \
../src/Collisions/CollisionsModule.cpp \
../src/Collisions/SphereCollider.cpp 

OBJS += \
./src/Collisions/AABB.o \
./src/Collisions/BVTree.o \
./src/Collisions/BoxCollider.o \
./src/Collisions/CapsuleCollider.o \
./src/Collisions/Collider.o \
./src/Collisions/CollisionHandler.o \
./src/Collisions/CollisionSolverModule.o \
./src/Collisions/Collisions.o \
./src/Collisions/CollisionsModule.o \
./src/Collisions/SphereCollider.o 

CPP_DEPS += \
./src/Collisions/AABB.d \
./src/Collisions/BVTree.d \
./src/Collisions/BoxCollider.d \
./src/Collisions/CapsuleCollider.d \
./src/Collisions/Collider.d \
./src/Collisions/CollisionHandler.d \
./src/Collisions/CollisionSolverModule.d \
./src/Collisions/Collisions.d \
./src/Collisions/CollisionsModule.d \
./src/Collisions/SphereCollider.d 


# Each subdirectory must supply rules for building sources it contributes
src/Collisions/%.o: ../src/Collisions/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Collisions/BVTree.o: ../src/Collisions/BVTree.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Collisions/BVTree.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Collisions/CollisionsModule.o: ../src/Collisions/CollisionsModule.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Collisions/CollisionsModule.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


