#include "ddr_to_axis_reader_SD.h"
#include <stdio.h>

int main()
{
	hls::stream<DATA_OUT> outStream;
	byte ddr[FRAME_BUFFER_DIM * FRAME_BUFFER_NUM];
	ap_uint<LOG2_FB> index;
	unsigned int frame_count;
	unsigned int frame_count_equals = 1;


	//Riempo la memoria
	for(int i = 0; i < FRAME_BUFFER_DIM*FRAME_BUFFER_NUM*2; i++)
		ddr[i] = (byte)(i);

	/*
	 * Prima lettura
	 */
	index = 0;
	ddr_to_axis_reader_SD(outStream, (long long*) ddr, &index, &frame_count, &frame_count_equals);

	printf("FRAME_COUNT = %d\n", frame_count);
	printf("FRAME_COUNT_EQUALS = %d\n", frame_count_equals);
	for(int i = 0; i < FRAME_BUFFER_DIM; i++)
		printf("%d ", (int) outStream.read());
	printf("\n\n");


	/*
	 * Seconda lettura
	 */
	index = 1;
	ddr_to_axis_reader_SD(outStream, (long long*) ddr, &index, &frame_count, &frame_count_equals);

	printf("FRAME_COUNT = %d\n", frame_count);
	printf("FRAME_COUNT_EQUALS = %d\n", frame_count_equals);
	for(int i = 0; i < FRAME_BUFFER_DIM; i++)
		printf("%d ", (int) outStream.read());
	printf("\n\n");


	return 0;
}
