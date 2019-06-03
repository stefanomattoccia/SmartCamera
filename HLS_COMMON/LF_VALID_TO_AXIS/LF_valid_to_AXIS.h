#include <ap_int.h>
#include "hls_stream.h"

#ifndef __SYNTHESIS__
	#include <stdio.h>
	using namespace std;
#endif

typedef ap_uint<8> byte;

void LF_valid_to_AXIS(volatile byte* data_in, volatile bool* frame_valid, volatile bool* line_valid, hls::stream<byte> &outputStream);
