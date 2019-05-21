
#include "Testbench.h"

int main()
{

	printf("[INFO] Starting testbench\n");


	ptype *in_img   = (ptype*)malloc(sizeof(ptype)*HEIGHT_IMG*WIDTH_IMG);
	ptype *out_img  = (ptype*)malloc(sizeof(ptype)*HEIGHT_IMG*WIDTH_IMG);

	unsigned char *R_IN =(unsigned char *)malloc(HEIGHT_IMG * WIDTH_IMG * sizeof(unsigned char));
	unsigned char *G_IN =(unsigned char *)malloc(HEIGHT_IMG * WIDTH_IMG * sizeof(unsigned char));
	unsigned char *B_IN =(unsigned char *)malloc(HEIGHT_IMG * WIDTH_IMG * sizeof(unsigned char));
	unsigned char *R_OUT =(unsigned char *)malloc(HEIGHT_IMG * WIDTH_IMG * sizeof(unsigned char));
	unsigned char *G_OUT =(unsigned char *)malloc(HEIGHT_IMG * WIDTH_IMG * sizeof(unsigned char));
	unsigned char *B_OUT =(unsigned char *)malloc(HEIGHT_IMG * WIDTH_IMG * sizeof(unsigned char));


	// Read image
	if (BMP_Read(PATH_IN, HEIGHT_IMG, WIDTH_IMG, R_IN, G_IN, B_IN) != 0)
	{	printf("[ERROR] File %s not found, aborting\n");
		return -1;
	}


	printf("[INFO] Read image %s from file\n", PATH_IN);
	printf("[INFO] Copying to input image\n");


	// Init input image
	for(int y = 0; y < HEIGHT_IMG; y++)
		for(int x = 0; x < WIDTH_IMG; x++)
		  in_img[y*WIDTH_IMG + x] = (ptype)((ptype)R_IN[y*WIDTH_IMG + x]);


	// Convolution filter
	printf("[INFO] Processing %s\n", PATH_IN);
	Filter_Convolution(7, in_img, out_img);

	// Verify output
	// TO DO
	int error = 0;
	printf("[INFO] Verifying results (TODO)\n");

	// Write result to output file
	printf("[INFO] Writing output image\n");

	for(int y =0; y < HEIGHT_IMG; y++)
		for(int x = 0; x < WIDTH_IMG; x++)
		{
		  R_OUT[y*WIDTH_IMG + x] = (unsigned char)out_img[y*WIDTH_IMG + x];
		  G_OUT[y*WIDTH_IMG + x] = (unsigned char)out_img[y*WIDTH_IMG + x];
		  B_OUT[y*WIDTH_IMG + x] = (unsigned char)out_img[y*WIDTH_IMG + x];
	    }


	int write_tmp2 = BMP_Write(PATH_OUT, HEIGHT_IMG, WIDTH_IMG, R_OUT, G_OUT, B_OUT);


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
