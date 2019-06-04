/*
 * axi_gpio_pl_reset.h
 *
 *  Created on: Feb 2, 2017
 *      Author: Mattia Bernasconi
 *        Mail: mattia@studiobernasconi.com
 */

#ifndef AXI_GPIO_PL_RESET_H_
#define AXI_GPIO_PL_RESET_H_

#include <unistd.h>
#include "platform_config.h"

XGpio resetGPIO;
XGpio_Config *gpio_config;

int init_axi_gpio_pl_reset(void);
int reset_PL(int usec);
int pl_reset_enable();
int pl_reset_disable();
int pl_reset_keep_for(int usec);

#endif /* AXI_GPIO_PL_RESET_H_ */
