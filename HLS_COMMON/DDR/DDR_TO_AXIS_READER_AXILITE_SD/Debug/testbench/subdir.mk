################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../testbench.cpp 

OBJS += \
./testbench/testbench.o 

CPP_DEPS += \
./testbench/testbench.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/testbench.o: F:/Progetti_Vivado_Tesi/Test_7_Tesi/HLS_COMMON/DDR/DDR_TO_AXIS_READER_AXILITE_SD/testbench.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IF:/Vivado_old/Vivado_HLS/2016.2/include/etc -IF:/Vivado_old/Vivado_HLS/2016.2/include -IF:/Vivado_old/Vivado_HLS/2016.2/include/ap_sysc -IF:/Vivado_old/Vivado_HLS/2016.2/win64/tools/systemc/include -IF:/Vivado_old/Vivado_HLS/2016.2/win64/tools/auto_cc/include -IF:/Progetti_Vivado_Tesi/Test_7_Tesi/HLS_COMMON/DDR -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


