#include "opencv2/highgui/highgui.hpp"
#include "opencv/cv.h"
#include "opencv/highgui.h"
#include <iostream>

using namespace cv;
using namespace std;

#ifndef CV_functions
#define CV_functions

void inverseMatrixAllocation(Mat *inverse_matrix);
void buildViewMatrix(CvMat *R_vector, CvMat *t_vector, double *vmtx_asArray, Mat inverse_matrix);
int pose_single_camera_checkerboard_and_buildViewMatrix(double *vmtx_asArray, CvMat *A, CvMat *D, IplImage *Input_Grayscale_Image, IplImage *Output_Color_Image, Mat inverse_matrix, int horizontal_corners, int vertical_corners, float square_size_in_cm);

#endif // CV_functions
