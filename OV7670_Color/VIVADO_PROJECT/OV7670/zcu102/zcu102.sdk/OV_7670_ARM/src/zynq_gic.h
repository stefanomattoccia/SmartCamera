/*
 * zynq_gic.h
 *
 *  Created on: Feb 2, 2017
 *      Author: Mattia Bernasconi
 *        Mail: mattia@studiobernasconi.com
 */

#ifndef SRC_PLATFORM_ZYNQ_GIC_H_
#define SRC_PLATFORM_ZYNQ_GIC_H_

#include "platform_config.h"

int init_zynq_gic(void);
XScuGic* getGicInstance();

#endif /* SRC_PLATFORM_ZYNQ_GIC_H_ */
