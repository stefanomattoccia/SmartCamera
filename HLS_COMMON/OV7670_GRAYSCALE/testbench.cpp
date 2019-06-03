#include "ov7670_grayscale.h"

int main()
{
	stream<byte> inStream;
	stream<byte> outStream;

	for(int i = 0; i < 10; i++)
		inStream.write(i);

	for(int i = 0; i < 10; i++)
		ov7670_grayscale(inStream, outStream);

	printf("Valori campionati:\n");

	for(int i = 0; i < 5; i++)
		printf("%d\n", (unsigned char) outStream.read());

}
