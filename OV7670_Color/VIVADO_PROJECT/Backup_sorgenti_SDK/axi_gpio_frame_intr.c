/*
 * axi_gpio_frame_intr.c
 *
 *  Created on: Feb 2, 2017
 *      Author: Mattia Bernasconi
 *        Mail: mattia@studiobernasconi.com
 */

#include "axi_gpio_frame_intr.h"

int init_axi_gpio_frame_intr(void)
{
	if (XGpio_Initialize(&frame_intr_gpio, XPAR_AXI_GPIO_FRAME_INTR_DEVICE_ID) != XST_SUCCESS)
	{
		xil_printf("Il GPIO del frame_index non e' stato trovato\n");
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}
