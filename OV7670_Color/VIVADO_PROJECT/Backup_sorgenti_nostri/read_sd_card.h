/*
 * Author : Federico Bertoli
 * email  : federico.bertoli@studio.unibo.it
 */

#ifndef READ_SD_CARD_H_
#define READ_SD_CARD_H_

#include <stdio.h>
#include "xparameters.h"
#include "xil_exception.h"
#include "xsdps.h"
#include "xil_printf.h"
#include "ff.h"
#include "xil_cache.h"

typedef unsigned char BYTE;

int mount_sd_card();

int write_to_sd_card_Test();

int read_from_sd_card_Test();

int read_from_sd_card();

int read_all_from_directory();

#endif //READ_SD_CARD_H
