#include "pattern_generator.h"

#define BACKGROUND_COLOR 	0x3E
#define LINE_COLOR			0xC1

typedef enum { AVANTI, INDIETRO } DIREZIONE;

/*
 * Pattern generator da usare nella pipeline di elaborazione.
 * Disegna a video due righe, una orizzontale e una verticale,
 * che ad ogni frame si spostano e rimbalzano quando raggiungono
 * i limiti dello schermo.
 */
void pattern_generator_cross(stream<PIXEL> &outputStream)
{
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE axis port=outputStream

	static int lineX = 0;
	static int lineY = 0;

	static DIREZIONE dirX = AVANTI;
	static DIREZIONE dirY = AVANTI;

#pragma HLS RESET variable=lineX
#pragma HLS RESET variable=dirX
#pragma HLS RESET variable=lineY
#pragma HLS RESET variable=dirY

	for(int y = 0; y < HEIGHT + VB; y++)
		for(int x = 0; x < WIDTH + HB; x++)
		{
			if (y < HEIGHT && x < WIDTH)
			{
				if(x == lineX || y == lineY)
					outputStream.write(LINE_COLOR);
				else outputStream.write(BACKGROUND_COLOR);
			}
		}

	/*
	 * Cambio direzione
	 */
	if (lineX == 0)
		dirX = AVANTI;
	else if (lineX == WIDTH - 1)
		dirX = INDIETRO;

	if (lineY == 0)
		dirY = AVANTI;
	else if (lineY == HEIGHT - 1)
		dirY = INDIETRO;

	/*
	 * Cambio coordinate della croce
	 * in base alla direzione
	 */
	if (dirX == AVANTI)
		lineX++;
	else lineX--;

	if (dirY == AVANTI)
		lineY++;
	else lineY--;

}
