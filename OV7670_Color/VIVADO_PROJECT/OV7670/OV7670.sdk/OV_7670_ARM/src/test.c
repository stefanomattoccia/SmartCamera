/*
 * test.c
 *
 *  Created on: Feb 13, 2017
 *      Author: Mattia Bernasconi
 *        Mail: mattia@studiobernasconi.com
 */
#include "test.h"

//Test per interrupt annidati
void test_neasted_interrupts()
{
	//NUMBER OF TEST LOOP
	static int MAX_TEST = 100;

	BYTE slave_address, slave_register, read_data_register;
	slave_address = OV7670_SLAVE_ADDRESS;

	xil_printf("\n***TESTING IIC READ AT 0x0A FOR %d TIMES***\n", MAX_TEST);
	slave_register = 0x0A;
	int i;
	for(i = 1; i <= MAX_TEST; i++)
	{
		I2C_read_8_bit(slave_address, slave_register, &read_data_register);
		xil_printf("[I2C_Read n. %d] = %x\n", i, read_data_register);
	}

	sleep(1);

	xil_printf("\n***TESTING IIC READ AT 0x0B FOR %d TIMES***\n", MAX_TEST);
	slave_register = 0x0B;
	for(i = 1; i <= MAX_TEST; i++)
	{
		I2C_read_8_bit(slave_address, slave_register, &read_data_register);
		xil_printf("[I2C_Read n. %d] = %x\n", i, read_data_register);
	}

	xil_printf("\n");
}
