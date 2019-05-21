#include "ddr_to_axis_reader_SD.h"

void ddr_to_axis_reader_SD(hls::stream<DATA_OUT> &outStream_channel_1, hls::stream<DATA_OUT> &outstream_channel_2, volatile u64* base_ddr_addr,
		u32 base_address, u32 frame_buffer_dim, u32 frame_buffer_offset, u8 frame_buffer_number, bool update_intr, bool stereo_enabler)
{
	#pragma HLS INTERFACE s_axilite port=return
	#pragma HLS INTERFACE s_axilite port=base_address
	#pragma HLS INTERFACE s_axilite port=update_intr
	#pragma HLS INTERFACE s_axilite port=frame_buffer_number
	#pragma HLS INTERFACE s_axilite port=frame_buffer_offset
	#pragma HLS INTERFACE s_axilite port=frame_buffer_dim
	#pragma HLS INTERFACE s_axilite port=stereo_enabler
	#pragma HLS INTERFACE axis port = outStream_channel_1		/* main transmission channel, always active (mono)*/
	#pragma HLS INTERFACE axis port = outstream_channel_2		/* secondary transmission channel, activated only by STEREO_ENABLER*/
	#pragma HLS INTERFACE m_axi depth=128 port=base_ddr_addr

	u64 buffer[BUFFER_SIZE/sizeof(u64)];
	#pragma HLS RESOURCE variable=buffer core=RAM_2P_BRAM
	DATA_OUT* buffer_pointer = (DATA_OUT*) buffer;

	static int inner_index = 0;
#pragma HLS RESET variable=inner_index

	static int luma_chroma_switch = 0;
#pragma HLS RESET variable=luma_chroma_switch

	static u32 FRAME_BUFFER_DIM = frame_buffer_dim;
#pragma HLS RESET variable=FRAME_BUFFER_DIM

	static u32 FRAME_OFFSET = frame_buffer_offset;
#pragma HLS RESET variable=FRAME_OFFSET

	static u32 FRAME_BUFFER_NUMBER = frame_buffer_number;
#pragma HLS RESET variable=FRAME_BUFFER_NUMBER

	static u32 BASE_ADDRESS = base_address;
#pragma HLS RESET variable=BASE_ADDRESS

	if (update_intr)
	  {
		update_intr = 0;
	    FRAME_BUFFER_DIM = frame_buffer_dim;
	    FRAME_BUFFER_NUMBER = frame_buffer_number;
	    FRAME_OFFSET = frame_buffer_offset;
	    BASE_ADDRESS = base_address / sizeof(u64);
	  }

		// i contains the amount of time the buffer has been filled
		int offset = BASE_ADDRESS + inner_index * FRAME_OFFSET / sizeof(u64);
		for(int i = 0; i < FRAME_BUFFER_DIM / BUFFER_SIZE; i++)
		{
			memcpy(buffer, (u64*) &base_ddr_addr[offset], BUFFER_SIZE);
			if(!stereo_enabler)													/*only 1 channel, mono*/
			{
				for(int j = 0; j < (BUFFER_SIZE)/ sizeof(DATA_OUT); j++)
				{
					#pragma HLS PIPELINE II=1
					if(luma_chroma_switch == 1)								/* the LUMA CHROMA module needs the same byte written*/
					{														/* twice; 1 for LUMA, 1 for CHROMA.*/
						luma_chroma_switch = 0;								/* So, the pointer increases its value only when the*/
						j--;												/* byte has been written 2 times. */
						outStream_channel_1.write(buffer_pointer[j]);
					}
					else
					{
						luma_chroma_switch++;
						outStream_channel_1.write(buffer_pointer[j]);
					}
				}
			}
			else																/* 2 channels, so writing in different 2 output_stream*/
			{																	/* not considering the LUMA CHROMA case*/
				for(int j = 0; j < (BUFFER_SIZE)/ sizeof(DATA_OUT); j=j+2)
				{
					#pragma HLS PIPELINE II=1
					outStream_channel_1.write(buffer_pointer[j]);
					outstream_channel_2.write(buffer_pointer[j+1]);
				}
			}

			offset += BUFFER_SIZE / sizeof(u64);
		}

		if(inner_index == FRAME_BUFFER_NUMBER)									/* index updates every time a frame is sent*/
			inner_index = 0;
		else
			inner_index++;

}
