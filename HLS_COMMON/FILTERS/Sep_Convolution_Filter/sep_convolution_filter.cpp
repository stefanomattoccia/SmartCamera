#include "sep_convolution_filter.h"

pixel pixel_weighted_average_separable
(
		s_int kernel_h[KERNEL_WIDTH],
		s_int kernel_v[KERNEL_HEIGHT],
		s_int kern_sum,
		s_int kern_off,
		pixel window[KERNEL_HEIGHT]
)
{
#pragma HLS INLINE

	static ap_int<CONV_BUFFER_BITS> convolution_buffer[KERNEL_WIDTH];

	ap_int<CONV_BUFFER_BITS> temp_v = 0;
	ap_int<RESULT_BITS> temp_h = 0;
	pixel result = 0;

	vertical_convolution:  for(int i = 0; i < KERNEL_HEIGHT; i++)
	{
		temp_v = temp_v + kernel_v[i] * window[i];
	}

	horizontal_shift: for(int j = 0; j < KERNEL_WIDTH-1; j++)
	{
		convolution_buffer[j] = convolution_buffer[j+1];
		temp_h = temp_h + convolution_buffer[j]*kernel_h[j];
	}

	temp_h = temp_h + temp_v*kernel_h[KERNEL_WIDTH-1];
	convolution_buffer[KERNEL_WIDTH-1] = temp_v;

	result = ((temp_h / kern_sum) + kern_off)(PIXEL_BITS - 1,0);

	return result;
}

#if defined(CONFIGURABLE)
void sep_convolution_filter
(
		s_int kernel_config[CONFIG_LEN],
		pixel in_img[IMG_HEIGHT*IMG_WIDTH],
		pixel out_img[IMG_HEIGHT*IMG_WIDTH]
)
{
//#pragma HLS RESOURCE variable=kernel_config core=RAM_S2P_LUTRAM
#pragma HLS INTERFACE ap_ovld port=kernel_config
#else
void sep_convolution_filter
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
	static pixel window[KERNEL_HEIGHT];
#pragma HLS ARRAY_PARTITION variable=window complete dim=0

#if defined(CONFIGURABLE)
	//kernel_config
	static s_int kernel_v[KERNEL_HEIGHT];
#pragma HLS ARRAY_PARTITION variable=kernel_v complete dim=0
	static s_int kernel_h[KERNEL_WIDTH];
#pragma HLS ARRAY_PARTITION variable=kernel_h complete dim=0

	static s_int kernel_sum = 1;
	static s_int kernel_off = 0;

	static int i = 0;
	static int j = 0;
	static int iteration = 0;

	iteration = 0;
	i = 0;
	j = 0;
#else
s_int kernel_h[KERNEL_WIDTH] = { 30, 39, 48, 1, 10, 19, 28 };
s_int kernel_v[KERNEL_HEIGHT] = { 30, 38, 46, 5, 13, 21, 22 };
s_int kernel_sum = 1;
s_int kernel_off = 0;
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

				if (i == 0)
				{
					kernel_h[j] = kernel_config[iteration];
					if (j == 0)
						kernel_v[0] = kernel_h[0];
				}
				else if (j == 0)
					kernel_v[i] = kernel_config[iteration];

				j++;
			}
			else if (iteration == KERNEL_SUM_INDEX)
				kernel_sum = kernel_config[KERNEL_SUM_INDEX];
			else if (iteration == KERNEL_OFF_INDEX)
				kernel_off = kernel_config[KERNEL_OFF_INDEX];
#endif

			//copy KERN_H - 1 values from line_buffer to processing window
			if(col < IMG_WIDTH)
			{
				for(int i = 0; i < KERNEL_HEIGHT - 1; i++)
				{
					window[i] = line_buffer[i][col];
					if (i < KERNEL_HEIGHT - 2)
						line_buffer[i][col] = line_buffer[i + 1][col];
				}
			}

			//input value
			if(col < IMG_WIDTH && row < IMG_HEIGHT)
			{
				pixel in_temp = in_img[row * IMG_WIDTH + col];
				window[KERNEL_HEIGHT - 1] = in_temp;
				line_buffer[KERNEL_HEIGHT - 2][col] = in_temp;
			}

			//output value
			if (row >= KERNEL_MID_HEIGHT && col >= KERNEL_MID_WIDTH)
			{
#if defined(CONFIGURABLE)
				pixel out = pixel_weighted_average_separable
						(
								kernel_h,
								kernel_v,
								kernel_sum,
								kernel_off,
								window
						);
#else
				pixel out = pixel_weighted_average_separable
						(
								kernel_h,
								kernel_v,
								kernel_sum,
								kernel_off,
								window
						);
#endif
				out_img[(row - KERNEL_MID_HEIGHT) * IMG_WIDTH + (col - KERNEL_MID_WIDTH)] = out;
			}

#if defined(CONFIGURABLE)
			iteration++;
#endif

		} //col loop

}
