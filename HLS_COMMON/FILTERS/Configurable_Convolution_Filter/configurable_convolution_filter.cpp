#include "configurable_convolution_filter.h"

pixel pixel_weighted_average
(
		s_int kernel[KERNEL_HEIGHT][KERNEL_WIDTH],
		s_int kern_sum,
		s_int kern_off,
		pixel window[KERNEL_HEIGHT][KERNEL_WIDTH]
)
{
#pragma HLS INLINE

	ap_int<MAC_BITS> out_temp = 0;
	ap_int<MUL_BITS> temp = 0;
#pragma HLS RESOURCE variable=temp core=Mul_LUT

	Edge_i:  for(int i = 0; i < KERNEL_HEIGHT; i++)
		Edge_j: for(int j = 0; j < KERNEL_WIDTH; j++)
		{
			temp = window[i][j] * kernel[i][j];
			out_temp = out_temp + temp;
		}

	return ((out_temp / kern_sum) + kern_off)(PIXEL_BITS - 1,0);
}

#if defined(CONFIGURABLE)
void convolution_filter
(
		s_int kernel_config[CONFIG_LEN],
		pixel in_img[IMG_HEIGHT*IMG_WIDTH],
		pixel out_img[IMG_HEIGHT*IMG_WIDTH]
)
{
	//This directive should force axilite port to use LUT RAM instead of BRAM
	//Due to Vivado HLS 2016.2 bug it does not work and it has been commented out
	//#pragma HLS RESOURCE variable=kernel_config core=RAM_S2P_LUTRAM
#pragma HLS INTERFACE s_axilite port=kernel_config
#else
void convolution_filter
(
		pixel in_img[IMG_HEIGHT*IMG_WIDTH],
		pixel out_img[IMG_HEIGHT*IMG_WIDTH]
)
{
#endif

#pragma HLS INTERFACE axis port=out_img
#pragma HLS INTERFACE axis port=in_img

	//line buffer
	static pixel line_buffer[KERNEL_HEIGHT - 1][IMG_WIDTH];
#pragma HLS ARRAY_PARTITION variable=line_buffer complete dim=1

	//processing window
	static pixel window[KERNEL_HEIGHT][KERNEL_WIDTH];
#pragma HLS ARRAY_PARTITION variable=window complete dim=0

#if defined(CONFIGURABLE)
	//kernel_config
	static s_int kernel[KERNEL_HEIGHT][KERNEL_WIDTH];
#pragma HLS ARRAY_PARTITION variable=kernel complete dim=0

	static s_int kernel_sum = 1;
	static s_int kernel_off = 0;

	static int i = 0;
	static int j = 0;
	static int iteration = 0;

	iteration = 0;
	i = 0;
	j = 0;
#else
	//Default 17x17 kernel, sum and offset (for non-configurable version only)
	s_int kernel[KERNEL_HEIGHT][KERNEL_WIDTH] =
	{
			{ -24,  71, -22, -12, -46, 128, -53, 109, -86,  78,  59,  44, 115, 124, 100, -57,  -3},
			{  67, -43, 121,-100, 105, 104,  14,  -9, -37, -81, -28, -76,  32,  74,  27, -25, -77},
			{-114,  56, -78, -39,  36, -37, -90, -34,-122,-104, -39, 106, -33,  85,  44,  51,  78},
			{  71,  28,  53, -43,-110,-113,   3, -11, -62, -94, -66,  93,   8, -15, 106, -65,  34},
			{ -62,  98, 125, -24, -65,-126,  -1,  24, 107,  93, -20,  23,  16, -71, -35, -85, 109},
			{  49, -68, 124, -77,  48, -67, -43, 109,-103,  92, -35,-125,-101, 127, -60, 124, 123},
			{  43, -69, 124, -86,  82, 103,-122, -67,  -3,  21, -10,  89,  63, -30,  10, 122, -35},
			{  60,  41,  26,-112,  22,  50, 108, 114,  52,-122, 112, 120,-127, 106,  34, -69, 102},
			{  75,-116,  76,  81, -55, -56, -27,  62, -96, -92, -97,  41, -99,  -4, -27,  70,-107},
			{ -12, -37,  70, -33, -52,  -6, -28, -68, -15, -27, -91,-110,  31,-118,  93,  43,  85},
			{  45, 115,-100,-111,  48, -68, -76,  78, 100, -47, -55, -56,-106, -35,  60, -16, -93},
			{-102,  59,  28,  -2, 118,-116,  98,-101, -99,   0, -92, 121, -86, 121,  37,-100,-108},
			{  54,  75, -49, 105,  25, -77, -71,  97,  -6, -50, -66, -75,  61, -32, -49,  -8, 123},
			{  76, -19,-122,  45,   7, -94, -84,  43,-101, -42,  35,  63, -15,  54, -12, -68,-123},
			{ -35,  84, -73,  21,  52,  48,  99, 113, 101,  31, -48, -77,-106, -54, 126,   3, -49},
			{  42,-119, -15,  85,  51,  11, -86, -43, -55,  27,-117,  61,  86,-113,-103,  41, -59},
			{  45, -36, 116,  15, -51,  88, -82,  28,-118, -61, 102,-121,  69, -76,  48,  78,  36}
	};

	s_int kernel_sum = 127;
	s_int kernel_off = 63;
#endif

	Loop_row: for(int row = 0; row < IMG_HEIGHT + KERNEL_MID_HEIGHT; row++)
		Loop_col: for(int col = 0; col < IMG_WIDTH + KERNEL_MID_WIDTH; col++)
		{
#pragma HLS PIPELINE II=1

#if defined(CONFIGURABLE)
			//kernel_config setup
			if (iteration < KERNEL_HEIGHT * KERNEL_WIDTH)
			{
				if (j >= KERNEL_WIDTH)
				{
					j = 0;
					i++;
				}
				kernel[i][j] = kernel_config[iteration];
				j++;
			}
			else if (iteration == KERNEL_SUM_INDEX)
				kernel_sum = kernel_config[KERNEL_SUM_INDEX];
			else if (iteration == KERNEL_OFF_INDEX)
				kernel_off = kernel_config[KERNEL_OFF_INDEX];
#endif

			//shift processing window columns
			for(int ii = 0; ii < KERNEL_HEIGHT; ii++)
				for(int jj = 0; jj < KERNEL_WIDTH - 1; jj++)
					window[ii][jj] = window[ii][jj+1];

			//copy KERN_H - 1 values from line_buffer to processing window
			if(col < IMG_WIDTH)
			{
				for(int ii = 0; ii < KERNEL_HEIGHT - 1; ii++)
				{
					window[ii][KERNEL_WIDTH - 1] = line_buffer[ii][col];
					if (ii < KERNEL_HEIGHT - 2)
						line_buffer[ii][col] = line_buffer[ii + 1][col];
				}
			}

			//input value
			if(col < IMG_WIDTH && row < IMG_HEIGHT)
			{
				pixel in_temp = in_img[row * IMG_WIDTH + col];
				window[KERNEL_HEIGHT - 1][KERNEL_WIDTH - 1] = in_temp;
				line_buffer[KERNEL_HEIGHT - 2][col] = in_temp;
			}

			//output value
			if (row >= KERNEL_MID_HEIGHT && col >= KERNEL_MID_WIDTH)
			{
				pixel out = pixel_weighted_average(kernel, kernel_sum, kernel_off, window);
				out_img[(row - KERNEL_MID_HEIGHT) * IMG_WIDTH + (col - KERNEL_MID_WIDTH)] = out;
			}

#if defined(CONFIGURABLE)
			iteration++;
#endif

		} //col loop

}
