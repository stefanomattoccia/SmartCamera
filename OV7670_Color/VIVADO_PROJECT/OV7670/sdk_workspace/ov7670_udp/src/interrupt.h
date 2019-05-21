/*
 * interrupt.h
 *
 *  Created on: 25/mar/2016
 *      Author: Riccardo
 */

#ifndef INTERRUPT_H_
#define INTERRUPT_H_

#include "xscugic.h"

/*
 * Ritorna la struttura XScuGic gia' inizializzata e pronta
 * per poter registrare nuovi interrupt e le relative funzioni
 * di callback. Ritorna NULL se l'inizializzazione e' fallita.
 */
XScuGic* getGicInstance();


#endif /* INTERRUPT_H_ */
