/*
 * pl_reset.c
 *
 *  Created on: 19/mar/2016
 *      Author: Riccardo
 */

#include "pl_reset.h"

#include "xgpio.h"
#include <stdio.h>


#define RESET_ENABLED 0
#define RESET_DISABLED 1

static XGpio resetGPIO;
static int inizializzato = 0;

static int pl_is_on_reset = 0;

int pl_reset_initialize()
{
	if (inizializzato == 0)
	{
		XGpio_Config *gpio_config;

		xil_printf("Configurazione reset GPIO\n");

		gpio_config = XGpio_LookupConfig(XPAR_AXI_GPIO_PL_RESET_DEVICE_ID);
		if (gpio_config == NULL)
		{
			perror("Device config not found");
			inizializzato = -1;
			return inizializzato;
		}

		if (XGpio_CfgInitialize(&resetGPIO, gpio_config, gpio_config->BaseAddress) != XST_SUCCESS)
		{
			perror("Errore inizializzazione");
			inizializzato = -1;
			return inizializzato;
		}

		inizializzato = 1;
	}

	return inizializzato;

}

int pl_reset_enable()
{
	int init = pl_reset_initialize();
	if (init == 1)
	{
		pl_is_on_reset = 1;
		XGpio_DiscreteWrite(&resetGPIO, 1, RESET_ENABLED);
		return 0;
	}
	else return init;
}

int pl_reset_disable()
{
	int init = pl_reset_initialize();
	if (init == 1)
	{
		XGpio_DiscreteWrite(&resetGPIO, 1, RESET_DISABLED);
		pl_is_on_reset = 0;
		return 0;
	}
	else return init;
}

int pl_reset_keep_for(int usec)
{
	int init = pl_reset_initialize();
	if (init == 1)
	{
		pl_reset_enable();
		usleep(usec);
		pl_reset_disable();
		return 0;
	}
	else return init;
}

int pl_reset()
{
	return pl_reset_keep_for(1000);
}

int is_pl_on_reset()
{
	return pl_is_on_reset;
}
