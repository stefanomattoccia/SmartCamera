#include "ddr_to_axis_reader.h"

//Per co-simulation mettere i valori della simulazione e depth = 128

/*
 * Questo modulo è il duale dell' axis_to_ddr_writer. Per una documentazione più
 * dettagliata andare a leggere il codice del writer.
 */
void ddr_to_axis_reader(hls::stream<DATA_OUT> &outStream, volatile u64* base_ddr_addr, ap_uint<FRAME_INDEX_WIDTH>* frame_index,
		u32 base_address, u32 frame_buffer_dim, u32 frame_buffer_offset, u8 frame_buffer_number, bool update_intr)
{
	#pragma HLS INTERFACE s_axilite port=return
	#pragma HLS INTERFACE s_axilite port=base_address
	#pragma HLS INTERFACE s_axilite port=update_intr
	#pragma HLS INTERFACE s_axilite port=frame_buffer_number
	#pragma HLS INTERFACE s_axilite port=frame_buffer_offset
	#pragma HLS INTERFACE s_axilite port=frame_buffer_dim
	#pragma HLS INTERFACE axis port=outStream
	#pragma HLS INTERFACE m_axi depth=128 port=base_ddr_addr
	#pragma HLS INTERFACE ap_none port=frame_index

	u64 buffer[BUFFER_SIZE/sizeof(u64)];
	#pragma HLS RESOURCE variable=buffer core=RAM_2P_BRAM
	DATA_OUT* buffer_pointer = (DATA_OUT*) buffer;
	ap_uint<FRAME_INDEX_WIDTH> inner_index;

	static u32 FRAME_BUFFER_DIM = DEFAULT_FRAME_BUFFER_DIM;
#pragma HLS RESET variable=FRAME_BUFFER_DIM off
	static u32 FRAME_OFFSET = DEFAULT_FRAME_OFFSET;
#pragma HLS RESET variable=FRAME_OFFSET off
	static u32 FRAME_BUFFER_NUMBER = DEFAULT_FRAME_BUFFER_NUMBER;
#pragma HLS RESET variable=FRAME_BUFFER_NUMBER off
	static u32 BASE_ADDRESS = DEFAULT_FRAME_BUFFER_NUMBER;
#pragma HLS RESET variable=BASE_ADDRESS off

	if (update_intr)
	{
		update_intr = 0;
		FRAME_BUFFER_DIM = frame_buffer_dim;
		FRAME_BUFFER_NUMBER = frame_buffer_number;
		FRAME_OFFSET = frame_buffer_offset;
		BASE_ADDRESS = base_address / sizeof(u64);
	}

	inner_index = *frame_index;
	/*
	 * index indica il frame buffer su cui il writer sta lavorando, quindi
	 * mi posiziono su quello precedente
	 */
	if (inner_index == 0)
		inner_index = FRAME_BUFFER_NUMBER - 1;
	else inner_index--;

	// i indica quante volte ho riempito il buffer dalla ddr
	int offset = BASE_ADDRESS + inner_index * FRAME_OFFSET / sizeof(u64);
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


}
