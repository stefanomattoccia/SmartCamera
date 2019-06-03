################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../mux_sd_ov.cpp 

OBJS += \
./source/mux_sd_ov.o 

CPP_DEPS += \
./source/mux_sd_ov.d 


# Each subdirectory must supply rules for building sources it contributes
source/mux_sd_ov.o: F:/Tesi/ProgettoVivado/HLS_COMMON/MUX_SD_OV/VIDEO_STREAM_MUX/mux_sd_ov.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IF:/Programmi/Xilinx/Vivado_HLS/2016.2/include/etc -IF:/Programmi/Xilinx/Vivado_HLS/2016.2/win64/tools/auto_cc/include -IF:/Programmi/Xilinx/Vivado_HLS/2016.2/win64/tools/systemc/include -IF:/Programmi/Xilinx/Vivado_HLS/2016.2/include/ap_sysc -IF:/Programmi/Xilinx/Vivado_HLS/2016.2/include -IF:/Tesi/ProgettoVivado/HLS_COMMON/MUX_SD_OV -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


