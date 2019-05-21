/*
 * application.h
 *
 *  Created on: Feb 2, 2017
 *      Author: Mattia Bernasconi
 *        Mail: mattia@studiobernasconi.com
 */

#ifndef APPLICATION_H_
#define APPLICATION_H_

#include "platform_config.h"
#include "axis_to_ddr_writer.h"
#include "ddr_to_axis_reader.h"
#include "axi_gpio_frame_intr.h"
#include "axi_gpio_pl_reset.h"
#include "interrupts.h"
#include "network.h"
#include "tcp_connection.h"
#include "zynq_i2c.h"
#include "ov7670_config_i2c.h"
#include "test.h"

int start_application();

#endif /* APPLICATION_H_ */
