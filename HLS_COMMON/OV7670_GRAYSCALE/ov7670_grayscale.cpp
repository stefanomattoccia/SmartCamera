#include "ov7670_grayscale.h"

void ov7670_grayscale(stream<byte> &inStream, stream<byte> &outStream)
{
	#pragma HLS INTERFACE axis port=inStream
	#pragma HLS INTERFACE axis port=outStream

	static bool grayscale_valid = false;
	#pragma HLS RESET variable=grayscale_valid


	byte data = inStream.read();
	if (grayscale_valid)
		outStream.write(data);

	grayscale_valid = !grayscale_valid;

}
