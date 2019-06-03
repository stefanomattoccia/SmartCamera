#include "ap_int.h"

#define BIT_ACCURATE

//image dim
#define WIDTH_IMG  640
#define HEIGHT_IMG 480


//filter window dim

#define NUMBER_OF_FILTER 8
#define K_H 3
#define K_W 3
const int Km_H = (K_H - 1 ) / 2;
const int Km_W = (K_W - 1 ) / 2;

//filter window
const int M[NUMBER_OF_FILTER][K_H][K_W] = {

							 // Neutral (1)
							 {{0, 0, 0},
		                      {0, 1, 0},
		                      {0, 0, 0}},

							 // Average (9)
							 {{1, 1, 1},
	                          {1, 1, 1},
							  {1, 1, 1}},

							 // Blur (5)
						     {{0, 1, 0},
		                      {1, 1, 1},
							  {0, 1, 0}},

							 // Gaussian (16)
						     {{1, 2, 1},
		                      {2, 4, 2},
							  {1, 2, 1}},

							 // Sobel V (8)
						     {{-1, 0, 1},
				              {-2, 0, 2},
				              {-1, 0, 1}},

							 // Sobel H (8)
							 {{-1, -2, -1},
					          { 0,  0,  0},
					          {+1,  2, +1}},

							  // Sharpeness (1)
						     {{-1, -1,  -1},
						      {-1,  9,  -1},
						      {-1, -1,  -1}},

							  // Embosss (10)
						     {{ -2, -1, 0},
						      { -1,  1, 1},
						      {  0,  1, 2}},

};




const int SumF[NUMBER_OF_FILTER] = {1,9,5,16,8,8,1,10};
const int Offset[NUMBER_OF_FILTER] = {0,0,0,0,0,0,0,128};


typedef ap_uint<8> ptype;

void Filter_Convolution(ap_uint<3> id_filter, ptype in_img[HEIGHT_IMG*WIDTH_IMG], ptype out_img[HEIGHT_IMG*WIDTH_IMG]);
