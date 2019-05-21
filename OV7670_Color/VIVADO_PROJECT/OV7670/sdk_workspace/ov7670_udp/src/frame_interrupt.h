/*
 * frame_interrupt.h
 *
 *  Created on: 23/mar/2016
 *      Author: Riccardo Albertazzi
 */

#ifndef FRAME_INTERRUPT_H_
#define FRAME_INTERRUPT_H_

#define FRAME_BUFFER_NUM 8
#define FRAME_BUFFER_SIZE 307200
#define FRAME_BUFFER_BASEADDR 0x10000000

#include "xgpio.h"
#include "Xscugic.h"

/*
 * Metodo da invocare (una volta inizializzato il GIC)
 * per attivare gli interrupt dalla PL ad ARM
 */
int frame_interrupt_init(XScuGic* gicInst);

/*
 * Metodo di registrazione di una funzione di callback che verrà invocata
 * ogni volta in cui un nuovo frame é stato scritto in memoria. Viene passato
 * alla funzione il valore corretto del frame_index, che indica l'indice dell'
 * ultimo frame buffer scritto correttamente in memoria.
 */
void frame_interrupt_register_callback(void (*FrameCallback)(int frame_index));

int get_interrupt_polling();

#endif /* FRAME_INTERRUPT_H_ */
