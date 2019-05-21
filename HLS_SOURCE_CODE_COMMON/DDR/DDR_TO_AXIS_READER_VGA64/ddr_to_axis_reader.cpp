#include "ddr_to_axis_reader.h"

//Per co-simulation mettere i valori della simulazione e depth = 128

/*
 * Questo modulo è il duale dell' axis_to_ddr_writer. Per una documentazione più
 * dettagliata andare a leggere il codice del writer.
 */
void ddr_to_axis_reader(hls::stream<DATA_OUT> &outStream, volatile u64* base_ddr_addr, ap_uint<LOG2_FB>* frame_index,
		unsigned int* frame_count, unsigned int* frame_count_equals)
{
	#pragma HLS INTERFACE ap_none port=frame_count_equals
	#pragma HLS INTERFACE ap_none port=frame_count
	#pragma HLS INTERFACE axis port=outStream
	#pragma HLS INTERFACE m_axi depth=128 port=base_ddr_addr
	#pragma HLS INTERFACE ap_none port=frame_index

	long long buffer[BUFFER_SIZE/sizeof(u64)];
	#pragma HLS RESOURCE variable=buffer core=RAM_2P_BRAM
	DATA_OUT* buffer_pointer = (DATA_OUT*) buffer;
	ap_uint<LOG2_FB> inner_index;

	static int frame_count_inner = 0;
	static int index_old = -1;
	static int frame_count_equals_inner = 0;

	inner_index = *frame_index;
	/*
	 * index indica il frame buffer su cui il writer sta lavorando, quindi
	 * mi posiziono su quello precedente
	 */
	if (inner_index == 0)
		inner_index = FRAME_BUFFER_NUM - 1;
	else inner_index--;

	// i indica quante volte ho riempito il buffer dalla ddr
	int offset = inner_index * FRAME_OFFSET / sizeof(u64);
	for(int i = 0; i < FRAME_BUFFER_DIM / BUFFER_SIZE; i++)
	{
		memcpy(buffer, (u64*) &base_ddr_addr[offset], BUFFER_SIZE);
		for(int j = 0; j < BUFFER_SIZE / sizeof(DATA_OUT); j++)
		{
			#pragma HLS PIPELINE II=1
			outStream.write(buffer_pointer[j]);
		}
		offset += BUFFER_SIZE / sizeof(u64);
	}

	frame_count_inner++;
	*frame_count = frame_count_inner;

	if (inner_index == index_old)
	{
		frame_count_equals_inner++;
		*frame_count_equals = frame_count_equals_inner;
	}

	index_old = inner_index;


}
