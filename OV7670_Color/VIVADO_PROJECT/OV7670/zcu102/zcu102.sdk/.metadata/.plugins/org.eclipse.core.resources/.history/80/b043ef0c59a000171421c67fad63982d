/*
 * ddr_to_axis_reader.c
 *
 *  Created on: Feb 2, 2017
 *      Author: Mattia Bernasconi
 *        Mail: mattia@studiobernasconi.com
 */

#include "ddr_to_axis_reader_SD.h"
#include "read_sd_card.h"

int init_ddr_to_axis_reader_SD(void)
{
	int status;

	status = XDdr_to_axis_reader_sd_Initialize(&reader_sd, XPAR_XDDR_TO_AXIS_READER_SD_0_DEVICE_ID);

	if (status != XST_SUCCESS)
	{
		xil_printf("Errore inizializzazione reader\n");
		return status;
	}
	return XST_SUCCESS;
}

int configure_ddr_to_axis_reader_SD(void)
{
	XDdr_to_axis_reader_sd_Set_base_address(&reader_sd, FRAME_BUFFER_BASE_ADDR_SD);
	//XDdr_to_axis_reader_sd_Set_stereo_enabler(&reader_sd, ENABLE_STEREO_STREAM );
	if(ENABLE_STEREO_STREAM)																			/* DUAL CHANNEL */
	{
		XDdr_to_axis_reader_sd_Set_frame_buffer_number(&reader_sd, total_Images_Read_Dual());
		XDdr_to_axis_reader_sd_Set_frame_buffer_dim(&reader_sd, 2*FRAME_BUFFER_DIM);
		XDdr_to_axis_reader_sd_Set_frame_buffer_offset(&reader_sd, 2*FRAME_BUFFER_DIM);
	}
	else																								/* MONO CHANNEL */
	{
		XDdr_to_axis_reader_sd_Set_frame_buffer_number(&reader_sd, total_Images_Read_Mono());
		XDdr_to_axis_reader_sd_Set_frame_buffer_dim(&reader_sd, FRAME_BUFFER_DIM);
		XDdr_to_axis_reader_sd_Set_frame_buffer_offset(&reader_sd, FRAME_BUFFER_DIM);
	}
	XDdr_to_axis_reader_sd_Set_update_intr(&reader_sd, 1);
	XDdr_to_axis_reader_sd_EnableAutoRestart(&reader_sd);
	XDdr_to_axis_reader_sd_Start(&reader_sd);

	return XST_SUCCESS;
}
