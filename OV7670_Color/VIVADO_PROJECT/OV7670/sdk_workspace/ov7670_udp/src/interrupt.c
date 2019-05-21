/*
 * interrupt.c
 *
 *  Created on: 25/mar/2016
 *      Author: Riccardo
 */

#include "interrupt.h"

#define INTC_DEVICE_ID		XPAR_SCUGIC_SINGLE_DEVICE_ID

XScuGic InterruptController;
static int inizializzato = 0; // 0 non inizializzato | 1 inizializzazione ok | -1 inizializzazione fallita

XScuGic* getGicInstance()
{
	if (!inizializzato)
	{
		int Status;
		XScuGic_Config *IntcConfig; /* Instance of the interrupt controller */

		Xil_ExceptionInit();

		/*
		 * Initialize the interrupt controller driver so that it is ready to
		 * use.
		 */
		IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
		if (NULL == IntcConfig) {
			inizializzato = -1;
			return NULL;
		}

		Status = XScuGic_CfgInitialize(&InterruptController, IntcConfig, IntcConfig->CpuBaseAddress);

		if (Status != XST_SUCCESS) {
			inizializzato = -1;
			return NULL;
		}


		/*
		 * Connect the interrupt controller interrupt handler to the hardware
		 * interrupt handling logic in the processor.
		 */

		Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT,
					(Xil_ExceptionHandler)XScuGic_InterruptHandler,
					&InterruptController);

		Xil_ExceptionEnable();

		inizializzato = 1;
		return &InterruptController;
	}
	else if (inizializzato == -1)
		return NULL;
	else
		return &InterruptController;
}

