#include "vga_bram_read_address.h"

int main()
{
	bool self;
	ap_uint<BIT_OUT> R,G,B;
	ap_uint<1> V_SYNC;
	ap_uint<1> H_SYNC;

	hls::stream<PIXEL> inStream;

	for(int i = 0; i < WIDTH*HEIGHT; i++)
		inStream.write((PIXEL) i);

	self = false;
	axi_stream_to_vga(self, inStream, &R, &G, &B, &V_SYNC, &H_SYNC);

	printf("RGB = %u %u %u\n", (unsigned char) R, (unsigned char) G, (unsigned char) B);

	return 0;
}
