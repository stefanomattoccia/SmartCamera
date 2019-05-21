/*
 * frame_buffer_interrupt.h
 *
 *  Created on: 07 feb 2017
 *      Author: Mattia Bernasconi
 *        Mail: mattia@studiobernasconi.com
 */

#ifndef SRC_FRAME_BUFFER_INTERRUPT_H_
#define SRC_FRAME_BUFFER_INTERRUPT_H_

#include "network.h"
#include "platform_config.h"

#define FRAME_INDEX_INTR	XPAR_FABRIC_AXI_GPIO_FRAME_INTR_IP2INTC_IRPT_INTR

int configure_frame_buffer_interrupt(XScuGic* gicInst);
void frame_interrupt_enable();
void frame_index_interrupt_handler(void *ptr);
void frame_interrupt_register_callback(void (*FrameCallback)(int frame_index));

#endif /* SRC_FRAME_BUFFER_INTERRUPT_H_ */
