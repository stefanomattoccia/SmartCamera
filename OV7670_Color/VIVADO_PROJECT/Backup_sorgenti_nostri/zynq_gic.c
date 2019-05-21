/*
 * zynq_gic.c
 *
 *  Created on: Feb 2, 2017
 *      Author: Mattia Bernasconi
 *        Mail: mattia@studiobernasconi.com
 */

#include "zynq_gic.h"

XScuGic InterruptController;

static int inizializzato = 0; // 0 non inizializzato | 1 inizializzazione ok | -1 inizializzazione fallita

int init_zynq_gic(void)
{
	XScuGic_Config *IntcConfig;
	int Status;

	IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
	if (NULL == IntcConfig)
	{
		inizializzato = -1;
		return XST_FAILURE;
	}

	Status = XScuGic_CfgInitialize(&InterruptController, IntcConfig, IntcConfig->CpuBaseAddress);
	if (Status != XST_SUCCESS)
	{
		inizializzato = -1;
		return XST_FAILURE;
	}

	// this is for enable nested interrupts
	XScuGic_CPUWriteReg(&InterruptController, XSCUGIC_BIN_PT_OFFSET, 0x02);

	/*
	 * Connect the interrupt controller interrupt handler to the hardware
	 * interrupt handling logic in the processor.
	 */

	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, &InterruptController);

	inizializzato = 1;

	return XST_SUCCESS;
}

XScuGic* getGicInstance()
{
	if (!inizializzato)
	{
		init_zynq_gic();
		return &InterruptController;
	}
	else if (inizializzato == -1)
		return NULL;
	else
		return &InterruptController;
}
