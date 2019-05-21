/*
 * ov7670_constant.h
 *
 *  Created on: 28 giu 2016
 *      Author: Leonardo Campagna
 */

#ifndef SRC_OV7670_CONSTANT_H_
#define SRC_OV7670_CONSTANT_H_

#define DATA_REGISTER_CHANGED 1
#define DATA_REGISTER_NOT_CHANGED 0

#define INPUT_CLOCK_FREQUENCY 24//MHz
#define INTERNAL_CLOCK_FREQUENCY 24 //MHz

#define OV7670_SLAVE_ADDRESS 0x21
#define OV7670_SLAVE_ADDRESS_WRITE 0x42
#define OV7670_SLAVE_ADDRESS_READ 0x43

#define AEW 0x24
#define AEW_VALUE 0x95

#define AEB 0x25
#define AEB_VALUE 0x33

#define VPT 0x26
#define VPT_VALUE 0xE3

#define HAECC77 0xAA
#define HAECC77_VALUE_HISTOGRAM_AEC_ON 0x94
#define HAECC77_VALUE_AVERAGE_AEC_ON 0x00


#define CLKRC 0x11
#define CLKRC_VALUE_VGA 0x01
#define CLKRC_VALUE_NIGHTMODE_AUTO 0x80

#define COM7 0x12
#define COM7_VALUE_VGA 0x01
#define COM7_VALUE_VGA_COLOR_BAR 0x03
#define COM7_VALUE_QVGA 0x00
#define COM7_VALUE_RESET 0x80

#define COM3 0x0C
#define COM3_VALUE_VGA 0x00
#define COM3_VALUE_QVGA 0x04

#define COM14 0x3E
#define COM14_VALUE_VGA 0x00

#define SCALING_XSC 0x70
#define SCALING_XSC_VALUE_VGA 0x3A

#define SCALING_YSC 0x71
#define SCALING_YSC_VALUE_VGA 0x35

#define SCALING_DCWCTR 0x72
#define SCALING_DCWCTR_VALUE_VGA 0x11

#define SCALING_PCLK_DIV 0x73
#define SCALING_PCLK_DIV_VALUE_VGA 0xF0

#define SCALING_PCLK_DELAY 0xA2
#define SCALING_PCLK_DELAY_VALUE_VGA 0x02

#define COM17 0x42
#define COM17_VALUE_AEC_NORMAL_NO_COLOR_BAR 0x00
#define COM17_VALUE_AEC_NORMAL_COLOR_BAR 0x08

#define DBLV 0x6B
#define DBLV_VALUE_30FPS 0x0A

#define EXHCH 0x2A
#define EXHCH_VALUE_30FPS 0x00

#define EXHCL 0x2B
#define EXHCL_VALUE_30FPS 0x00

#define DM_LNL 0x92
#define DM_LNL_VALUE_30FPS 0x00

#define DM_LNH 0x93
#define DM_LNH_VALUE_30FPS 0x00

#define COM11 0x3B
#define COM11_VALUE_30_FPS 0x0A
#define COM11_VALUE_NIGHTMODE_AUTO 0xEA //Auto frame adjust

#define TSLB 0x3A
#define TSLB_YUYV 0x05
#define TSLB_YVYU 0x05
#define TSLB_UYVY 0x0D
#define TSLB_VYUY 0x0D

#define COM13 0x3D
#define COM13_YUYV 0x80
#define COM13_YVYU 0x89
#define COM13_UYVY 0x80
#define COM13_VYUY 0x89

#define COM16 0x41
#define COM16_VALUE_DENOISE_ON_EDGE_ENHANCEMENT_ON 0x38

#define SATCTR 0xC9
#define SATCTR_VALUE 0x60 //default 0xC0

#define HSTART 0x17
#define HSTART_VALUE_DEFAULT 0x11
#define HSTART_VALUE_VGA 0x13

#define HSTOP 0x18
#define HSTOP_VALUE_DEFAULT 0x61
#define HSTOP_VALUE_VGA 0x01

#define HREF 0x32
#define HREF_VALUE_DEFAULT 0x80
#define HREF_VALUE_VGA 0xB6

#define VSTRT 0x19
#define VSTRT_VALUE_DEFAULT 0x03
#define VSTRT_VALUE_VGA 0x02

#define VSTOP 0x1A
#define VSTOP_VALUE_DEFAULT 0x7B
#define VSTOP_VALUE_VGA 0x7A

#define VREF 0x03
#define VREF_VALUE_DEFAULT 0x03
#define VREF_VALUE_VGA 0x0A

#define ABLC1 0xB1
#define ABLC1_VALUE 0x0C

#define THL_ST 0xB3
#define THL_ST_VALUE 0x82

//#define COM8 0x13
//#define COM8_

#endif /* SRC_OV7670_CONSTANT_H_ */
