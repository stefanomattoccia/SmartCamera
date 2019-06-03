#include "axis_to_ddr_writer.h"
#include "assert.h"


void axis_to_ddr_writer(hls::stream<DATA_IN> &inputStream, volatile u64* base_ddr_addr, volatile ap_uint<FRAME_INDEX_WIDTH>* frame_index, unsigned int* frame_count,
		u32 base_address, u32 frame_buffer_dim, u32 frame_buffer_offset, u8 frame_buffer_number, bool update_intr)
{
#pragma HLS INTERFACE s_axilite port=base_address
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE s_axilite port=update_intr
#pragma HLS INTERFACE s_axilite port=frame_buffer_offset
#pragma HLS INTERFACE s_axilite port=frame_buffer_dim
#pragma HLS INTERFACE s_axilite port=frame_buffer_number
	/*
	 * La depth è usata solo in fase di test (co-simulazione). Per FRAME_BUFFER_DIM = 128
	 * porre depth = 32
	 *
	 * In qualche documentazione online ho trovato questo:
	 * When volatile pointers are used on the interface, the co-simulation feature needs to know how
	 * many accesses (read/writes) are performed on the port in each transaction (each execution of
	 * the C function). This is specified using the DEPTH option on the INTERFACE directive.
	 */
	#pragma HLS INTERFACE m_axi depth=32 port=base_ddr_addr
	#pragma HLS INTERFACE axis port=inputStream
	#pragma HLS INTERFACE ap_none port=frame_count
	#pragma HLS INTERFACE ap_none port=frame_index

	/*
	 * Per poter utilizzare l'axi master con parallelismo a 64 bit devo
	 * definire il valore di uscita come long long. Allo stesso tempo per
	 * poter effettuare la sintesi mi viene richiesto di avere il tipo del
	 * il tipo del puntatore di output della stessa width, quindi devo
	 * dichiarare un buffer di tipo long long. Per poterlo comunque riempire
	 * in maniera sequenziale con i dati in ingresso dallo stream definisco
	 * un puntatore a size_in che punta allo stesso buffer. In questo modo
	 * in ingresso uso il puntatore a size_in e in uscita il puntatore a long long,
	 * ma il buffer è sempre unico. Per potere fare il cast da buffer a buffer_pixel
	 * devo usare dei dati noti, non me lo fa fare con ap_uint<>
	 *
	 * Probabilmente il fatto che il buffer utilizzi 2 BRAM è dovuto non tanto
	 * alla dimensione del buffer, che è comunque più piccola di quella di una
	 * BRAM, quanto al fatto che il buffer che definisco ha width = 64 mentre
	 * le BRAM hanno una width minore, quindi per poter accedere contemporaneamente
	 * a tutti e 64 i bit ho bisogno di 2 BRAM.
	 */
	u64 buffer[BUFFER_SIZE/sizeof(u64)];
	#pragma HLS RESOURCE variable=buffer core=RAM_2P_BRAM

	DATA_IN* buffer_pixel = (DATA_IN*) &buffer;

	static ap_uint<FRAME_INDEX_WIDTH> inner_index = 0;
	#pragma HLS RESET variable=inner_index

	static int frame_count_inner = 0;

	//assert(BUFFER_SIZE % sizeof(unsigned long long) == 0);

	*frame_index = inner_index;

	static u32 FRAME_BUFFER_DIM = DEFAULT_FRAME_BUFFER_DIM;
#pragma HLS RESET variable=FRAME_BUFFER_DIM off
	static u32 FRAME_OFFSET = DEFAULT_FRAME_OFFSET;
#pragma HLS RESET variable=FRAME_OFFSET off
	static u8 FRAME_BUFFER_NUMBER = DEFAULT_FRAME_BUFFER_NUMBER;
#pragma HLS RESET variable=FRAME_BUFFER_NUMBER off
	static u32 BASE_ADDRESS = 0;
#pragma HLS RESET variable=BASE_ADDRESS off

	/*
	 * Aggiorno i parametri quando viene settato l'interrupt
	 */
	if (update_intr)
	{
		update_intr = 0;
		FRAME_BUFFER_DIM = frame_buffer_dim;
		FRAME_BUFFER_NUMBER = frame_buffer_number;
		FRAME_OFFSET = frame_buffer_offset;
		BASE_ADDRESS = base_address / sizeof(u64);
	}


	//L'offset è usato con il puntatore a long, motivo per cui devo sempre dividere per 8
	int offset = BASE_ADDRESS + inner_index*FRAME_OFFSET/sizeof(u64);

	/*
	 * Il ciclo più esterno indica quante volte faccio un trasferimento
	 * dal modulo alla DDR, cioè a FRAME_BUFFER_DIM / BUFFER_SIZE volte.
	 * In ogni ciclo quindi devo riempire il buffer e fare una memcpy
	 */
	for(int idx = 0; idx < FRAME_BUFFER_DIM / BUFFER_SIZE; idx++)
	{
		/*
		 * Il secondo ciclo si occupa di riempire il buffer. Siccome
		 * vengono trasferiti 64 bit alla volta verso la BRAM, i cicli necessari
		 * sono BUFFER_SIZE / 8
		 */
		for(int j = 0; j < BUFFER_SIZE / sizeof(u64); j++)
		{
			u64 temp = 0;

			/*
			 * Il ciclo più interno si occupa di riempire il registro a 8 byte temp
			 * prendendo in ingresso dati di lunghezza possibilmente più piccola
			 */
			for(int i = 0; i < sizeof(u64) / sizeof(DATA_IN); i++)
			{
				/*
				 * Esempio riempimento con 1 byte in ingresso (SIZE_IN = 8)
				 *
				 * | XX | XX | XX | XX | XX | XX | XX | XX |
				 * | D0 | XX | XX | XX | XX | XX | XX | XX |
				 * | D1 | D0 | XX | XX | XX | XX | XX | XX |
				 * | D2 | D1 | D0 | XX | XX | XX | XX | XX |
				 * .....
				 * | D7 | D6 | D5 | D4 | D3 | D2 | D1 | D0 |
				 *
				 * Esempio riempimento con 4 byte in ingresso (SIZE_IN = 32)
				 * | XX | XX | XX | XX | XX | XX | XX | XX |
				 * | D3 | D2 | D1 | D0 | XX | XX | XX | XX |
				 * | D7 | D6 | D5 | D4 | D3 | D2 | D1 | D0 |
				 */
				#pragma HLS PIPELINE II=1
				u64 data = inputStream.read(); //Faccio subito la conversione a long long per poterlo poi shiftare

				if (sizeof(DATA_IN) != 8)
				{
					data = data << 64 - sizeof(DATA_IN)*8; 	//Porto il dato letto nei bit più significativi
					temp = temp >> sizeof(DATA_IN)*8;		//Shifto verso destra temp in modo da far spazio al nuovo dato
					temp += data;
				}
				else temp = data;

			}
			buffer[j] = temp;
		}

		//Invio in memoria
		memcpy((u64*) base_ddr_addr + offset, buffer, BUFFER_SIZE);

		offset += BUFFER_SIZE / sizeof(u64);
	}

	//Calcolo nuovo frame_index
	if (inner_index == FRAME_BUFFER_NUMBER - 1)
		inner_index = 0;
	else inner_index++;

	/*
	 * Nonostante io setti il frame_count alla fine del metodo, dalle forme d'onda
	 * vedo che viene incremantato appena la funzione viene chiamata. In questo modo
	 * il numero di frame scritti realmente sarà frame count - 1
	 */
	frame_count_inner++;
	*frame_count = frame_count_inner;

}
