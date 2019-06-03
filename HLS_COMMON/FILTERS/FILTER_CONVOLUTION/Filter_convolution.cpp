#include "Filter_convolution.h"

//// kernel function
void mediaPixel (unsigned int filter_id, ptype y_window[K_H][K_W],ptype *out)
{
#pragma HLS INLINE

ap_int<20> out_temp = 0;

Edge_i:  for(int i=0; i < K_H; i++)
    Edge_j: for(int j = 0; j < K_W; j++)
      out_temp = out_temp + y_window[i][j]*M[filter_id][i][j];

out_temp = (out_temp/SumF[filter_id]) + Offset[filter_id];

*out = out_temp(7,0);

}
////


void Filter_Convolution (ap_uint<3> id_filter, ptype   in_img[HEIGHT_IMG*WIDTH_IMG],
		          ptype   out_img[HEIGHT_IMG*WIDTH_IMG])
{
#pragma HLS INTERFACE ap_none port=id_filter
#pragma HLS INTERFACE axis port=out_img
#pragma HLS INTERFACE axis port=in_img

unsigned int filter_id = id_filter.to_int();

//line buffer
static ap_uint<8> line_buffer[K_H - 1][WIDTH_IMG];
#pragma HLS ARRAY_PARTITION variable=line_buffer complete dim=1
static ap_uint<8> line_buffer_temp [K_H - 1];
#pragma HLS ARRAY_PARTITION variable=line_buffer_temp complete dim=0

//processing window
static ap_uint<8> window[K_H][K_W];
#pragma HLS ARRAY_PARTITION variable=window complete dim=0


Loop_row: for(int row = 0; row < HEIGHT_IMG + Km_H; row++){
	Loop_col: for(int col = 0; col < WIDTH_IMG + Km_W; col++)

	{
#pragma HLS PIPELINE II=1
		// shift columns of processing window
		for(int ii = 0; ii < K_H; ii++)
			for(int jj = 0; jj < K_W-1; jj++)
				window[ii][jj] = window[ii][jj+1];


		//line_buffer_temp
		if(col < WIDTH_IMG)
			for(int ii = 0; ii < K_H - 1; ii++)
				line_buffer_temp[ii] = line_buffer[ii][col];



		// copy K_H - 1 values from line_buffer to processing window
		if(col < WIDTH_IMG)
			for(int ii = 0; ii < K_H - 1; ii++)
				window[ii][K_W - 1] = line_buffer_temp[ii];


		//shift row of line buffer
		if(col < WIDTH_IMG)
			for(int ii = 0; ii < K_H-2; ii++)
				line_buffer[ii][col]= line_buffer_temp[ii+1];


		//input value
		if(col < WIDTH_IMG & row < HEIGHT_IMG)
		{
			ptype in_temp = in_img[row*WIDTH_IMG+col];
			window[K_H-1][K_W-1]  = in_temp;
			line_buffer[K_H-2][col] = in_temp;
		}

		//output value
		if (row - Km_H >= 0 && col - Km_W >= 0)
		{
			ptype out_temp = 0;
			mediaPixel (filter_id, window, &out_temp);
			out_img[(row - Km_H)*WIDTH_IMG+(col - Km_W)] = out_temp;
		}

    } //loop columns
}//loop rows

}
