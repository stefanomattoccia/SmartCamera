################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/application.c \
../src/axi_gpio_frame_intr.c \
../src/axi_gpio_pl_reset.c \
../src/axis_to_ddr_writer.c \
../src/convolution_filter.c \
../src/ddr_to_axis_reader.c \
../src/ddr_to_axis_reader_SD.c \
../src/frame_buffer_interrupt.c \
../src/i2c_interrupt.c \
../src/interrupts.c \
../src/main.c \
../src/mux_sd_ov.c \
../src/network.c \
../src/ov7670_config_i2c.c \
../src/platform.c \
../src/read_sd_card.c \
../src/tcp_connection.c \
../src/test.c \
../src/zynq_gic.c \
../src/zynq_i2c.c 

OBJS += \
./src/application.o \
./src/axi_gpio_frame_intr.o \
./src/axi_gpio_pl_reset.o \
./src/axis_to_ddr_writer.o \
./src/convolution_filter.o \
./src/ddr_to_axis_reader.o \
./src/ddr_to_axis_reader_SD.o \
./src/frame_buffer_interrupt.o \
./src/i2c_interrupt.o \
./src/interrupts.o \
./src/main.o \
./src/mux_sd_ov.o \
./src/network.o \
./src/ov7670_config_i2c.o \
./src/platform.o \
./src/read_sd_card.o \
./src/tcp_connection.o \
./src/test.o \
./src/zynq_gic.o \
./src/zynq_i2c.o 

C_DEPS += \
./src/application.d \
./src/axi_gpio_frame_intr.d \
./src/axi_gpio_pl_reset.d \
./src/axis_to_ddr_writer.d \
./src/convolution_filter.d \
./src/ddr_to_axis_reader.d \
./src/ddr_to_axis_reader_SD.d \
./src/frame_buffer_interrupt.d \
./src/i2c_interrupt.d \
./src/interrupts.d \
./src/main.d \
./src/mux_sd_ov.d \
./src/network.d \
./src/ov7670_config_i2c.d \
./src/platform.d \
./src/read_sd_card.d \
./src/tcp_connection.d \
./src/test.d \
./src/zynq_gic.d \
./src/zynq_i2c.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../OV_7670_ARM_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


