################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/yojimbo/tlsf/subdir.mk
-include src/yojimbo/reliable/subdir.mk
-include src/yojimbo/netcode/subdir.mk
-include src/yojimbo/subdir.mk
-include src/imgui/libs/gl3w/GL/subdir.mk
-include src/imgui/subdir.mk
-include src/glad/subdir.mk
-include src/Scene/subdir.mk
-include src/Networking/subdir.mk
-include src/Input/subdir.mk
-include src/Graphics/subdir.mk
-include src/Events/subdir.mk
-include src/Custom/XLevel/subdir.mk
-include src/Custom/NoCameraLevel/subdir.mk
-include src/Custom/EmptyLevel/subdir.mk
-include src/Custom/EditorLevel/subdir.mk
-include src/Custom/subdir.mk
-include src/Core/Time/subdir.mk
-include src/Core/Memory/subdir.mk
-include src/Core/Math/subdir.mk
-include src/Core/Geometry/subdir.mk
-include src/Core/Debug/subdir.mk
-include src/Core/DataStructures/subdir.mk
-include src/Core/Config/subdir.mk
-include src/Core/subdir.mk
-include src/Components/Editor/subdir.mk
-include src/Components/subdir.mk
-include src/Collisions/subdir.mk
-include src/Audio/subdir.mk
-include src/AI/subdir.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: libisetta-static.a

# Tool invocations
libisetta-static.a: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GCC Archiver'
	ar -r  "libisetta-static.a" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(CC_DEPS)$(C++_DEPS)$(ARCHIVES)$(C_UPPER_DEPS)$(CXX_DEPS)$(OBJS)$(CPP_DEPS)$(C_DEPS) libisetta-static.a
	-@echo ' '

.PHONY: all clean dependents

-include ../makefile.targets
