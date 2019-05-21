#include <ap_int.h>
#include "hls_stream.h"


typedef ap_uint<8> byte;

void mux_sd_ov(bool switch_stream, volatile byte* data_in, hls::stream<byte> &outputStream);
