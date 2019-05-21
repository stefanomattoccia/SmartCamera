// lib_pose_estimation.cpp : Defines the exported functions for the DLL application.
//

#include "lib_pose_estimation.h"

#ifdef WINDOWS
#include "stdafx.h"
#endif







LIB_POSE_ESTIMATION_API
int function_find_pose_single_camera_checkerboard(CvMat *A, CvMat *D, IplImage *Input_Grayscale_Image, IplImage *Output_Color_Image, int HORIZONTAL_CORNERS, int VERTICAL_CORNERS, float SQUARE_SIZE_IN_CM)
{
			// detect corners 
			CvPoint2D32f *corners_image = NULL;
			CvSize board_sz = cvSize(HORIZONTAL_CORNERS, VERTICAL_CORNERS);
						
			corners_image = new CvPoint2D32f[(HORIZONTAL_CORNERS+1)*(VERTICAL_CORNERS+1)];
			int corner_count_image;

			//Find chessboard corners in image_0:
			int found = cvFindChessboardCorners(Input_Grayscale_Image, board_sz, corners_image, &corner_count_image, CV_CALIB_CB_ADAPTIVE_THRESH | CV_CALIB_CB_FILTER_QUADS);

			// detect corners at subpixel resolution
			// da rivedere i parametri, in particolare gli ultimi 3
			cvFindCornerSubPix(Input_Grayscale_Image, corners_image, found, cvSize(5,5), cvSize( -1, -1 ), cvTermCriteria( CV_TERMCRIT_EPS+CV_TERMCRIT_ITER, 30, 0.1 ));

			if (corner_count_image == VERTICAL_CORNERS*HORIZONTAL_CORNERS)
			{
				//Draws corners if found in both images
				// cvDrawChessboardCorners(rectified_color_shrinked_l, board_sz, corners_image_0, corner_count_image_0, found_0);
				// cvDrawChessboardCorners(Output_Color_Image, board_sz, corners_image_0, corner_count_image_0, found_0);

				// initializess object ad image points in, respectively, world coordinate space and image space

				CvMat *ObjectPoints;
				ObjectPoints = cvCreateMat(VERTICAL_CORNERS*HORIZONTAL_CORNERS, 3, CV_32FC1);

				CvMat *ImagePoints;
				ImagePoints = cvCreateMat(VERTICAL_CORNERS*HORIZONTAL_CORNERS, 2, CV_32FC1);

				for(int ii = 0; ii < VERTICAL_CORNERS; ii++)
				for(int jj = 0; jj < HORIZONTAL_CORNERS; jj++)
				{
					// object points
					CV_MAT_ELEM(*ObjectPoints, float, ii*HORIZONTAL_CORNERS + jj, 0) = float(jj*SQUARE_SIZE_IN_CM); 
					CV_MAT_ELEM(*ObjectPoints, float, ii*HORIZONTAL_CORNERS + jj, 1) = float(ii*SQUARE_SIZE_IN_CM); 
					CV_MAT_ELEM(*ObjectPoints, float, ii*HORIZONTAL_CORNERS + jj, 2) = 0.0; 

					// image points
					CV_MAT_ELEM(*ImagePoints, float, ii*HORIZONTAL_CORNERS + jj, 0) = corners_image[ii*HORIZONTAL_CORNERS + jj].x; 
					CV_MAT_ELEM(*ImagePoints, float, ii*HORIZONTAL_CORNERS + jj, 1) = corners_image[ii*HORIZONTAL_CORNERS + jj].y; 
				}

				CvMat *R_vector, *t_vector;
				R_vector = cvCreateMat(1, 3, CV_32FC1);
				t_vector = cvCreateMat(1, 3, CV_32FC1);

				cvFindExtrinsicCameraParams2(ObjectPoints, ImagePoints, A, D, R_vector, t_vector);
			


				

				// display results
				CvFont font;
				cvInitFont(&font, CV_FONT_HERSHEY_PLAIN, 1, 1, 0, 1 , 8);

				char display_string[128];
				int B = 0;
				int G = 255;
				int R = 0;

				sprintf(display_string, "R = (%3.2f,%3.2f,%3.2f)",	CV_MAT_ELEM(*R_vector, float, 0, 0),
																	CV_MAT_ELEM(*R_vector, float, 0, 1),
																	CV_MAT_ELEM(*R_vector, float, 0, 2));

				cvPutText(Output_Color_Image, display_string, cvPoint(10,  15), &font, cvScalar(B, G, R, 0));

				sprintf(display_string, "T = (%3.2f,%3.2f,%3.2f)",	CV_MAT_ELEM(*t_vector, float, 0, 0),
																	CV_MAT_ELEM(*t_vector, float, 0, 1),
																	CV_MAT_ELEM(*t_vector, float, 0, 2));

				cvPutText(Output_Color_Image, display_string, cvPoint(10,  35), &font, cvScalar(B, G, R, 0));
	




				// reproject object points on the image plane

				CvMat *reprojectedImagePoints;
				reprojectedImagePoints = cvCreateMat(VERTICAL_CORNERS*HORIZONTAL_CORNERS, 2, CV_32FC1);

				cvProjectPoints2(ObjectPoints, R_vector, t_vector, A, D, reprojectedImagePoints);

				for(int ii = 0; ii < VERTICAL_CORNERS; ii++)
				for(int jj = 0; jj < HORIZONTAL_CORNERS; jj++)
				{
					CvPoint reprojected_point;
					reprojected_point.x = CV_MAT_ELEM(*reprojectedImagePoints, float, ii*HORIZONTAL_CORNERS + jj, 0);
					reprojected_point.y = CV_MAT_ELEM(*reprojectedImagePoints, float, ii*HORIZONTAL_CORNERS + jj, 1);

					cvDrawCircle(Output_Color_Image, reprojected_point, 1, cvScalar(0, 0, 255, 0));
				}





				// ***** Draws object's reference frame ******

				CvMat *AxisObjectPoints;
				AxisObjectPoints = cvCreateMat(4, 3, CV_32FC1);

				CvMat *reprojectedAxisImagePoints;
				reprojectedAxisImagePoints = cvCreateMat(4, 2, CV_32FC1);

				// Origin
					CV_MAT_ELEM(*AxisObjectPoints, float, 0, 0) = 0.0; 
					CV_MAT_ELEM(*AxisObjectPoints, float, 0, 1) = 0.0; 
					CV_MAT_ELEM(*AxisObjectPoints, float, 0, 2) = 0.0; 

					// X vector
					CV_MAT_ELEM(*AxisObjectPoints, float, 1, 0) = (HORIZONTAL_CORNERS-1)*SQUARE_SIZE_IN_CM; 
					CV_MAT_ELEM(*AxisObjectPoints, float, 1, 1) = 0.0; 
					CV_MAT_ELEM(*AxisObjectPoints, float, 1, 2) = 0.0; 

					// Y vector
					CV_MAT_ELEM(*AxisObjectPoints, float, 2, 0) = 0.0; 
					CV_MAT_ELEM(*AxisObjectPoints, float, 2, 1) = (VERTICAL_CORNERS-1)*SQUARE_SIZE_IN_CM;
					CV_MAT_ELEM(*AxisObjectPoints, float, 2, 2) = 0.0; 

					// Z vector
					CV_MAT_ELEM(*AxisObjectPoints, float, 3, 0) = 0.0; 
					CV_MAT_ELEM(*AxisObjectPoints, float, 3, 1) = 0.0; 
					CV_MAT_ELEM(*AxisObjectPoints, float, 3, 2) = -6*SQUARE_SIZE_IN_CM; 

				cvProjectPoints2(AxisObjectPoints, R_vector, t_vector, A, D, reprojectedAxisImagePoints);

				CvPoint start_point;
				CvPoint end_point;

				CvScalar axis_color = cvScalar(0,0,255,0);
				
				// always the origin
				start_point.x = CV_MAT_ELEM(*reprojectedAxisImagePoints, float, 0, 0);
				start_point.y = CV_MAT_ELEM(*reprojectedAxisImagePoints, float, 0, 1);

				// X
				end_point.x = CV_MAT_ELEM(*reprojectedAxisImagePoints, float, 1, 0);
				end_point.y = CV_MAT_ELEM(*reprojectedAxisImagePoints, float, 1, 1);

				cvDrawLine(Output_Color_Image, start_point, end_point, axis_color, 2);

				// Y
				end_point.x = CV_MAT_ELEM(*reprojectedAxisImagePoints, float, 2, 0);
				end_point.y = CV_MAT_ELEM(*reprojectedAxisImagePoints, float, 2, 1);

				cvDrawLine(Output_Color_Image, start_point, end_point, axis_color, 2);

				// Y
				end_point.x = CV_MAT_ELEM(*reprojectedAxisImagePoints, float, 3, 0);
				end_point.y = CV_MAT_ELEM(*reprojectedAxisImagePoints, float, 3, 1);

				cvDrawLine(Output_Color_Image, start_point, end_point, axis_color, 2);





				// ****** Draws cube *******

				CvMat *CubeObjectPoints;
				CubeObjectPoints = cvCreateMat(8, 3, CV_32FC1);

				CvMat *reprojectedCubeImagePoints;
				reprojectedCubeImagePoints = cvCreateMat(8, 2, CV_32FC1);

					CV_MAT_ELEM(*CubeObjectPoints, float, 0, 0) = 3*SQUARE_SIZE_IN_CM; 
					CV_MAT_ELEM(*CubeObjectPoints, float, 0, 1) = 2*SQUARE_SIZE_IN_CM; 
					CV_MAT_ELEM(*CubeObjectPoints, float, 0, 2) = 0.0; 

					CV_MAT_ELEM(*CubeObjectPoints, float, 1, 0) = 3*SQUARE_SIZE_IN_CM; 
					CV_MAT_ELEM(*CubeObjectPoints, float, 1, 1) = 4*SQUARE_SIZE_IN_CM; 
					CV_MAT_ELEM(*CubeObjectPoints, float, 1, 2) = 0.0; 

					CV_MAT_ELEM(*CubeObjectPoints, float, 2, 0) = 5*SQUARE_SIZE_IN_CM; 
					CV_MAT_ELEM(*CubeObjectPoints, float, 2, 1) = 2*SQUARE_SIZE_IN_CM; 
					CV_MAT_ELEM(*CubeObjectPoints, float, 2, 2) = 0.0; 

					CV_MAT_ELEM(*CubeObjectPoints, float, 3, 0) = 5*SQUARE_SIZE_IN_CM; 
					CV_MAT_ELEM(*CubeObjectPoints, float, 3, 1) = 4*SQUARE_SIZE_IN_CM; 
					CV_MAT_ELEM(*CubeObjectPoints, float, 3, 2) = 0.0; 



					CV_MAT_ELEM(*CubeObjectPoints, float, 4, 0) = 3*SQUARE_SIZE_IN_CM; 
					CV_MAT_ELEM(*CubeObjectPoints, float, 4, 1) = 2*SQUARE_SIZE_IN_CM; 
					CV_MAT_ELEM(*CubeObjectPoints, float, 4, 2) = -2*SQUARE_SIZE_IN_CM; 

					CV_MAT_ELEM(*CubeObjectPoints, float, 5, 0) = 3*SQUARE_SIZE_IN_CM; 
					CV_MAT_ELEM(*CubeObjectPoints, float, 5, 1) = 4*SQUARE_SIZE_IN_CM; 
					CV_MAT_ELEM(*CubeObjectPoints, float, 5, 2) = -2*SQUARE_SIZE_IN_CM; 

					CV_MAT_ELEM(*CubeObjectPoints, float, 6, 0) = 5*SQUARE_SIZE_IN_CM; 
					CV_MAT_ELEM(*CubeObjectPoints, float, 6, 1) = 2*SQUARE_SIZE_IN_CM; 
					CV_MAT_ELEM(*CubeObjectPoints, float, 6, 2) = -2*SQUARE_SIZE_IN_CM; 

					CV_MAT_ELEM(*CubeObjectPoints, float, 7, 0) = 5*SQUARE_SIZE_IN_CM; 
					CV_MAT_ELEM(*CubeObjectPoints, float, 7, 1) = 4*SQUARE_SIZE_IN_CM; 
					CV_MAT_ELEM(*CubeObjectPoints, float, 7, 2) = -2*SQUARE_SIZE_IN_CM; 

				cvProjectPoints2(CubeObjectPoints, R_vector, t_vector, A, D, reprojectedCubeImagePoints);
				
				CvScalar cube_color = cvScalar(0,255,0,0);

				start_point.x = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 0, 0);
				start_point.y = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 0, 1);

				end_point.x = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 1, 0);
				end_point.y = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 1, 1);

				cvDrawLine(Output_Color_Image, start_point, end_point, cube_color, 2);

				end_point.x = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 2, 0);
				end_point.y = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 2, 1);

				cvDrawLine(Output_Color_Image, start_point, end_point, cube_color, 2);

				end_point.x = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 4, 0);
				end_point.y = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 4, 1);

				cvDrawLine(Output_Color_Image, start_point, end_point, cube_color, 2);

				start_point.x = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 3, 0);
				start_point.y = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 3, 1);

				end_point.x = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 1, 0);
				end_point.y = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 1, 1);

				cvDrawLine(Output_Color_Image, start_point, end_point, cube_color, 2);

				end_point.x = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 2, 0);
				end_point.y = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 2, 1);

				cvDrawLine(Output_Color_Image, start_point, end_point, cube_color, 2);

				end_point.x = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 7, 0);
				end_point.y = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 7, 1);

				cvDrawLine(Output_Color_Image, start_point, end_point, cube_color, 2);

				start_point.x = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 5, 0);
				start_point.y = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 5, 1);

				end_point.x = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 4, 0);
				end_point.y = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 4, 1);

				cvDrawLine(Output_Color_Image, start_point, end_point, cube_color, 2);

				end_point.x = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 7, 0);
				end_point.y = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 7, 1);

				cvDrawLine(Output_Color_Image, start_point, end_point, cube_color, 2);

				end_point.x = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 1, 0);
				end_point.y = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 1, 1);

				cvDrawLine(Output_Color_Image, start_point, end_point, cube_color, 2);

				start_point.x = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 6, 0);
				start_point.y = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 6, 1);

				end_point.x = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 4, 0);
				end_point.y = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 4, 1);

				cvDrawLine(Output_Color_Image, start_point, end_point, cube_color, 2);

				end_point.x = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 7, 0);
				end_point.y = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 7, 1);

				cvDrawLine(Output_Color_Image, start_point, end_point, cube_color, 2);

				end_point.x = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 2, 0);
				end_point.y = CV_MAT_ELEM(*reprojectedCubeImagePoints, float, 2, 1);

				cvDrawLine(Output_Color_Image, start_point, end_point, cube_color, 2);

				cvReleaseMat(&R_vector);
				cvReleaseMat(&t_vector);

				cvReleaseMat(&ObjectPoints);
				cvReleaseMat(&ImagePoints);
				cvReleaseMat(&reprojectedImagePoints);
				cvReleaseMat(&AxisObjectPoints);
				cvReleaseMat(&reprojectedAxisImagePoints);
				cvReleaseMat(&CubeObjectPoints);
				cvReleaseMat(&reprojectedCubeImagePoints);
}
	return 0;

} 