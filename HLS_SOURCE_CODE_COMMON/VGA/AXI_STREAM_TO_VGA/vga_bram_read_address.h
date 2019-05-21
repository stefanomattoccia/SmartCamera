#include "ap_int.h"
#include "hls_stream.h"

#define BIT_IN 8
#define BIT_OUT 4

// @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
// @ VGA resolution (640x480) @ 60 Hz @
// @ sync pulse: negative logic       @
// @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

#define WIDTH  640
#define HEIGHT 480

// VERTICAL timing (rows)
#define VERTICAL_FRONT_PORCH 10
#define VERTICAL_SYNC_PULSE   2
#define VERTICAL_BACK_PORCH  33

// HORIZONTAL timing (clocks @ 25.175 MHz)
#define HORIZONTAL_FRONT_PORCH 16
#define HORIZONTAL_SYNC_PULSE  96
#define HORIZONTAL_BACK_PORCH  48

// @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
// @      pattern definition(s)       @
// @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

#define SIZE_BIT 20

// checkerboard size 2^n
#define checkerboard_size_x 5
#define checkerboard_size_y 5

typedef ap_uint<BIT_IN> PIXEL;


inline void get_checkerboard_color(ap_uint<SIZE_BIT> x_coord, ap_uint<SIZE_BIT> y_coord, unsigned int size_x, unsigned int size_y, ap_uint<BIT_OUT> *R_temp, ap_uint<BIT_OUT> *G_temp, ap_uint<BIT_OUT> *B_temp, ap_uint<4> color_blinking);

/*
 * Questo modulo trasferisce i dati da un AXI-STREAM di input alla VGA.
 * @selftest se uguale a 1 disegna a video una scacchiera ignorando completamente lo stream di dati in ingresso.
 * @inStream lo stream di pixel (1 byte) in ingresso; la lettura avviene pixel per pixel in maniera sequenziale.
 * 			 se all'invocazione di questa funzione lo stream dovesse essere vuoto, viene visualizzato a video un
 * 			 frame di errore.
 */
void axi_stream_to_vga(bool selftest, hls::stream<PIXEL> &inStream, volatile ap_uint<BIT_OUT> *R, volatile ap_uint<BIT_OUT> *G, volatile ap_uint<BIT_OUT> *B, volatile ap_uint<1> *V_SYNC, volatile ap_uint<1> *H_SYNC);
