/*
 * interrupts.c
 *
 *  Created on: Feb 2, 2017
 *      Author: Mattia Bernasconi
 *        Mail: mattia@studiobernasconi.com
 */

#include "interrupts.h"

int enable_interrupts()
{
	//Get Instance of General Interrupt Controller (GIC)
	XScuGic* InterruptController = getGicInstance();

	//For SW reset
	XScuGic_Enable(InterruptController, XPAR_FABRIC_SYSTEM_RESET_SW_INTR);

	//For frame buffer
	XGpio_InterruptEnable(&frame_intr_gpio, 0xFFFFFFFF);
	XGpio_InterruptGlobalEnable(&frame_intr_gpio);
	XScuGic_Enable(InterruptController, FRAME_INDEX_INTR);

	//For i2c
	XScuGic_Enable(InterruptController, IIC_INT_VEC_ID);

	Xil_ExceptionEnable();
	return XST_SUCCESS;
}

int disable_interrupts()
{
	//Get Instance of General Interrupt Controller (GIC)
	XScuGic* InterruptController = getGicInstance();

	// for SW reset
	XScuGic_Disable(InterruptController, XPAR_FABRIC_SYSTEM_RESET_SW_INTR);

	// for frame buffer
	XGpio_InterruptDisable(&frame_intr_gpio, 0xFFFFFFFF);
	XGpio_InterruptGlobalDisable(&frame_intr_gpio);

	// i2c
	XScuGic_Disable(InterruptController, IIC_INT_VEC_ID);

	Xil_ExceptionDisable();
	return XST_SUCCESS;
}

int configure_interrupts()
{
	//Get Instance of General Interrupt Controller (GIC)
	XScuGic* InterruptController = getGicInstance();

	configure_SW_reset_interrupt(InterruptController);
	configure_frame_buffer_interrupt(InterruptController);
	configure_i2c_interrupt(InterruptController, &Iic);

	return XST_SUCCESS;
}


int configure_SW_reset_interrupt(XScuGic* gicInst)
{
	if (XScuGic_Connect(gicInst, XPAR_FABRIC_SYSTEM_RESET_SW_INTR, SW_reset_handler, NULL) != XST_SUCCESS)
	{
		xil_printf("XScuGIc_Connect RESET failed!\n");
		return XST_FAILURE;
	}

	XScuGic_SetPriorityTriggerType(gicInst, XPAR_FABRIC_SYSTEM_RESET_SW_INTR, 0x0, 0x3);
	XScuGic_Disable(gicInst, XPAR_FABRIC_SYSTEM_RESET_SW_INTR);

	return XST_SUCCESS;
}

void SW_reset_handler(void *ptr)
{
	int result;

	//Platform Initialization
	result = init_platform();
	if(result != XST_SUCCESS)
	{
		xil_printf("There is an error about init_platform\n\r");
	}
	xil_printf("init_platform done \n\r");

	//Application Starting
	result = start_application(1);
	if(result != XST_SUCCESS)
	{
		xil_printf("There is an error about start_appliation\n\r");
	}
	xil_printf("Application started\n\r");
}
