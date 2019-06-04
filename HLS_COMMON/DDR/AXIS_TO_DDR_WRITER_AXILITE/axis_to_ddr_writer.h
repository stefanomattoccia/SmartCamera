#include "hls_stream.h"
#include <string.h>
#include "ap_int.h"

typedef unsigned char u8;
typedef unsigned int u32;
typedef unsigned long long u64;

#ifndef __SYNTHESIS__
	#define BUFFER_SIZE 32
	#define DEFAULT_FRAME_BUFFER_DIM 128
#else
	/*
	 * Attenzione: deve essere un divisore di FRAME_BUFFER_DIM
	 * In ogni caso con un singolo burst posso trasferire al massimo
	 * 256 * 8 = 2048 byte
	 */
	#define BUFFER_SIZE 4096			// Dimensione del buffer interno in byte
	#define DEFAULT_FRAME_BUFFER_DIM 307200 	// Dimensione di un frame buffer in byte (qui 640*480)				//

#endif


#define DEFAULT_FRAME_OFFSET	DEFAULT_FRAME_BUFFER_DIM
#define DEFAULT_FRAME_BUFFER_NUMBER 8



#define FRAME_INDEX_WIDTH 8			//Numero di bit usati per codificare il frame index = [log2(FRAME_BUFFER_NUMBER)]

#define SIZE_IN 8

#if SIZE_IN == 8
	typedef unsigned char DATA_IN;
#elif SIZE_IN == 16
	typedef unsigned short DATA_IN;
#elif SIZE_IN == 32
	typedef unsigned int DATA_IN;
#elif SIZE_IN == 64
	typedef unsigned long long DATA_IN;
#endif

/*
 * La dimensione di DATA_IN in byte deve essere un divisore di BUFFER_SIZE.
 * Si consiglia di usare dei tipi di dato primitivi per DATA_IN
 * (unsigned char, unsigned short, unsigned int, unsigned long long).
 */
//typedef unsigned char DATA_IN;

typedef unsigned char byte;

/*
 * INTERFACCIA
 *
 * @inputStream � l'axi-stream in ingresso che verr� reindirizzato sulla ddr
 * @base_ddr_addr primo indirizzo della ddr su cui scrive (verr� poi settato in Vivado)
 * @frame_index indica il numero del frame buffer su cui il writer sta scrivendo. L'ultimo frame valido � quindi a frame_index - 1
 * @frame_count indica quanti frame sono stati scritti in memoria da questo modulo a partire dalla sua inizializzazione
 */
void axis_to_ddr_writer(hls::stream<DATA_IN> &inputStream, volatile u64* base_ddr_addr, volatile ap_uint<FRAME_INDEX_WIDTH>* frame_index, unsigned int* frame_count,
		u32 base_address, u32 frame_buffer_dim, u32 frame_buffer_offset, u8 frame_buffer_number, bool update_intr);
