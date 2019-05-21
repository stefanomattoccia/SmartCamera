/*
 * i2c_interrupt.c
 *
 *  Created on: 07 feb 2017
 *      Author: Mattia Bernasconi
 *        Mail: mattia@studiobernasconi.com
 */

#include "i2c_interrupt.h"
#include "zynq_i2c.h"

int configure_i2c_interrupt(XScuGic* gicInst, XScuGic* IicPsPtr)
{
	int Status;

	Status = XScuGic_Connect(gicInst, IIC_INT_VEC_ID, (Xil_InterruptHandler)XIicPs_MasterInterruptHandler, (void *)IicPsPtr);

	if (Status != XST_SUCCESS)
	{
		return Status;
	}

	XScuGic_SetPriorityTriggerType(gicInst, IIC_INT_VEC_ID, 0xF, 0x3);

	XScuGic_Disable(gicInst, IIC_INT_VEC_ID);


	return XST_SUCCESS;
}
