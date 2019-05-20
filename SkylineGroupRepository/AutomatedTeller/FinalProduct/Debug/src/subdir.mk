################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/AutomatedTeller.cpp \
../src/Calc.cpp \
../src/Interest.cpp \
../src/adventure.cpp \
../src/bankJAS.cpp \
../src/passStore.cpp 

OBJS += \
./src/AutomatedTeller.o \
./src/Calc.o \
./src/Interest.o \
./src/adventure.o \
./src/bankJAS.o \
./src/passStore.o 

CPP_DEPS += \
./src/AutomatedTeller.d \
./src/Calc.d \
./src/Interest.d \
./src/adventure.d \
./src/bankJAS.d \
./src/passStore.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


