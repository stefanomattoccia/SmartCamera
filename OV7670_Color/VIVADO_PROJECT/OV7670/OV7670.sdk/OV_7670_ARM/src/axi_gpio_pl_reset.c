/*
 * axi_gpio_pl_reset.c
 *
 *  Created on: Feb 2, 2017
 *      Author: Mattia Bernasconi
 *        Mail: mattia@studiobernasconi.com
 */

#include "axi_gpio_pl_reset.h"

int init_axi_gpio_pl_reset(void)
{
	xil_printf("Configurazione reset GPIO\n");

	gpio_config = XGpio_LookupConfig(XPAR_AXI_GPIO_PL_RESET_DEVICE_ID);
	if (gpio_config == NULL)
	{
		perror("Device config not found in init_axi_gpio_pl_reset");
		return XST_FAILURE;
	}

	if (XGpio_CfgInitialize(&resetGPIO, gpio_config, gpio_config->BaseAddress) != XST_SUCCESS)
	{
		perror("Error init_axi_gpio_pl_reset");
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}


int reset_PL(int usec)
{
	printf("[INFO] Resetting PL...\n");

	return pl_reset_keep_for(usec);
}

int pl_reset_enable()
{
		XGpio_DiscreteWrite(&resetGPIO, 1, RESET_ENABLED);
		return 0;
}

int pl_reset_disable()
{
		XGpio_DiscreteWrite(&resetGPIO, 1, RESET_DISABLED);
		return 0;
}

int pl_reset_keep_for(int usec)
{
		pl_reset_enable();
		usleep(usec);
		pl_reset_disable();
		return 0;
}
