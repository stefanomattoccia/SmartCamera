#include "hls_stream.h"
#include "ap_int.h"

typedef unsigned long long u64;
typedef unsigned int u32;
typedef unsigned char u8;

#ifndef __SYNTHESIS__
	#define BUFFER_SIZE 32
	#define DEFAULT_FRAME_BUFFER_DIM 128
#else
	/*
	 * Attenzione: deve essere un divisore di FRAME_BUFFER_DIM
	 * In ogni caso con un singolo burst posso trasferire al massimo
	 * 256 * 8 = 2048 byte
	 */
	#define BUFFER_SIZE 4096					// Dimensione del buffer interno in byte
	#define DEFAULT_FRAME_BUFFER_DIM 307200 	// Dimensione di un frame buffer in byte (qui 640*480)				//

#endif

#define DEFAULT_FRAME_OFFSET	DEFAULT_FRAME_BUFFER_DIM
#define DEFAULT_FRAME_BUFFER_NUMBER 8

#define FRAME_INDEX_WIDTH 8			//Numero di bit usati per codificare il frame index = [log2(FRAME_BUFFER_NUMBER)]


typedef unsigned char DATA_OUT;

typedef unsigned char byte;

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
void ddr_to_axis_reader_SD(hls::stream<DATA_OUT> &outStream_channel_1, hls::stream<DATA_OUT> &outstream_channel_2, volatile u64* base_ddr_addr, ap_uint<FRAME_INDEX_WIDTH>* frame_index,
						u32 frame_buffer_dim, u32 frame_buffer_offset, u8 frame_buffer_number, bool update_intr, bool stereo_enabler);
