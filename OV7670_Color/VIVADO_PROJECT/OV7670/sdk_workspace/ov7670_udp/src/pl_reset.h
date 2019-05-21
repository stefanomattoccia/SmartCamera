/*
 * pl_reset.h
 *
 *  Created on: 19/mar/2016
 *      Author: Riccardo
 */

#ifndef PL_RESET_H_
#define PL_RESET_H_

//#include <sleep.h>

int is_pl_on_reset();

int pl_reset_enable();
int pl_reset_disable();

int pl_reset_keep_for(int usec);
int pl_reset();

#endif /* PL_RESET_H_ */
