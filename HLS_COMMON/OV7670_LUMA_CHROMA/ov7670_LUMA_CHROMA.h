#include "hls_stream.h"
#include "ap_int.h"

using namespace hls;

typedef ap_uint<8> byte;

void ov7670_LUMA_CHROMA(stream<byte> &inStream, stream<byte> &outStream_grayscale, bool enable_raw_stream, stream<byte> &outStream_LUMA, stream<byte> &outStream_CHROMA);
