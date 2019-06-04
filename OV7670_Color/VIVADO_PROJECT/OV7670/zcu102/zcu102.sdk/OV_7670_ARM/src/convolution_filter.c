/*
 * convolution_filter.c
 *
 *  Created on: Aug 23, 2017
 *      Author: Luca Bonfiglioli
 */

#include <stdlib.h>

#include "convolution_filter.h"

const int KERN_MID_H = (KERNEL_HEIGHT - 1) / 2;
const int KERN_MID_W = (KERNEL_WIDTH - 1) / 2;

char neutral_kernel_trad[] =
{
		0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 1, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0,

		1, 0
};

char neutral_kernel_sep[] =
{
		1, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0,

		1, 0, 0
};

char default_kernel[] =
{
		1,

		1, 0
};

kernel_config *kernel = NULL;
kernel_config *temp_config = NULL;

void copy_kernel_config(kernel_config* source, kernel_config** dest);

int convolution_filter_init(void)
{
	int status;

	status = XSep_convolution_filter_Initialize(&filter_sep, XPAR_XSEP_CONVOLUTION_FILTER_0_DEVICE_ID);
	status = XConvolution_filter_Initialize(&filter_trad, XPAR_XCONVOLUTION_FILTER_0_DEVICE_ID);

	if (status != XST_SUCCESS)
	{
		xil_printf("An error occurred while initializing the convolution filter\n");
		return status;
	}

	temp_config = (kernel_config*)malloc(sizeof(kernel_config));

	temp_config->height = 1;
	temp_config->width = 1;
	temp_config->sum = 1;
	temp_config->offset = 0;
	temp_config->bit_shift = 0;
	temp_config->weights = (double*)malloc(sizeof(double));
	temp_config->weights[0] = 1;

	status = convolution_filter_configure(temp_config);

	if (status != CONV_FILTER_SUCCESS)
	{
		xil_printf("An error occurred while initializing the convolution filter\n");
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

#if defined(TRADITIONAL)
int convolution_filter_configure(kernel_config *config)
{
	int length, i, j;
	char filter_stream[KERNEL_HEIGHT * KERNEL_WIDTH + END_PARAMS_TRAD];
	double temp;

	if (config->height > KERNEL_HEIGHT
			|| config->height < 0
			|| config->width > KERNEL_WIDTH
			|| config->width < 0)
		return XST_FAILURE;

	//filter_stream initialization
	for (i = 0; i < KERNEL_HEIGHT * KERNEL_WIDTH; i++)
		filter_stream[i] = 0;

	//filter_stream weights setup
	for (i = 0; i < config->height; i++)
		for (j = 0; j < config->width; j++)
		{
			temp = config->weights[i * config->width + j] * (1 << config->bit_shift);

			if (temp > 127 || temp < -128)
			{
				xil_printf("[CONV FILTER] Weight [%d,%d] is out of range\n",i,j);
				return CONV_FILTER_FAILURE;
			}

			filter_stream[(i + (KERNEL_HEIGHT - config->height) / 2) * KERNEL_WIDTH + j
						  + (KERNEL_WIDTH - config->width) / 2]
						  = (signed char)temp;
		}

	//additional parameters setup
	temp = config->sum * (1 << config->bit_shift);
	if (temp > 127 || temp < -128)
	{
		xil_printf("[CONV FILTER] Sum is out of range\n");
		return CONV_FILTER_FAILURE;
	}

	filter_stream[KERNEL_WIDTH * KERNEL_HEIGHT] = (signed char)temp;
	filter_stream[KERNEL_WIDTH * KERNEL_HEIGHT + 1] = config->offset;

	//axilite write
	length = XConvolution_filter_Write_kernel_config_V_Bytes
			(&filter_trad, 0, filter_stream, KERNEL_HEIGHT * KERNEL_WIDTH + END_PARAMS_TRAD);

	//check length
	if (length != KERNEL_HEIGHT * KERNEL_WIDTH + END_PARAMS_TRAD)
	{
		xil_printf("[CONV FILTER] An error occurred while setting the weights of the convolution filter\n");
		return CONV_FILTER_FAILURE;
	}

	length = XSep_convolution_filter_Write_kernel_config_V_Bytes
			(&filter_sep, 0, neutral_kernel_sep, KERNEL_HEIGHT * KERNEL_WIDTH + END_PARAMS_SEP);

	//check length
	if (length != KERNEL_HEIGHT * KERNEL_WIDTH + END_PARAMS_SEP)
	{
		xil_printf("[CONV FILTER] An error occurred while setting the weights of the convolution filter\n");
		return CONV_FILTER_FAILURE;
	}

	copy_kernel_config(config, &kernel);

	return CONV_FILTER_SUCCESS;
}
#endif

#if defined(SEPARABLE)
int convolution_filter_configure(kernel_config *config)
{
	int length, i, j;
	char filter_stream[KERNEL_HEIGHT * KERNEL_WIDTH + END_PARAMS_SEP];
	double temp;

	if (config->height > KERNEL_HEIGHT
			|| config->height < 0
			|| config->width > KERNEL_WIDTH
			|| config->width < 0)
		return XST_FAILURE;

	//filter_stream initialization
	for (i = 0; i < KERNEL_HEIGHT * KERNEL_WIDTH; i++)
		filter_stream[i] = 0;

	//filter_stream weights setup
	for (i = 0; i < config->height; i++)
		for (j = 0; j < config->width; j++)
		{
			temp = config->weights[i * config->width + j] * (1 << config->bit_shift);

			if (temp > 127 || temp < -128)
			{
				xil_printf("[CONV FILTER] Weight [%d,%d] is out of range\n",i,j);
				return CONV_FILTER_FAILURE;
			}

			filter_stream[i * KERNEL_WIDTH + j] = (signed char)temp;
		}

	//additional parameters setup
	temp = config->sum * (1 << config->bit_shift);
	if (temp > 127 || temp < -128)
	{
		xil_printf("[CONV FILTER] Sum is out of range\n");
		return CONV_FILTER_FAILURE;
	}

	filter_stream[KERNEL_WIDTH * KERNEL_HEIGHT] = (signed char)temp;
	filter_stream[KERNEL_WIDTH * KERNEL_HEIGHT + 1] = config->offset;

	length = XSep_convolution_filter_Write_kernel_config_V_Bytes
			(&filter_sep, 0, filter_stream, KERNEL_HEIGHT * KERNEL_WIDTH + END_PARAMS_SEP);

	//check length
	if (length != KERNEL_HEIGHT * KERNEL_WIDTH + END_PARAMS_SEP)
	{
		xil_printf("[CONV FILTER] An error occurred while setting the weights of the convolution filter\n");
		return CONV_FILTER_FAILURE;
	}

	length = XConvolution_filter_Write_kernel_config_V_Bytes
			(&filter_trad, 0, neutral_kernel_trad, KERNEL_HEIGHT * KERNEL_WIDTH + END_PARAMS_TRAD);

	//check length
	if (length != KERNEL_HEIGHT * KERNEL_WIDTH + END_PARAMS_TRAD)
	{
		xil_printf("[CONV FILTER] An error occurred while setting the weights of the convolution filter\n");
		return CONV_FILTER_FAILURE;
	}

	copy_kernel_config(config, &kernel);

	return CONV_FILTER_SUCCESS;
}
#endif

kernel_config* convolution_filter_get_kernel_config(void)
{
	copy_kernel_config(kernel, &temp_config);

	return temp_config;
}

void copy_kernel_config(kernel_config* source, kernel_config** dest)
{
	int i;

	if (*dest != NULL)
	{
		if ((*dest)->weights != NULL && (*dest)->weights != source->weights)
			free((*dest)->weights);

		free(*dest);
	}

	*dest = (kernel_config*)malloc(sizeof(kernel_config));

	(*dest)->bit_shift = source->bit_shift;
	(*dest)->height = source->height;
	(*dest)->width = source->width;
	(*dest)->sum = source->sum;
	(*dest)->offset = source->offset;
	(*dest)->weights = (double*)malloc(sizeof(double) * source->height * source->width);

	for (i = 0; i < (*dest)->height * (*dest)->width; i++)
	{
		(*dest)->weights[i] = source->weights[i];
	}

}


