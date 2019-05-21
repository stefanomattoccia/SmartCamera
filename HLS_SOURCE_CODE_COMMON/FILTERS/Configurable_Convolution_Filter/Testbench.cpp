#include "Testbench.h"

int main()
{

	printf("[INFO] Starting testbench\n");


	pixel *in_img   = (pixel*)malloc(sizeof(pixel)*IMG_HEIGHT*IMG_WIDTH);
	pixel *out_img  = (pixel*)malloc(sizeof(pixel)*IMG_HEIGHT*IMG_WIDTH);

	unsigned char *R_IN =(unsigned char *)malloc(IMG_HEIGHT * IMG_WIDTH * sizeof(unsigned char));
	unsigned char *G_IN =(unsigned char *)malloc(IMG_HEIGHT * IMG_WIDTH * sizeof(unsigned char));
	unsigned char *B_IN =(unsigned char *)malloc(IMG_HEIGHT * IMG_WIDTH * sizeof(unsigned char));
	unsigned char *R_OUT =(unsigned char *)malloc(IMG_HEIGHT * IMG_WIDTH * sizeof(unsigned char));
	unsigned char *G_OUT =(unsigned char *)malloc(IMG_HEIGHT * IMG_WIDTH * sizeof(unsigned char));
	unsigned char *B_OUT =(unsigned char *)malloc(IMG_HEIGHT * IMG_WIDTH * sizeof(unsigned char));


	// Read image
	if (BMP_Read(PATH_IN, IMG_HEIGHT, IMG_WIDTH, R_IN, G_IN, B_IN) != 0)
	{	printf("[ERROR] File %s not found, aborting\n");
	return -1;
	}


	printf("[INFO] Read image %s from file\n", PATH_IN);
	printf("[INFO] Copying to input image\n");

	//filter setup

	s_int filter[] = {
			-1,-2,-4, 0, 4, 2, 1,
			-1,-2,-4, 0, 4, 2, 1,
			-2,-4,-6, 0, 6, 4, 2,
			-4,-6,-8, 0, 8, 6, 4,
			-2,-4,-6, 0, 6, 4, 2,
			-1,-2,-4, 0, 4, 2, 1,
			-1,-2,-4, 0, 4, 2, 1,

			120, 127
	};

	s_int filter_neutral[] = {
			 1, 0, 0, 0, 0, 0, 0,
			 0, 1, 0, 0, 0, 0, 0,
			 0, 0, 1, 0, 0, 0, 0,
			 0, 0, 0, 1, 0, 0, 0,
			 0, 0, 0, 0, 1, 0, 0,
			 0, 0, 0, 0, 0, 1, 0,
			 0, 0, 0, 0, 0, 0, 1,

			7, 0
	};

	// Init input image
	for(int y = 0; y < IMG_HEIGHT; y++)
		for(int x = 0; x < IMG_WIDTH; x++)
			in_img[y*IMG_WIDTH + x] = (pixel)((pixel)R_IN[y*IMG_WIDTH + x]);


	// Convolution filter
	printf("[INFO] Processing %s\n", PATH_IN);
#if defined(CONFIGURABLE)
	convolution_filter(filter_neutral, in_img, out_img);
#else
	convolution_filter(in_img, out_img);
#endif

	// Verify output
	// TO DO
	int error = 0;
	printf("[INFO] Verifying results (TODO)\n");

	// Write result to output file
	printf("[INFO] Writing output image\n");

	for(int y =0; y < IMG_HEIGHT; y++)
		for(int x = 0; x < IMG_WIDTH; x++)
		{
			R_OUT[y*IMG_WIDTH + x] = (unsigned char)out_img[y*IMG_WIDTH + x];
			G_OUT[y*IMG_WIDTH + x] = (unsigned char)out_img[y*IMG_WIDTH + x];
			B_OUT[y*IMG_WIDTH + x] = (unsigned char)out_img[y*IMG_WIDTH + x];
		}


	int write_tmp2 = BMP_Write(PATH_OUT, IMG_HEIGHT, IMG_WIDTH, R_OUT, G_OUT, B_OUT);


	if(write_tmp2 != 0)
	{
		printf("Write BMP %s failed\n", PATH_OUT);
		error = -2;
	}

	free(R_IN);
	free(G_IN);
	free(B_IN);
	free(R_OUT);
	free(G_OUT);
	free(B_OUT);

	return error;

}
