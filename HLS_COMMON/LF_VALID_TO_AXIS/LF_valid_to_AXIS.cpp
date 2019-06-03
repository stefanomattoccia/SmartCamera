#include "LF_valid_to_AXIS.h"

void LF_valid_to_AXIS(volatile byte* data_in, volatile bool* frame_valid, volatile bool* line_valid, hls::stream<byte> &outputStream)
{
	#pragma HLS INTERFACE axis port=outputStream
	#pragma HLS INTERFACE ap_none port=data_in
	#pragma HLS INTERFACE ap_none port=frame_valid
	#pragma HLS INTERFACE ap_none port=line_valid

	static bool res = true;
	#pragma HLS RESET variable=res

	/*
	 * Al momento del reset del modulo é possibile che il sensore
	 * non sia stato anch'esso resettato, ma si trovi nel mezzo
	 * dell'invio di un frame. Per riallinearsi con il flusso dei dati
	 * dei sensori aspetto che frame_valid sia a 0.
	 */

	if (res)
	{
		if(*frame_valid == false)
			res = false;
	}
	else
	{
		if (*frame_valid == true && *line_valid == true)
		{
			outputStream.write((byte)*data_in);
		}
	}
}
