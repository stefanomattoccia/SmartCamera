/*
 * zynq_i2c.h
 *
 *  Created on: Feb 2, 2017
 *      Author: Mattia Bernasconi
 *        Mail: mattia@studiobernasconi.com
 */

#ifndef ZYNQ_I2C_H_
#define ZYNQ_I2C_H_

#include "platform_config.h"

#define IIC_DEVICE_ID		XPAR_XIICPS_0_DEVICE_ID
#define IIC_INT_VEC_ID		XPAR_XIICPS_0_INTR
#define IIC_SCLK_RATE		100000

#ifndef BYTE
typedef unsigned char BYTE;
#endif

XIicPs Iic;
XIicPs_Config Config;

volatile u32 SendComplete;
volatile u32 ReceiveComplete;
volatile u32 TotalErrorCount;
volatile u32 I2C_error;

int init_zynq_i2c(u16 DeviceId, XIicPs *Iic, XIicPs_Config *Config);
int I2C_set_register(BYTE slave_address, BYTE slave_register);
int I2C_write_8_bit(BYTE slave_address, BYTE slave_register, BYTE data_L);
int I2C_read_8_bit(BYTE slave_address, BYTE slave_register, BYTE *data_L);

#endif /* ZYNQ_I2C_H_ */
