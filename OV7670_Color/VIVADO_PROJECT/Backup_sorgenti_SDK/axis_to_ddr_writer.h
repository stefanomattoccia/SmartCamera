/*
 * axis_to_ddr_writer.h
 *
 *  Created on: Feb 2, 2017
 *      Author: Mattia Bernasconi
 *        Mail: mattia@studiobernasconi.com
 */

#ifndef AXIS_TO_DDR_WRITER_H_
#define AXIS_TO_DDR_WRITER_H_

#include "platform_config.h"

XAxis_to_ddr_writer writer;
XAxis_to_ddr_writer writer_luma;
XAxis_to_ddr_writer writer_chroma;

int init_axis_to_ddr_writer(void);
int configue_axis_to_ddr_writer(void);

int init_axis_to_ddr_writer_luma(void);
int configue_axis_to_ddr_writer_luma(void);

int init_axis_to_ddr_writer_chroma(void);
int configue_axis_to_ddr_writer_chroma(void);

#endif /* AXIS_TO_DDR_WRITER_H_ */
