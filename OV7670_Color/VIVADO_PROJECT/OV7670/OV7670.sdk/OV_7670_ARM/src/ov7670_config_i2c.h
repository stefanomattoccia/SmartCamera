/*
 * ov7670_config_i2c.h
 *
 *  Created on: 06 feb 2017
 *      Author: Mattia Bernasconi
 *        Mail: mattia@studiobernasconi.com
 */

#ifndef SRC_OV7670_CONFIG_I2C_H_
#define SRC_OV7670_CONFIG_I2C_H_

#include <unistd.h>
#include "platform_config.h"
#include "zynq_i2c.h"
#include "ov7670_constant.h"

int OV7670_configure();
int OV7670_reset_all_registers();
int OV7670_set_VGA_resolution_and_YUV_output();
int OV7670_change_order_for_YUV(char* order);
int OV7670_set_other_registers();
int OV7670_prescale_clock_and_PLL_control(int input_clock_frequency, int internal_clock_frequency, int PLL_value_int);
int OV7670_set_window_output_registers();

#endif /* SRC_OV7670_CONFIG_I2C_H_ */
