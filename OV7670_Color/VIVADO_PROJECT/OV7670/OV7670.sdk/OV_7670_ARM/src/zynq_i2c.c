/*
 * zynq_i2c.c
 *
 *  Created on: Feb 2, 2017
 *      Author: Mattia Bernasconi
 *        Mail: mattia@studiobernasconi.com
 */

#include "zynq_i2c.h"

void I2C_Handler(void *CallBackRef, u32 Event)
{
	/*
	 * All of the data transfer has been finished.
	 */

#ifdef ENABLE_VERBOSE_DEBUG_MESSAGES
	xil_printf("[DEBUG]: Interrupt handler\n");
	xil_printf("[DEBUG]: Detected event = 0x%x\n", Event);
#endif


	if (0 != (Event & XIICPS_EVENT_COMPLETE_SEND))
	{
			SendComplete = TRUE;
			I2C_error = FALSE;

#ifdef ENABLE_VERBOSE_DEBUG_MESSAGES
			xil_printf("[DEBUG]: Send complete event\n");
#endif

	}
	else if (0 != (Event & XIICPS_EVENT_COMPLETE_RECV))
	{
		ReceiveComplete = TRUE;
		I2C_error = FALSE;

#ifdef ENABLE_VERBOSE_DEBUG_MESSAGES
		xil_printf("[DEBUG]: Receive complete event\n");
#endif

	}
	else if (0 == (Event & XIICPS_EVENT_SLAVE_RDY))
	{
			/*
			 * If it is other interrupt but not slave ready interrupt,
			 * it is an error. Data was received with an error.
			 */

			TotalErrorCount++;
			I2C_error = TRUE;

			xil_printf("Number of errors = %d...\n", TotalErrorCount);
	} else
	{
		/*
		 * If it is other interrupt but not slave ready interrupt,
		 * it is an error. Data was received with an error.
		 */

		xil_printf("[DEBUG]: Different interrupt event detected = %x...\n", Event);

		TotalErrorCount++;
		I2C_error = TRUE;

		xil_printf("[DEBUG]: Number of errors = %d...\n", TotalErrorCount);

	}

}

int init_zynq_i2c(u16 DeviceId, XIicPs *Iic, XIicPs_Config *Config)
{
	xil_printf("[INFO]: I2C configuration in progress\n");
	xil_printf("[INFO]: I2Cdevice ID = %d\n", DeviceId);

	int Status;

	Config = XIicPs_LookupConfig(DeviceId);
	if (NULL == Config)
	{
		return XST_FAILURE;
	}

	Status = XIicPs_CfgInitialize(Iic, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	Status = XIicPs_SelfTest(Iic);
	if (Status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	// XIicPs_SetOptions(&Iic, XIICPS_REP_START_OPTION | XIICPS_7_BIT_ADDR_OPTION);
	XIicPs_SetOptions(Iic, XIICPS_7_BIT_ADDR_OPTION);

	// WEB
	//Già inizializzati
	/*Status = SetupInterruptSystem(Iic);
	if (Status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}*/

	//Set the IIC handler
	XIicPs_SetStatusHandler(Iic, (void *) Iic, I2C_Handler);

	//Set the IIC serial clock rate.
	XIicPs_SetSClk(Iic, IIC_SCLK_RATE);

	//Wait for bus to become idle
	while (XIicPs_BusIsBusy(Iic))
	{
		xil_printf("Bus is busy...\r");

	}

	xil_printf("[INFO]: I2C successfully configured\n");

	return 0;
}

int I2C_set_register(BYTE slave_address, BYTE slave_register)
{
	SendComplete = FALSE;
	I2C_error = TRUE;

	BYTE SendBuffer[1];

	SendBuffer[0] = slave_register;

#ifdef ENABLE_VERBOSE_DEBUG_MESSAGES
	xil_printf("[INFO]: I2C Set register [Address 0x%x] [Register 0x%x]\n", slave_address, slave_register);
#endif

	XIicPs_MasterSend(&Iic, SendBuffer, 1 , slave_address);

	while (!SendComplete)
	{
		if (0 != TotalErrorCount)
		{
			return XST_FAILURE;
		}
	}

	/*
	 * Wait bus activities to finish.
	 */
	while (XIicPs_BusIsBusy(&Iic))
	{
		xil_printf("Bus is busy...\r");
		fflush(0);
	}
	//xil_printf("FREE ###########################\r");

#ifdef ENABLE_VERBOSE_DEBUG_MESSAGES
	xil_printf("[INFO]: I2C Set register [Address 0x%x] [Register 0x%x] done\n\n", slave_address, slave_register);
#endif

	if (I2C_error == FALSE)
		return 0;
	else
		return -1;

}

int I2C_write_8_bit(BYTE slave_address, BYTE slave_register, BYTE data_L)
{
	SendComplete = FALSE;
	I2C_error = TRUE;

	BYTE SendBuffer[2];

	SendBuffer[0] = slave_register;
	SendBuffer[1] = data_L;

#ifdef ENABLE_VERBOSE_DEBUG_MESSAGES
	xil_printf("[INFO]: I2C write [Address 0x%x] [Register 0x%x] [Data 0x%x]\n", slave_address, slave_register, data_L);
#endif

	XIicPs_MasterSend(&Iic, SendBuffer, 2 , slave_address);

	// xil_printf("Waiting for send complete...\n");

	//Questo ciclo dà problemi...
	while (!SendComplete)
	{
		if (0 != TotalErrorCount)
		{
			return XST_FAILURE;
		}
	}

	/*
	 * Wait bus activities to finish.
	 */
	while (XIicPs_BusIsBusy(&Iic))
	{
		xil_printf("Bus is busy...\r");
		fflush(0);
	}
	//xil_printf("FREE @@@@@@@@@@@@@@@\r");

#ifdef ENABLE_VERBOSE_DEBUG_MESSAGES
	xil_printf("[INFO]: I2C write [Address 0x%x] [Register 0x%x] [Data 0x%x] done\n\n", slave_address, slave_register, data_L);
#endif

	if (I2C_error == FALSE)
		return 0;
	else
		return -1;
}

int I2C_read_8_bit(BYTE slave_address, BYTE slave_register, BYTE *data_L)
{
	I2C_set_register(slave_address, slave_register);

	ReceiveComplete = FALSE;
	I2C_error = TRUE;

	BYTE ReceiveBuffer[1];
	ReceiveBuffer[0] = 255;

#ifdef ENABLE_VERBOSE_DEBUG_MESSAGES
	xil_printf("[INFO]: I2C, reading 8 bit\n");
#endif

	XIicPs_MasterRecv(&Iic, ReceiveBuffer, 1, slave_address);

	while (!ReceiveComplete)
	{
		if (0 != TotalErrorCount)
		{
			return XST_FAILURE;
		}
	}

#ifdef ENABLE_VERBOSE_DEBUG_MESSAGES
	xil_printf("[INFO] I2C, read = %d [L] \n", ReceiveBuffer[0]);
#endif

	*data_L = ReceiveBuffer[0];

		/*
		 * Wait bus activities to finish.
		 */
		while (XIicPs_BusIsBusy(&Iic))
		{
			xil_printf("Bus is busy...\r");
			fflush(0);
		}

#ifdef ENABLE_VERBOSE_DEBUG_MESSAGES
	xil_printf("[INFO] I2C 8 bit read completed \n");
#endif

	if (I2C_error == FALSE)
		return 0;
	else
		return -1;
}
