#include "../OS/os.h"
#include <opencv/cv.h>
#include <stdio.h>
#include <stdlib.h>



#define NX 9
#define NY 6
#define SIZE_X
#define SIZE_y


int detect_and_draw_corners(IplImage *input_greyscale, IplImage *input_color, IplImage *output_color);
