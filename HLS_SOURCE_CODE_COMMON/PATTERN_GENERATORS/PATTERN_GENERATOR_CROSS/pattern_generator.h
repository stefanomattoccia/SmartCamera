#include "hls_stream.h"
using namespace hls;

#define WIDTH 	640
#define HEIGHT 	480

typedef unsigned char PIXEL;

/*
 * Horizontal Blanking
 * Vertical Blanking
 */
#define HB 80
#define VB 30

void pattern_generator_cross(stream<PIXEL> &outputStream);
