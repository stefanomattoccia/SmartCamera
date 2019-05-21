/*

	-------------------------------------------------------------------------------------------------------------------------------------------------------
	-------------------------------------------------------------------------------------------------------------------------------------------------------

						Stefano Mattoccia

						DEIS - University of Bologna

						www.vision.deis.unibo.it/smatt

						stefano.mattoccia@unibo.it

						Summer 2010

	-------------------------------------------------------------------------------------------------------------------------------------------------------
	-------------------------------------------------------------------------------------------------------------------------------------------------------

*/

#pragma once
#include "../OS/os.h"

#include <stdio.h>

#ifdef LINUX
#include <opencv/cxcore.h>
#endif

#ifdef MAC
#include <opencv/cxcore.h>
#endif


#ifdef WINDOWS
#include <cxcore.h>
#endif

#ifdef WINDOWS_CODEBLOCKS
#include <opencv/cxcore.h>
#endif

using namespace cv;


#ifdef WINDOWS
#include "stdafx.h"



// no code above this point
#ifndef UNIQUE_IDENTIFIER
#define UNIQUE_IDENTIFIER

#if (MSC_VER > 1000)
	#pragma once
#endif

#endif

#endif



#ifdef WINDOWS
#ifndef tick_counter
#define tick_counter unsigned __int64
#endif
#endif


#ifdef WINDOWS_CODEBLOCKS
typedef uint64_t tick_counter;
#endif

#ifdef LINUX
// typedef time_t tick_counter;
typedef uint64_t tick_counter;
#endif

#ifdef MAC
// typedef time_t tick_counter;
typedef uint64_t tick_counter;
#endif


tick_counter function_Get_Time();
float function_ElapsedTime(tick_counter start, tick_counter end);
void function_PrintElapsedTime(char *text, tick_counter start, tick_counter end);
void function_GetTimeAndPrintElapsedTime(char *text, tick_counter start);
void function_Get_HH_MM_SS(int input_overall_seconds, int *hours, int *minutes, int *seconds);



