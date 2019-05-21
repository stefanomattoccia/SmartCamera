/*
 * convolution_filter.h
 *
 *  Created on: Aug 23, 2017
 *      Author: Luca Bonfiglioli
 */

#ifndef SRC_CONVOLUTION_FILTER_H_
#define SRC_CONVOLUTION_FILTER_H_

#define CONV_FILTER_SUCCESS 0
#define CONV_FILTER_FAILURE -1

//Keep only one of these two #define simultaneously
#define TRADITIONAL
//#define SEPARABLE

#include "platform_config.h"

XSep_convolution_filter filter_sep;
XConvolution_filter filter_trad;

typedef struct kernel_config {
	unsigned char height;
	unsigned char width;
	double *weights;
	signed char sum;
	signed char offset;
	unsigned char bit_shift;
} kernel_config;

//Returns XST error code
int convolution_filter_init(void);

//Returns CONV_FILTER error code
int convolution_filter_configure(kernel_config *config);

kernel_config* convolution_filter_get_kernel_config(void);

#endif /* SRC_CONVOLUTION_FILTER_H_ */
