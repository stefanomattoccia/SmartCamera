#include "CVfunctions.h"

void inverseMatrixAllocation(Mat *inverse_matrix){
    inverse_matrix->create(4,4, DataType<double>::type);
    inverse_matrix->at<double>(0,0)=1.0;   inverse_matrix->at<double>(0,1)=1.0;    inverse_matrix->at<double>(0,2)=1.0;   inverse_matrix->at<double>(0,3)=1.0;
    inverse_matrix->at<double>(1,0)=-1.0 ;  inverse_matrix->at<double>(1,1)=-1.0;  inverse_matrix->at<double>(1,2)=-1.0;  inverse_matrix->at<double>(1,3)=-1.0;
    inverse_matrix->at<double>(2,0)=-1.0;  inverse_matrix->at<double>(2,1)=-1.0;  inverse_matrix->at<double>(2,2)=-1.0;  inverse_matrix->at<double>(2,3)=-1.0;
    inverse_matrix->at<double>(3,0)=1.0;   inverse_matrix->at<double>(3,1)=1.0;   inverse_matrix->at<double>(3,2)=1.0;   inverse_matrix->at<double>(3,3)=1.0;
}

void buildViewMatrix(CvMat *R_vector, CvMat *t_vector, double *vmtx_asArray, Mat inverse_matrix){
                //devo costruire la view matrix (mi indica la posizione e la rotazione della camera)
                //per questo prima di tutto uso la funzione Rodrigues che mi converte il vettore rotazione in matrice
                Mat rmtx=cv::Mat(3, 3, DataType<double>::type); //dall'xml i coefficienti A e D vengono estratti come double
                cout << "rmtx inizial:\n" << rmtx << endl;

                Mat R_vec=cv::Mat(1, 3, DataType<double>::type);
                                                                            //ATTENZIONE: ho aggiunto il meno per ruotare l'oggetto con la scacchiera  //ATTENZIONE: ho aggiunto il meno per ruotare l'oggetto con la scacchiera
                R_vec.at<double>(0,0)=CV_MAT_ELEM(*R_vector, double, 0, 0);  R_vec.at<double>(0,1)=-CV_MAT_ELEM(*R_vector, double, 0, 1);  R_vec.at<double>(0,2)=-CV_MAT_ELEM(*R_vector, double, 0, 2);
                cout << "R_vec\n" << R_vec << endl;
                Rodrigues(R_vec, rmtx, noArray());
                cout << "rmtx after Rodrigues\n" << rmtx << endl;

                Mat vmtx(4,4, DataType<double>::type);                                                                                              //ATTENZIONE: ho aggiunto il meno per muovere l'oggetto con la scacchiera
                vmtx.at<double>(0,0)=rmtx.at<double>(0,0);  vmtx.at<double>(0,1)=rmtx.at<double>(0,1);  vmtx.at<double>(0,2)=rmtx.at<double>(0,2);  vmtx.at<double>(0,3)=-CV_MAT_ELEM(*t_vector, double, 0, 0);
                vmtx.at<double>(1,0)=rmtx.at<double>(1,0);  vmtx.at<double>(1,1)=rmtx.at<double>(1,1);  vmtx.at<double>(1,2)=rmtx.at<double>(1,2);  vmtx.at<double>(1,3)=CV_MAT_ELEM(*t_vector, double, 0, 1);
                vmtx.at<double>(2,0)=rmtx.at<double>(2,0);  vmtx.at<double>(2,1)=rmtx.at<double>(2,1);  vmtx.at<double>(2,2)=rmtx.at<double>(2,2);  vmtx.at<double>(2,3)=CV_MAT_ELEM(*t_vector, double, 0, 2);
                vmtx.at<double>(3,0)=0.0;                   vmtx.at<double>(3,1)=0.0;                   vmtx.at<double>(3,2)=0.0;                   vmtx.at<double>(3,3)=1.0;

                cout << "vmtx\n" << vmtx << endl;

				vmtx=vmtx.mul(inverse_matrix);
				cout << "vmtx MUL inverted\n" << vmtx << endl;
				vmtx=vmtx.t();
				cout << "vmtx transposed\n" << vmtx << endl;

				vmtx_asArray[0]=vmtx.at<double>(0,0);   vmtx_asArray[1]=vmtx.at<double>(0,1);   vmtx_asArray[2]=vmtx.at<double>(0,2);   vmtx_asArray[3]=vmtx.at<double>(0,3);
                vmtx_asArray[4]=vmtx.at<double>(1,0);   vmtx_asArray[5]=vmtx.at<double>(1,1);   vmtx_asArray[6]=vmtx.at<double>(1,2);   vmtx_asArray[7]=vmtx.at<double>(1,3);
                vmtx_asArray[8]=vmtx.at<double>(2,0);   vmtx_asArray[9]=vmtx.at<double>(2,1);   vmtx_asArray[10]=vmtx.at<double>(2,2);  vmtx_asArray[11]=vmtx.at<double>(2,3);
                vmtx_asArray[12]=vmtx.at<double>(3,0);  vmtx_asArray[13]=vmtx.at<double>(3,1);  vmtx_asArray[14]=vmtx.at<double>(3,2);  vmtx_asArray[15]=vmtx.at<double>(3,3);

                cout << "vmtx_asArray\n" << *vmtx_asArray << endl;
}


//funzione che identifica la scacchiera, costruisce la viewMatrix e la resituisce sottoforma di array di double di dimensione 16
int pose_single_camera_checkerboard_and_buildViewMatrix(double *vmtx_asArray, CvMat *A, CvMat *D, IplImage *Input_Grayscale_Image, IplImage *Output_Color_Image, Mat inverse_matrix, int horizontal_corners, int vertical_corners, float square_size_in_cm)
{
			// detect corners
			CvPoint2D32f *corners_image = NULL;
			CvSize board_sz = cvSize(horizontal_corners, vertical_corners);

            corners_image = new CvPoint2D32f[(horizontal_corners+1)*(vertical_corners+1)];
            int corner_count_image;

			//Find chessboard corners in image_0:
			int found = cvFindChessboardCorners(Input_Grayscale_Image, board_sz, corners_image, &corner_count_image, CV_CALIB_CB_ADAPTIVE_THRESH + CV_CALIB_CB_FAST_CHECK + CV_CALIB_CB_FILTER_QUADS);
//flag combinabili: CV_CALIB_CB_ADAPTIVE_THRESH + CV_CALIB_CB_NORMALIZE_IMAGE + CV_CALIB_CB_FAST_CHECK + CV_CALIB_CB_FILTER_QUADS

			// detect corners at subpixel resolution
			// da rivedere i parametri, in particolare gli ultimi 3
			cvFindCornerSubPix(Input_Grayscale_Image, corners_image, found, cvSize(5,5), cvSize( -1, -1 ), cvTermCriteria( CV_TERMCRIT_EPS+CV_TERMCRIT_ITER, 30, 0.001 ));

			if (corner_count_image == vertical_corners*horizontal_corners)
			{
				//Draws corners if found in both images
				// cvDrawChessboardCorners(rectified_color_shrinked_l, board_sz, corners_image_0, corner_count_image_0, found_0);
				// cvDrawChessboardCorners(Output_Color_Image, board_sz, corners_image_0, corner_count_image_0, found_0);

				// initializess object ad image points in, respectively, world coordinate space and image space

				CvMat *ObjectPoints;
				ObjectPoints = cvCreateMat(vertical_corners*horizontal_corners, 3, CV_32FC1);

				CvMat *ImagePoints;
				ImagePoints = cvCreateMat(vertical_corners*horizontal_corners, 2, CV_32FC1);

				for(int ii = 0; ii < vertical_corners; ii++)
				for(int jj = 0; jj < horizontal_corners; jj++)
				{
					// object points
					CV_MAT_ELEM(*ObjectPoints, float, ii*horizontal_corners + jj, 0) = float(jj*square_size_in_cm);
					CV_MAT_ELEM(*ObjectPoints, float, ii*horizontal_corners + jj, 1) = float(ii*square_size_in_cm);
					CV_MAT_ELEM(*ObjectPoints, float, ii*horizontal_corners + jj, 2) = 0.0;

					// image points
					CV_MAT_ELEM(*ImagePoints, float, ii*horizontal_corners + jj, 0) = corners_image[ii*horizontal_corners + jj].x;
					CV_MAT_ELEM(*ImagePoints, float, ii*horizontal_corners + jj, 1) = corners_image[ii*horizontal_corners + jj].y;
				}

				//printf("A inizial: %lf, %lf, %lf etc etc \n",CV_MAT_ELEM(A, double, 0, 0),CV_MAT_ELEM(A, double, 0, 1),CV_MAT_ELEM(A, double, 0, 2));


				CvMat *R_vector, *t_vector;
				R_vector = cvCreateMat(1, 3, CV_64FC1);
                    //printf("R_vector inizial: %f, %f, %f\n",CV_MAT_ELEM(*R_vector, double, 0, 0),CV_MAT_ELEM(*R_vector, double, 0, 1),CV_MAT_ELEM(*R_vector, double, 0, 2));
				t_vector = cvCreateMat(1, 3, CV_64FC1);
                    //printf("t_vector inizial: %f, %f, %f\n",CV_MAT_ELEM(*t_vector, double, 0, 0),CV_MAT_ELEM(*t_vector, double, 0, 1),CV_MAT_ELEM(*t_vector, double, 0, 2));

				cvFindExtrinsicCameraParams2(ObjectPoints, ImagePoints, A, D, R_vector, t_vector, 0);
                    //printf("R_vector after cvFind: %f, %f, %f\n",CV_MAT_ELEM(*R_vector, double, 0, 0),CV_MAT_ELEM(*R_vector, double, 0, 1),CV_MAT_ELEM(*R_vector, double, 0, 2));
                    //printf("t_vector after cvFind: %f, %f, %f\n",CV_MAT_ELEM(*t_vector, double, 0, 0),CV_MAT_ELEM(*t_vector, double, 0, 1),CV_MAT_ELEM(*t_vector, double, 0, 2));


                ///ora ho il vettore rotazione e quello traslazione

                buildViewMatrix(R_vector, t_vector, vmtx_asArray, inverse_matrix);

                cvReleaseMat(&R_vector);
				cvReleaseMat(&t_vector);

				cvReleaseMat(&ObjectPoints);
				cvReleaseMat(&ImagePoints);

				return 1;
                }
        return 0;

}
