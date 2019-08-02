#include "../include/ddr_to_axis_reader.h"
#include "../include/platform_config.h"

void DDR2AXISReader::stop() {
	
	XDdr_to_axis_reader_DisableAutoRestart(&_reader);
    XDdr_to_axis_reader_Release(&_reader);
}

int DDR2AXISReader::init() {

	int status;

	status = XDdr_to_axis_reader_Initialize(&_reader, "ddr_to_axis_reader");

	if (status != XST_SUCCESS)
	{
		printf("Errore inizializzazione reader\n");
		return status;
	}
	return XST_SUCCESS;
}

int DDR2AXISReader::configure() {

	XDdr_to_axis_reader_Set_base_address(&_reader, FRAME_BUFFER_ADDR);
	XDdr_to_axis_reader_Set_frame_buffer_dim(&_reader, FRAME_BUFFER_DIM);
	XDdr_to_axis_reader_Set_frame_buffer_number(&_reader, FRAME_BUFFER_NUM);
	XDdr_to_axis_reader_Set_frame_buffer_offset(&_reader, FRAME_BUFFER_DIM);
	XDdr_to_axis_reader_Set_update_intr(&_reader, 1);
	XDdr_to_axis_reader_EnableAutoRestart(&_reader);
	XDdr_to_axis_reader_Start(&_reader);

	return XST_SUCCESS;
}