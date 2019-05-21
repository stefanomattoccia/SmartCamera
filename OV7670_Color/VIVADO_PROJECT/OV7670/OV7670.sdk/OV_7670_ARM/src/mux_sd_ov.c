#include "mux_sd_ov.h"

int init_mux_sd_switch_ov()
{
	int status;

	status = XMux_sd_ov_Initialize(&mux, XPAR_XMUX_SD_OV_0_DEVICE_ID);

	if (status != XST_SUCCESS)
	{
		xil_printf("Error initializing multiplexer module\n");
		return status;
	}
	return XST_SUCCESS;
}

int configure_mux_sd_switch_ov(void)
{
	XMux_sd_ov_Set_switch_stream(&mux, SD_STREAM_ENABLER);			//set the data selector, 0 for camera stream, 1 for SD stream

	return XST_SUCCESS;
}
