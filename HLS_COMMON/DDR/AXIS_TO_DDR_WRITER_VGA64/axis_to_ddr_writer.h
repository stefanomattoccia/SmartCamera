#include "hls_stream.h"
#include <string.h>
#include "ap_int.h"
#include <math.h>

#ifndef __SYNTHESIS__
	#define FRAME_BUFFER_DIM 128
	#define BUFFER_SIZE 32
#else
	#define FRAME_BUFFER_DIM 307200 	// Dimensione di un frame buffer in byte (qui 640*480)				//
	/*
	 * Attenzione: deve essere un divisore di FRAME_BUFFER_DIM
	 * In ogni caso con un singolo burst posso trasferire al massimo
	 * 256 * 8 = 2048 byte
	 */
	#define BUFFER_SIZE 4096			// Dimensione del buffer interno in byte
#endif


#define FRAME_OFFSET	FRAME_BUFFER_DIM
#define FRAME_BUFFER_NUMBER 8
#define LOG2_FB 3			//Numero di bit usati per codificare il frame index = [log2(FRAME_BUFFER_NUMBER)]

#define SIZE_IN 8

typedef unsigned long long u64;

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
void axis_to_ddr_writer(hls::stream<DATA_IN> &inputStream, volatile unsigned long long* base_ddr_addr, ap_uint<LOG2_FB>* frame_index, unsigned int* frame_count);
