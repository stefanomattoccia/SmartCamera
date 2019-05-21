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
#include "platform_config.h"

typedef unsigned char BYTE;

int mount_sd_card();
int read_from_sd_card_mono();
int read_from_sd_card_dual();
int read_all_from_directory();
int read_all_from_directory_mono();
int read_all_from_directory_dual();
int total_Images_Read_Mono();
int total_Images_Read_Dual();

#endif //READ_SD_CARD_H
