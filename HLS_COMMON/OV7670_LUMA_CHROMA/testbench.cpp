#include "ov7670_LUMA_CHROMA.h"

int main()
{


	stream<byte> inStream;
	stream<byte> outStream_grayscale;
	stream<byte> outStream_LUMA;
	stream<byte> outStream_CHROMA;

	bool enable_raw_stream = true;

	for(int i = 0; i < 10; i++)
		inStream.write(i);

	for(int i = 0; i < 10; i++)
		ov7670_LUMA_CHROMA(inStream, outStream_grayscale, enable_raw_stream, outStream_LUMA, outStream_CHROMA);

	printf("Valori campionati grayscale:\n");

	for(int i = 0; i < 5; i++)
		printf("%d\n", (unsigned char) outStream_grayscale.read());

	printf("Valori campionati LUMA:\n");

	for(int i = 0; i < 5; i++)
		printf("%d\n", (unsigned char) outStream_LUMA.read());

	printf("Valori campionati CHROMA:\n");

	for(int i = 0; i < 5; i++)
		printf("%d\n", (unsigned char) outStream_CHROMA.read());

}
