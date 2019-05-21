#include <stdio.h>
#include <WinSock2.h>

#include <direct.h>
#include <sys/time.h>

#include <opencv/cv.h>
#include <opencv/highgui.h>
#include <stdlib.h>


#include "lib_time_measurements.h"

#include "Calibration_single_camera.h"


//#define WIN32_LEAN_AND_MEAN
#define WIDTH 640
#define HEIGHT 480
#define FRAME_SIZE 307200

// FRAME_I_SIZE is defined accordingly in "platform_config.h"
// in the Zynq baremetal SDK project.
// Warning IMAGE_SIZE % FRAME_I_SIZE = 0
#define FRAME_I_SIZE 9600

#define COLOR_CODE CV_YUV2BGR_YUYV

#define PATH_SAVE_IMAGE "./DATA/IMAGES"
#define PATH_SAVE_VIDEO "./DATA/VIDEOS"

#define nick_image_PROCESSED    "ZYNQ"
#define nick_image_LUMA         "LUMA"
#define nick_image_CHROMA       "CHROMA"
#define nick_image_COLOR        "COLOR"



typedef unsigned char BYTE;

typedef struct {
	int count;
	int fragment;
	int frame_index;
	BYTE data[FRAME_I_SIZE];
    BYTE data_luma[FRAME_I_SIZE];
	BYTE data_chroma[FRAME_I_SIZE];
} packet_data;

int start_OV7670();

int init_opencv();
int init_opencv_video_recorder(char *nickname);
int release_opencv_video_recorder();

void write_text_grayscale(char * msg, IplImage* image_source, IplImage* image_dest);
void write_text_color(char * msg, IplImage* image_source, IplImage* image_dest);

int convert_from_yuv_to_bgr(IplImage *LUMA, IplImage *CHROMA, int color_code, IplImage *BGR);
int extract_U_and_V_from_chroma(IplImage *CHROMA, IplImage *U_channel, IplImage *V_channel);


