################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/imgui/imgui.cpp \
../src/imgui/imgui_demo.cpp \
../src/imgui/imgui_draw.cpp \
../src/imgui/imgui_impl_glfw.cpp \
../src/imgui/imgui_impl_opengl2.cpp \
../src/imgui/imgui_impl_opengl3.cpp \
../src/imgui/imgui_widgets.cpp 

OBJS += \
./src/imgui/imgui.o \
./src/imgui/imgui_demo.o \
./src/imgui/imgui_draw.o \
./src/imgui/imgui_impl_glfw.o \
./src/imgui/imgui_impl_opengl2.o \
./src/imgui/imgui_impl_opengl3.o \
./src/imgui/imgui_widgets.o 

CPP_DEPS += \
./src/imgui/imgui.d \
./src/imgui/imgui_demo.d \
./src/imgui/imgui_draw.d \
./src/imgui/imgui_impl_glfw.d \
./src/imgui/imgui_impl_opengl2.d \
./src/imgui/imgui_impl_opengl3.d \
./src/imgui/imgui_widgets.d 


# Each subdirectory must supply rules for building sources it contributes
src/imgui/%.o: ../src/imgui/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/imgui/imgui_impl_opengl3.o: ../src/imgui/imgui_impl_opengl3.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++17 -I/home/lin/eclipse-workspace/isetta-static/src/imgui/libs/gl3w -I/home/lin/eclipse-workspace/isetta-static/src -O0 -g3 -Wall -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"src/imgui/imgui_impl_opengl3.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


