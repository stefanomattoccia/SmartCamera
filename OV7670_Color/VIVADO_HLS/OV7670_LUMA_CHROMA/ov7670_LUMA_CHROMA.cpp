#include "ov7670_LUMA_CHROMA.h"

void ov7670_LUMA_CHROMA(stream<byte> &inStream, stream<byte> &outStream_grayscale, bool enable_raw_stream, stream<byte> &outStream_LUMA, stream<byte> &outStream_CHROMA)
{
#pragma HLS INTERFACE ap_none port=enable_raw_stream
#pragma HLS INTERFACE axis port=inStream
#pragma HLS INTERFACE axis port=outStream_grayscale
#pragma HLS INTERFACE axis port=outStream_LUMA
#pragma HLS INTERFACE axis port=outStream_CHROMA

static bool grayscale_valid = false;
#pragma HLS RESET variable=grayscale_valid


	byte data = inStream.read();
	if (grayscale_valid)
	{
		outStream_grayscale.write(data);

		if (enable_raw_stream == true)
			outStream_LUMA.write(data);

	}
	else{

		if (enable_raw_stream == true)
			outStream_CHROMA.write(data);
	}

	grayscale_valid = !grayscale_valid;

}
