#include "../OS/os.h"

#ifndef LINUX
#include <cv.h>
#include <cxmisc.h>
#include <highgui.h>
#include <cvaux.h>
#endif 

#ifdef LINUX
#include <opencv/cv.h>
#include <opencv/cxmisc.h>
#include <opencv/highgui.h>
#include <opencv/cvaux.h>
#endif 

#ifdef WINDOWS
#ifdef _WIN32
#ifdef LIB_POSE_ESTIMATION_EXPORTS
#define LIB_POSE_ESTIMATION_API __declspec(dllexport)
#else
#define LIB_POSE_ESTIMATION_API __declspec(dllimport)
#endif
#else
#define LIB_POSE_ESTIMATION_API
#endif
#endif 

#ifndef WINDOWS
#define LIB_POSE_ESTIMATION_API 
#endif 

LIB_POSE_ESTIMATION_API
int function_find_pose_single_camera_checkerboard(CvMat *A, CvMat *D, IplImage *Input_Grayscale_Image, IplImage *Output_Color_Image, int HORIZONTAL_CORNERS, int VERTICAL_CORNERS, float SQUARE_SIZE_IN_CM);
