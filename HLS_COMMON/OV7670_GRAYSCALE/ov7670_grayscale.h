#include "hls_stream.h"
#include "ap_int.h"

using namespace hls;

typedef ap_uint<8> byte;

void ov7670_grayscale(stream<byte> &inStream, stream<byte> &outStream);
