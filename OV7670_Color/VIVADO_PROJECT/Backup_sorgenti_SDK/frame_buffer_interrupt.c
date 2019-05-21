/*
 * frame_buffer_interrupt.c
 *
 *  Created on: 07 feb 2017
 *      Author: Mattia Bernasconi
 *        Mail: mattia@studiobernasconi.com
 */

#include "frame_buffer_interrupt.h"

void (*FrameWrittenCallback)(int frame_index);

XGpio frame_intr_gpio;

int configure_frame_buffer_interrupt(XScuGic* gicInst)
{
	if (XScuGic_Connect(gicInst, FRAME_INDEX_INTR, frame_index_interrupt_handler, (void*) &frame_intr_gpio) != XST_SUCCESS)
	{
		xil_printf("XScuGIc_Connect failed!\n");
		return XST_FAILURE;
	}

	printf("[INFO] Setting a lower priority (0x8) and rising edge sensitivity (0x3) to reset handler (SW1)\n");
	XScuGic_SetPriorityTriggerType(gicInst, FRAME_INDEX_INTR, 0x8, 0x3);

	//Dont forget here
	XGpio_InterruptDisable(&frame_intr_gpio, 0xFFFFFFFF);
	XGpio_InterruptGlobalDisable(&frame_intr_gpio);

	//Set callback for UDP
	frame_interrupt_register_callback(frame_written_callback);

	return XST_SUCCESS;
}

void frame_index_interrupt_handler(void *ptr)
{
	if (FrameWrittenCallback != NULL)
	{
		//XGpio_InterruptDisable(&frame_intr_gpio, 0xFF);

		frame_index = XGpio_DiscreteRead(&frame_intr_gpio, 1);
		frame_index == 0 ? frame_index = FRAME_BUFFER_NUM - 1 : frame_index--;
		FrameWrittenCallback(frame_index);

		XGpio_InterruptClear(&frame_intr_gpio, 0xFFFFFFFF);

		//XGpio_InterruptEnable(&frame_intr_gpio, 0xFF);
	}
}

void frame_interrupt_register_callback(void (*FrameCallback)(int frame_index))
{
	FrameWrittenCallback = FrameCallback;
}
