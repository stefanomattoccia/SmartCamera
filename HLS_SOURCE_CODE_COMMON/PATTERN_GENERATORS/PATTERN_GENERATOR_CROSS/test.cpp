#include "pattern_generator.h"
#include <stdio.h>

int main()
{
	hls::stream<PIXEL> outputStream;

	for(int i = 0; i < 20; i++)
	{
		pattern_generator(outputStream);

		for(int y = 0; y < HEIGHT; y++)
		{
			for(int x = 0; x < WIDTH; x++)
				printf("%3d ", outputStream.read());
			printf("\n");
		}
		printf("\n\n");

	}
}
