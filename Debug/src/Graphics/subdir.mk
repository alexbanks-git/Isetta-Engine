################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Graphics/AnimationComponent.cpp \
../src/Graphics/CameraComponent.cpp \
../src/Graphics/Font.cpp \
../src/Graphics/GUI.cpp \
../src/Graphics/GUIModule.cpp \
../src/Graphics/LightComponent.cpp \
../src/Graphics/MeshComponent.cpp \
../src/Graphics/ParticleSystemComponent.cpp \
../src/Graphics/RenderModule.cpp \
../src/Graphics/RenderNode.cpp \
../src/Graphics/Texture.cpp \
../src/Graphics/Window.cpp \
../src/Graphics/WindowModule.cpp 

OBJS += \
./src/Graphics/AnimationComponent.o \
./src/Graphics/CameraComponent.o \
./src/Graphics/Font.o \
./src/Graphics/GUI.o \
./src/Graphics/GUIModule.o \
./src/Graphics/LightComponent.o \
./src/Graphics/MeshComponent.o \
./src/Graphics/ParticleSystemComponent.o \
./src/Graphics/RenderModule.o \
./src/Graphics/RenderNode.o \
./src/Graphics/Texture.o \
./src/Graphics/Window.o \
./src/Graphics/WindowModule.o 

CPP_DEPS += \
./src/Graphics/AnimationComponent.d \
./src/Graphics/CameraComponent.d \
./src/Graphics/Font.d \
./src/Graphics/GUI.d \
./src/Graphics/GUIModule.d \
./src/Graphics/LightComponent.d \
./src/Graphics/MeshComponent.d \
./src/Graphics/ParticleSystemComponent.d \
./src/Graphics/RenderModule.d \
./src/Graphics/RenderNode.d \
./src/Graphics/Texture.d \
./src/Graphics/Window.d \
./src/Graphics/WindowModule.d 


# Each subdirectory must supply rules for building sources it contributes
src/Graphics/AnimationComponent.o: ../src/Graphics/AnimationComponent.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Graphics/AnimationComponent.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Graphics/CameraComponent.o: ../src/Graphics/CameraComponent.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Graphics/CameraComponent.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Graphics/Font.o: ../src/Graphics/Font.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Graphics/Font.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Graphics/GUI.o: ../src/Graphics/GUI.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Graphics/GUI.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Graphics/GUIModule.o: ../src/Graphics/GUIModule.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Graphics/GUIModule.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Graphics/LightComponent.o: ../src/Graphics/LightComponent.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Graphics/LightComponent.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Graphics/MeshComponent.o: ../src/Graphics/MeshComponent.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Graphics/MeshComponent.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Graphics/ParticleSystemComponent.o: ../src/Graphics/ParticleSystemComponent.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Graphics/ParticleSystemComponent.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Graphics/RenderModule.o: ../src/Graphics/RenderModule.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Graphics/RenderModule.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Graphics/%.o: ../src/Graphics/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Graphics/Texture.o: ../src/Graphics/Texture.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Graphics/Texture.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Graphics/Window.o: ../src/Graphics/Window.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Graphics/Window.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Graphics/WindowModule.o: ../src/Graphics/WindowModule.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/Graphics/WindowModule.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


