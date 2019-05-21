#include "hls_stream.h"
#include "ap_int.h"

#ifndef __SYNTHESIS__
	#define FRAME_BUFFER_DIM 128
	#define BUFFER_SIZE	32
#else
	#define FRAME_BUFFER_DIM 307200
	#define BUFFER_SIZE 4096
#endif

#define FRAME_OFFSET FRAME_BUFFER_DIM
#define FRAME_BUFFER_NUM 8
#define LOG2_FB 3

typedef unsigned char DATA_OUT;

typedef unsigned char byte;

typedef unsigned long long u64;

/*
 * Questo modulo va a leggere un frame in memoria in base al valore del frame_index
 * e restituisce in output i dati letti come un axi-stream di output (un pixel alla volta).
 * @frame_index indice del frame buffer su cui il writer sta scrivendo, quindi il reader
 * 				andrà a leggere il frame buffer a frame_index - 1
 * @frame_count indica il numero totale di frame letti da questo modulo dal momento in cui
 * 				è stato inizializzato (da usare in fase di debug)
 * @frame_count_equals  indica il numero di volte in cui questo modulo è andato a leggere
 * 						lo stesso frame buffer che aveva letto nell'iterazione precedente.
 * 						Da usare in fase di debug, ad esempio con una pipeline o un writer
 * 						lenti.
 */
void ddr_to_axis_reader(hls::stream<DATA_OUT> &outStream, volatile u64* base_ddr_addr, ap_uint<LOG2_FB>* frame_index, unsigned int* frame_count, unsigned int* frame_count_equals);
