#include "mux_sd_ov.h"

void mux_sd_ov(bool switch_stream, hls::stream<byte> &data_in_sd, hls::stream<byte> &data_in_ov7670, hls::stream<byte> &outputStream)
{
	#pragma HLS INTERFACE s_axilite port=switch_stream
	#pragma HLS INTERFACE axis port=outputStream
	#pragma HLS INTERFACE axis port=data_in_sd
	#pragma HLS INTERFACE axis port=data_in_ov7670

	if (!switch_stream) //If 0 the ov7670 stream passes, else the sd_card stream passes
	{
		outputStream.write(data_in_ov7670.read());
	}
	else
	{
		outputStream.write(data_in_sd.read());
	}
}
