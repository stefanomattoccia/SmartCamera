/*
 * i2c_interrupt.h
 *
 *  Created on: 07 feb 2017
 *      Author: Mattia Bernasconi
 *        Mail: mattia@studiobernasconi.com
 */

#ifndef SRC_I2C_INTERRUPT_H_
#define SRC_I2C_INTERRUPT_H_

#include "platform_config.h"
#include "zynq_i2c.h"

int configure_i2c_interrupt(XScuGic* gicInst, XScuGic* IicPsPtr);

#endif /* SRC_I2C_INTERRUPT_H_ */
