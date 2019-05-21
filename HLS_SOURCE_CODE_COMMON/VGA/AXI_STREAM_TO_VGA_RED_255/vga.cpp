#include "vga.h"


inline void get_checkerboard_color(ap_uint<SIZE_BIT> x_coord, ap_uint<SIZE_BIT> y_coord, unsigned int size_x, unsigned int size_y, ap_uint<BIT_OUT> *R_temp, ap_uint<BIT_OUT> *G_temp, ap_uint<BIT_OUT> *B_temp, ap_uint<4> color_blinking)
{
	switch(x_coord.get_bit(checkerboard_size_x)*2 + y_coord.get_bit(checkerboard_size_y))
	       {
	       case 0:
	    	   *R_temp = color_blinking;
	    	   *G_temp = 0;
	    	   *B_temp = 0;
	           break;

	       case 1:
    	   	   *R_temp = 0;
    	   	   *G_temp = 0;
    	   	   *B_temp = 15 - color_blinking;
               break;

	       case 2:
	    	   *R_temp = 0;
	    	   *G_temp = 0;
	    	   *B_temp = 15 - color_blinking;
	           break;

	       case 3:
    	   	   *R_temp = color_blinking;
    	   	   *G_temp = 0;
    	   	   *B_temp = 0;
               break;
	       }

#ifndef __SYNTHESIS__
	printf("[y,x] = [%d,%d] -> [R,G,B] = [%d,%d,%d]\n", (int)y_coord, (int)x_coord, (int)*R_temp, (int)*G_temp, (int)*B_temp);
#endif

	return;
}



/*
 * Questo modulo trasferisce i dati da un AXI-STREAM di input alla VGA.
 * @selftest se uguale a 1 disegna a video una scacchiera ignorando completamente lo stream di dati in ingresso.
 * @inStream lo stream di pixel (1 byte) in ingresso; la lettura avviene pixel per pixel in maniera sequenziale.
 * 			 se all'invocazione di questa funzione lo stream dovesse essere vuoto, viene visualizzato a video un
 * 			 frame di errore.
 */
void axi_stream_to_vga_red_255(bool selftest,hls::stream<PIXEL> &inStream,
		volatile ap_uint<BIT_OUT> *R, volatile ap_uint<BIT_OUT> *G, volatile ap_uint<BIT_OUT> *B,
		volatile ap_uint<1> *V_SYNC, volatile ap_uint<1> *H_SYNC)
{
	#pragma HLS INTERFACE axis port=inStream
	#pragma HLS INTERFACE ap_none port=selftest
	#pragma HLS INTERFACE ap_none port=R
	#pragma HLS INTERFACE ap_none port=G
	#pragma HLS INTERFACE ap_none port=B
	#pragma HLS INTERFACE ap_none port=H_SYNC
	#pragma HLS INTERFACE ap_none port=V_SYNC


	const unsigned int TOTAL_V = VERTICAL_SYNC_PULSE + VERTICAL_BACK_PORCH + HEIGHT + VERTICAL_FRONT_PORCH;
	const unsigned int TOTAL_H = HORIZONTAL_SYNC_PULSE + HORIZONTAL_BACK_PORCH + WIDTH + HORIZONTAL_FRONT_PORCH;

	unsigned int index = 0;
	unsigned int x,y;
	ap_uint<1> V_SYNC_temp = 1;
	ap_uint<1> H_SYNC_temp = 1 ;

	bool input_selection = selftest;

	static ap_uint<BIT_OUT> color_blinking = 0;
	#pragma HLS RESET variable=color_blinking


	color_blinking++;

	/*
	 * Come prima cosa verifico se lo stream di pixel in ingresso è vuoto.
	 * Se si verifica questa condizione, per non fare stallare il modulo (in quanto la
	 * read diventerebbe bloccante), disegno su VGA un frame di errore, lasciando
	 * intanto tempo ai blocchi di elaborazione a monte di portare dati in ingresso a questo
	 * modulo.
	 */
	bool emptyStream = inStream.empty();

	for (y=0; y<TOTAL_V; y++)
	for (x=0; x<TOTAL_H; x++)
	{
		#pragma HLS PIPELINE II=1

		ap_uint<SIZE_BIT> x_coordinate = (ap_uint<SIZE_BIT>)(x - (HORIZONTAL_SYNC_PULSE + HORIZONTAL_BACK_PORCH));
		ap_uint<SIZE_BIT> y_coordinate = (ap_uint<SIZE_BIT>)(y - (VERTICAL_SYNC_PULSE + VERTICAL_BACK_PORCH));

		if (y<VERTICAL_SYNC_PULSE) V_SYNC_temp=0;
		else V_SYNC_temp=1;

		if (x<HORIZONTAL_SYNC_PULSE) H_SYNC_temp=0;
		else H_SYNC_temp=1;

		if ((x>= HORIZONTAL_SYNC_PULSE + HORIZONTAL_BACK_PORCH) &&
			(x<  HORIZONTAL_SYNC_PULSE + HORIZONTAL_BACK_PORCH + WIDTH) &&
			(y>= VERTICAL_SYNC_PULSE + VERTICAL_BACK_PORCH) &&
			(y<  VERTICAL_SYNC_PULSE + VERTICAL_BACK_PORCH + HEIGHT))
		{
			ap_uint<BIT_OUT> R_temp;
			ap_uint<BIT_OUT> G_temp;
			ap_uint<BIT_OUT> B_temp;

			if(input_selection == false)
			{
				if (!emptyStream)
				{
					//DISEGNO L'INPUT IN INGRESSO
					PIXEL in = inStream.read();
					if (in == 255)
					{
						R_temp = 255;
						G_temp = 0;
						B_temp = 0;
					}
					else
					{
						R_temp = (in / 16); //4 bit più significativi
						G_temp = R_temp;
						B_temp = R_temp;
					}

				}
				else
				{
					//INPUT EMPTY, FRAME DI ERRORE
					R_temp = 0xF;
					G_temp = 0x0;
					B_temp = 0x0;
				}
			}
			else
			{
				//SELFTEST
				get_checkerboard_color(x_coordinate, y_coordinate, checkerboard_size_x, checkerboard_size_x,
						&R_temp, &G_temp, &B_temp, color_blinking);
			}

			// DISPLAY IMAGE
			*R=R_temp;
			*G=G_temp;
			*B=B_temp;
			*V_SYNC = V_SYNC_temp;
			*H_SYNC = H_SYNC_temp;
		}
		else
		{
			*R=0;
			*G=0;
			*B=0;
			*V_SYNC = V_SYNC_temp;
			*H_SYNC = H_SYNC_temp;
		}

	}

	return;

}

