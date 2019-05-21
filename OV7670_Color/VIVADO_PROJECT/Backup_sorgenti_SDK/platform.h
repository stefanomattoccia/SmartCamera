/*
 * platform.h
 *
 *  Created on: Feb 2, 2017
 *      Author: Mattia Bernasconi
 *        Mail: mattia@studiobernasconi.com
 */

#ifndef PLATFORM_H_
#define PLATFORM_H_

#include <stdio.h>
#include "platform_config.h"
#include "axis_to_ddr_writer.h"
#include "ddr_to_axis_reader.h"
#include "axi_gpio_frame_intr.h"
#include "axi_gpio_pl_reset.h"
#include "zynq_i2c.h"
#include "zynq_gic.h"
#include "network.h"

int init_platform(void);

#endif /* PLATFORM_H_ */
