#include "OV7670.h"
#pragma comment(lib, "ws2_32.lib")

#ifdef __cplusplus
    using namespace cv;
#endif // __cplusplus

IplImage *image_pipeline;
IplImage *image_luma;
IplImage *image_chroma;
IplImage *image_BGR;

IplImage *image_pipeline_text;
IplImage *image_luma_text;
IplImage *image_chroma_text;
IplImage *image_BGR_text;
IplImage *image_U;
IplImage *image_V;

CvVideoWriter *video_stream;
bool enable_save_video = false;

CvFont font;
CvScalar color;

void write_text_grayscale(char * msg, IplImage* image_source, IplImage* image_dest)
{
    cvCvtColor(image_source, image_dest, CV_GRAY2BGR);
	cvPutText(image_dest, msg, cvPoint(10,15), &font, color);
}

void write_text_color(char * msg, IplImage* image_source, IplImage* image_dest)
{
    cvCopy(image_source, image_dest, NULL);
	cvPutText(image_dest, msg, cvPoint(10,15), &font, color);
}

int init_opencv()
{
	cvInitFont(&font, CV_FONT_HERSHEY_PLAIN, 1, 1, 0, 1 , 8);
	color = cvScalar(0,255,0,0);
	image_pipeline      = cvCreateImage(cvSize(WIDTH, HEIGHT), IPL_DEPTH_8U, 1);
	image_luma          = cvCreateImage(cvSize(WIDTH, HEIGHT), IPL_DEPTH_8U, 1);
	image_chroma        = cvCreateImage(cvSize(WIDTH, HEIGHT), IPL_DEPTH_8U, 1);
	image_BGR           = cvCreateImage(cvSize(WIDTH, HEIGHT), IPL_DEPTH_8U, 3);

	image_pipeline_text = cvCreateImage(cvSize(WIDTH, HEIGHT), IPL_DEPTH_8U, 3);
	image_luma_text     = cvCreateImage(cvSize(WIDTH, HEIGHT), IPL_DEPTH_8U, 3);
	image_chroma_text   = cvCreateImage(cvSize(WIDTH, HEIGHT), IPL_DEPTH_8U, 3);
	image_BGR_text      = cvCreateImage(cvSize(WIDTH, HEIGHT), IPL_DEPTH_8U, 3);

	image_U             = cvCreateImage(cvSize(WIDTH/2, HEIGHT), IPL_DEPTH_8U, 1);
	image_V             = cvCreateImage(cvSize(WIDTH/2, HEIGHT), IPL_DEPTH_8U, 1);

	return 0;
}

int init_opencv_video_recorder(char *nickname)
{
    char video_filename[512];
    sprintf(video_filename,"%s/%s.mkv",PATH_SAVE_VIDEO,nickname);
    video_stream = cvCreateVideoWriter(video_filename, CV_FOURCC('P','I','M','1'), 30, cvSize(WIDTH, HEIGHT), 1);

    printf("[INFO] Saving video stream in %s\n", video_filename);

    return 0;
}

int release_opencv_video_recorder()
{
    cvReleaseVideoWriter(&video_stream);

    return 0;
}

int convert_from_yuv_to_bgr(IplImage *LUMA, IplImage *CHROMA, int color_code, IplImage *BGR)
{
   /// This function converts a LUMA + CHROMA stream encoded in YUV to a BGR image
   /// LUMA         :   8 bit LUMA input image
   /// CHROMA       :   8 bit CHROMA input image
   /// color_code   :   OpenCV color conversion code
   /// BGR          :   Three channels BGR output image

   /// Color conversion codes
   /// CV_YUV2BGR_UYNV
   /// CV_YUV2BGR_UYVY
   /// CV_YUV2BGR_Y422
   /// CV_YUV2BGR_YUNV
   /// CV_YUV2BGR_YUY2
   /// CV_YUV2BGR_YUYV
   /// CV_YUV2BGR_YVYU

   IplImage *YUV422;
   YUV422 = cvCreateImage(cvGetSize(LUMA),8,2);

   // Merge LUMA and CHROMA
   cvMerge(LUMA,CHROMA,NULL,NULL,YUV422);
   // cvMerge(CHROMA,LUMA,NULL,NULL,YUV422);
   cvCvtColor(YUV422,BGR,color_code);

   cvReleaseImage(&YUV422);

   return 0;
}

int start_OV7670(int argc,char **argv)
{
	struct sockaddr_in clientaddr, servaddr;
	#if defined(WINDOWS)
	long buffer = 65536 * 1024;
	#endif
	#if defined(LINUX) || defined(MAC)
	long buffer = 65536;
	#endif
	int len;
	int save_image_counter=0;


	//Initialise OpenCv
	init_opencv();

	init_opencv_video_recorder("Test_video");
	#ifdef REALTA_AUMENTATA
        init_glut_application(argc, argv, true);
	#endif // REALTA_AUMENTATA

	//Initialise sockets
	HYBRID_SOCKET sd = (HYBRID_SOCKET) init_socket_wrapper(buffer, &clientaddr, false, "0", 5555);

	packet_data *tmp = (packet_data*)malloc(sizeof(packet_data));

	/*Overlay message variables*/
	char *msg;
	float p_frame_persi, byte_rate, frame_rate, transfer_rate_connection;

	// time measurements
	tick_counter start_time;
	tick_counter end_time;

	tick_counter start_transfer_packet;
	tick_counter end_transfer_packet;


	int frame_persi = 0, frame_ricevuti = 0;
	msg = (char*) malloc(sizeof(char)*100);

	// gettimeofday(&start, NULL);
	// start_time = Get_Time();

    /*end overlay variables*/

	BYTE *frame_pipeline    = (BYTE*)malloc(WIDTH*HEIGHT*sizeof(BYTE));
	BYTE *frame_luma        = (BYTE*)malloc(WIDTH*HEIGHT*sizeof(BYTE));
	BYTE *frame_chroma      = (BYTE*)malloc(WIDTH*HEIGHT*sizeof(BYTE));

	len = sizeof(servaddr);

	int expected_fragment = 0;
	int frame_wasted = 0;
	int last_counter = 0;

    printf("[INFO] Software client is up and running\n");
	printf("[INFO] Waiting for video stream from the Zynq camera...\n");
	// MessageBox(NULL, "Q - Quit the application\nS - Save current frame to folder", "Command list", MB_ICONINFORMATION | MB_OK | MB_DEFBUTTON2);

    bool first_time = true;

	while (1)
	{
        if (first_time == true)
        {
            printf("[INFO] Starting visualization\n");
            printf("[INFO] Connecting...\n");

            first_time = false;
        }

        start_transfer_packet = Get_Time();
        int error_check = 0;

        error_check = recvfrom_socket_wrapper(sd, (void*)tmp, sizeof(packet_data), 0, (struct sockaddr *)&servaddr, &len);
    #if defined(SOCKET_ERROR)
		if (error_check == SOCKET_ERROR)
    #else // SOCKET_ERROR
        if (error_check < 0)
    #endif // SOCKET_ERROR
		{
			perror("[ERROR] recvfrom_socket_wrapper\n");
			printf("[ERROR] Last frame index -> %d, i -> %d\n", tmp->frame_index, tmp->fragment);
			exit(1);
		}

        end_transfer_packet = Get_Time();
        float transfer_time = ElapsedTime(start_transfer_packet,end_transfer_packet);
        transfer_rate_connection = sizeof(packet_data)/((1048576.0)*transfer_time);
        printf("[INFO] Packet %d: \t%.2f MB/s\t(%d bytes in %.3f msec\n", tmp->count, transfer_rate_connection, sizeof(packet_data), transfer_time*1000.0);

		if (last_counter > tmp->count)
			printf("[ERROR] Wrong packet ordering (%d)\n", tmp->count);
		last_counter = tmp->count;

		if (tmp->fragment != expected_fragment)
		{
			if (expected_fragment != 0)
            {
                printf("[ERROR] Frame lost (#%d)\n", ++frame_wasted);
                frame_persi++;
            }

			expected_fragment = 0;
		}
		else
		{
		    memcpy((frame_pipeline  + (tmp->fragment*FRAME_I_SIZE)), tmp->data, FRAME_I_SIZE);
			memcpy((frame_luma      + (tmp->fragment*FRAME_I_SIZE)), tmp->data_luma, FRAME_I_SIZE);
			memcpy((frame_chroma    + (tmp->fragment*FRAME_I_SIZE)), tmp->data_chroma, FRAME_I_SIZE);

			if (expected_fragment != FRAME_SIZE / FRAME_I_SIZE - 1)
				expected_fragment++;
			else
			{
				expected_fragment = 0;

				/* Collect statistics */
				frame_ricevuti++;

                end_time = Get_Time();
                frame_rate = 1.0/ElapsedTime(start_time,end_time);
                start_time = Get_Time();


                p_frame_persi = (100.0*frame_persi)/(frame_ricevuti);
                byte_rate = (FRAME_SIZE*3*frame_rate)/1048576.0;
                sprintf(msg, " %.2f fps | Rec %d | Lost %d | Err %.2f %% | Network %.2f MB/s | %d", frame_rate, frame_ricevuti, frame_persi, p_frame_persi, byte_rate, save_image_counter);
                /*End create message*/

                //Show Image NORMAL
                memcpy(image_pipeline->imageData, frame_pipeline, sizeof(BYTE)*WIDTH*HEIGHT);
                write_text_grayscale(msg, image_pipeline, image_pipeline_text);
				cvShowImage("OV7670 Zynq PL vision pipeline", image_pipeline_text);

                //Show Image LUMA
                memcpy(image_luma->imageData, frame_luma, sizeof(BYTE)*WIDTH*HEIGHT);
                write_text_grayscale(msg, image_luma, image_luma_text);
				cvShowImage("OV7670 Luma", image_luma_text);

				//Show Image CHROMA
				memcpy(image_chroma->imageData, frame_chroma, sizeof(BYTE)*WIDTH*HEIGHT);
				write_text_grayscale(msg, image_chroma, image_chroma_text);
				cvShowImage("OV7670 Chroma", image_chroma_text);

				// Extract and show U and V
				extract_U_and_V_from_chroma(image_chroma, image_U, image_V);
				cvShowImage("OV7670 U channel", image_U);
				cvShowImage("OV7670 V channel", image_V);

				//Show Image BGR
				convert_from_yuv_to_bgr(image_luma, image_chroma, COLOR_CODE, image_BGR);
				write_text_color(msg, image_BGR, image_BGR_text);


                // detect_and_draw_corners(image_luma, image_BGR, image_BGR_text);


				if (enable_save_video == true)
                    cvDrawCircle(image_BGR_text,cvPoint(WIDTH-20,10),6,cvScalar(0,0,255,0),CV_FILLED,1,0);

				cvShowImage("OV7670 Color (UYVY to BGR)", image_BGR_text);

				#ifdef REALTA_AUMENTATA
				glut_application_loop_iteration(image_BGR);
				#endif // REALTA_AUMENTATA

				// Add current image to video stream
				if (enable_save_video == true)
                    cvWriteFrame(video_stream, image_BGR_text);

				char key = cvWaitKey(1);

				if(key == 's')//Save Frame
                {
                    char FILENAME[512];

                    sprintf(FILENAME,"%s/%s_%d.png",PATH_SAVE_IMAGE,nick_image_PROCESSED,save_image_counter);
                    cvSaveImage(FILENAME, image_pipeline, 0);

                    sprintf(FILENAME,"%s/%s_%d.png",PATH_SAVE_IMAGE,nick_image_LUMA,save_image_counter);
                    cvSaveImage(FILENAME, image_luma, 0);

                    sprintf(FILENAME,"%s/%s_%d.png",PATH_SAVE_IMAGE,nick_image_CHROMA,save_image_counter);
                    cvSaveImage(FILENAME, image_chroma, 0);

                    sprintf(FILENAME,"%s/%s_%d.png",PATH_SAVE_IMAGE,nick_image_COLOR,save_image_counter);
                    cvSaveImage(FILENAME, image_BGR, 0);

                    save_image_counter++;

                    //Confirmation Dialog Box
                    // MessageBox(NULL, "Images Correctly Saved!", "Success!", MB_ICONINFORMATION | MB_OK | MB_DEFBUTTON2);
                }
                else if (key == 'q')//Quit the application
                {
                    printf("[INFO] Closing connection and house keeping...\n");


                    //Release all memory
                    cvReleaseImage(&image_pipeline);
                    cvReleaseImage(&image_pipeline_text);
                    cvReleaseImage(&image_luma);
                    cvReleaseImage(&image_luma_text);
                    cvReleaseImage(&image_chroma);
                    cvReleaseImage(&image_chroma_text);
                    cvReleaseImage(&image_BGR);
                    cvReleaseImage(&image_BGR_text);
                    cvReleaseImage(&image_U);
                    cvReleaseImage(&image_V);

                    // Release video recorder
                    release_opencv_video_recorder();


                    free(frame_pipeline);
                    free(frame_chroma);
                    free(frame_luma);

                    free(tmp);
                    free(msg);

                    #ifdef REALTA_AUMENTATA
                    close_glut_application();
                    #endif // REALTA_AUMENTATA

                    printf("[INFO] Done...\n");

                    close_socket_wrapper(sd);

                    exit(0);
                }
			}
		}
	}
}

int extract_U_and_V_from_chroma(IplImage *CHROMA, IplImage *U_channel, IplImage *V_channel)
{
   // This function assumes that the CHROMA image is encoded with UVUV format

   int x,y,offset_x;
   BYTE pixel;

   for (y=0;y<CHROMA->height;y++)
       for (x=0;x<CHROMA->width;x++)
   {
       int even = x % 2;
       int offset_x = x/2;

       pixel = ((BYTE*)(CHROMA->imageData))[y*CHROMA->widthStep + x];

       if (even==0)
       {   // even, U channel
           ((BYTE*)(U_channel->imageData))[y*U_channel->widthStep + offset_x] = pixel;

       }
       else
       {   // odd, V channel
           ((BYTE*)(V_channel->imageData))[y*V_channel->widthStep + offset_x] = pixel;

       }

   }

   return 0;
}

