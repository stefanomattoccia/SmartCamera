#include <ap_int.h>

// Visibile del compilatore solo in fase di simulazione
#ifndef __SYNTHESIS__
	#include <stdio.h>
	using namespace std;

	#define READINGS 2
	#define LINES 3
#endif

#ifdef __SYNTHESIS__
	// Di default OV7670 usa YUV quindi servono 2 Byte per ricevere un pixel
	#define READINGS 1280 // 640 * 2
	#define LINES 480
#endif

typedef ap_uint<1> bit;
typedef ap_uint<8> byte;

void ov7670_interface(byte data_in, bit href, bit vsync, volatile byte *data_out, volatile bit *line_valid, volatile bit *frame_valid);
