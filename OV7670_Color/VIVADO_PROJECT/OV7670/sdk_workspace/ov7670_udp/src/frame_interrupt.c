/*
 * frame_interrupt.c
 *
 *  Created on: 23/mar/2016
 *      Author: Riccardo
 */

#include "frame_interrupt.h"

#define FRAME_INDEX_INTR	XPAR_FABRIC_AXI_GPIO_FRAME_INTR_IP2INTC_IRPT_INTR

/*
 * Uso del pattern observer
 */

void (*FrameWrittenCallback)(int frame_index);

XScuGic* gic;
XGpio frame_intr_gpio;
int frame_index;

/*
 * Il vero interrupt handler che viene registrato nel GIC è questa funzione,
 * che si occupa di fornire il frame_index giusto alla funzione di callback
 */
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

int frame_interrupt_init(XScuGic* gicInst)
{
	if (gicInst == NULL || gicInst->IsReady == 0)
	{
		xil_printf("Parametro gicInst invalido\n");
		return XST_FAILURE;
	}

	xil_printf("Configurazione frame interrupt GPIO\n");
	if (XGpio_Initialize(&frame_intr_gpio, XPAR_AXI_GPIO_FRAME_INTR_DEVICE_ID) != XST_SUCCESS)
	{
		xil_printf("Il GPIO del frame_index non e' stato trovato\n");
		return XST_FAILURE;
	}

	if (XScuGic_Connect(gicInst, FRAME_INDEX_INTR, frame_index_interrupt_handler, (void*) &frame_intr_gpio) != XST_SUCCESS)
	{
		xil_printf("XScuGIc_Connect failed!\n");
		return XST_FAILURE;
	}


	XGpio_InterruptEnable(&frame_intr_gpio, 0xFFFFFFFF);
	XGpio_InterruptGlobalEnable(&frame_intr_gpio);

	//u32 enabled = XGpio_InterruptGetEnabled(&frame_intr_gpio);
	//xil_printf("GPIO interrupts enabled = %d\n\n", enabled);

	gic = gicInst;

	return XST_SUCCESS;

}

void frame_interrupt_register_callback(void (*FrameCallback)(int frame_index))
{
	FrameWrittenCallback = FrameCallback;
}

int get_interrupt_polling()
{
	return XGpio_InterruptGetStatus(&frame_intr_gpio);
}

void frame_interrupt_enable()
{
	XScuGic_Enable(gic, FRAME_INDEX_INTR);
}

void frame_interrupt_disable()
{
	XScuGic_Disable(gic, FRAME_INDEX_INTR);
}
