#ifndef CONFIGURABLE_CONVOLUTION_FILTER
#define CONFIGURABLE_CONVOLUTION_FILTER

#include "ap_int.h"

#define BIT_ACCURATE

#define IMG_HEIGHT 480
#define IMG_WIDTH 640

//Uncomment the line below to enable configurability
#define CONFIGURABLE

//Kernel size
#define KERNEL_HEIGHT 7
#define KERNEL_WIDTH 7

//Default 8
#define PIXEL_BITS 8
//Default 8
#define WEIGHT_BITS 8
//Set this to at least
//ceil(log_2(2^(PIXEL_BITS + WEIGHT_BITS) * KERNEL_HEIGHT * KERNEL_WIDTH))
#define MAC_BITS 22
//Set this to at least PIXEL_BITS + WEIGHT_BITS
#define MUL_BITS 16

typedef ap_uint<PIXEL_BITS> pixel;
typedef ap_int<WEIGHT_BITS> s_int;

#define END_PARAMS 2

const int CONFIG_LEN = KERNEL_HEIGHT * KERNEL_WIDTH + END_PARAMS;
const int KERNEL_SUM_INDEX = CONFIG_LEN - 2;
const int KERNEL_OFF_INDEX = CONFIG_LEN - 1;

const int KERNEL_MID_HEIGHT = (KERNEL_HEIGHT - 1) / 2;
const int KERNEL_MID_WIDTH = (KERNEL_WIDTH - 1) / 2;

pixel pixel_weighted_average(s_int kernel[KERNEL_HEIGHT][KERNEL_WIDTH],
		s_int kern_sum,
		s_int kern_off,
		pixel window[KERNEL_HEIGHT][KERNEL_WIDTH]);

#if defined(CONFIGURABLE)
void convolution_filter
(
		s_int kernel_config[CONFIG_LEN],
		pixel in_img[IMG_HEIGHT*IMG_WIDTH],
		pixel out_img[IMG_HEIGHT*IMG_WIDTH]
);
#else
void convolution_filter
(
		pixel in_img[IMG_HEIGHT*IMG_WIDTH],
		pixel out_img[IMG_HEIGHT*IMG_WIDTH]
);
#endif

#endif


