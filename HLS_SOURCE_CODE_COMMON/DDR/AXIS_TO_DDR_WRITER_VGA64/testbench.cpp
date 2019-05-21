#include "axis_to_ddr_writer.h"

int main()
{
	hls::stream<DATA_IN> inputStream;
	byte ddr[FRAME_BUFFER_DIM*FRAME_BUFFER_NUMBER];
	ap_uint<LOG2_FB> index;
	unsigned int frame_count;

	int count = 0;

	for(int i = 0; i < FRAME_BUFFER_DIM / sizeof(DATA_IN); i++)
		inputStream.write((DATA_IN) count++);

	axis_to_ddr_writer(inputStream, (long long*) ddr, &index, &frame_count);
	printf("INDEX = %d\n", (int) index);
	printf("FRAME_COUNT = %d\n", frame_count);
	for(int i = 0; i < FRAME_BUFFER_DIM; i++)
		printf("%u ", ddr[i + index*FRAME_BUFFER_DIM]);

	for(int i = 0; i < FRAME_BUFFER_DIM / sizeof(DATA_IN); i++)
		inputStream.write((DATA_IN) count++);



	axis_to_ddr_writer(inputStream, (long long*) ddr, &index, &frame_count);
	printf("INDEX = %d\n", (int) index);
	printf("FRAME_COUNT = %d\n", frame_count);
	for(int i = 0; i < FRAME_BUFFER_DIM; i++)
		printf("%u ", ddr[i + index*FRAME_BUFFER_DIM]);



}
