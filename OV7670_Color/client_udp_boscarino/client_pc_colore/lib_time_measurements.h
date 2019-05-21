// The following ifdef block is the standard way of creating macros which make exporting
// from a DLL simpler. All files within this DLL are compiled with the LIB_TIME_MEASUREMENTS_EXPORTS
// symbol defined on the command line. this symbol should not be defined on any project
// that uses this DLL. This way any other project whose source files include this file see
// LIB_TIME_MEASUREMENTS_API functions as being imported from a DLL, whereas this DLL sees symbols
// defined with this macro as being exported.

#include "../OS/os.h"

#ifdef WINDOWS
#ifdef LIB_TIME_MEASUREMENTS_EXPORTS
#define LIB_TIME_MEASUREMENTS_API __declspec(dllexport)
#else
#define LIB_TIME_MEASUREMENTS_API __declspec(dllimport)
#endif
#endif

#ifdef WINDOWS_CODEBLOCKS
#define LIB_TIME_MEASUREMENTS_API
#endif


#ifdef WINDOWS_CODEBLOCKS
#include <inttypes.h>
#endif


#ifdef LINUX
#include <inttypes.h>
#endif

#ifdef MAC
#include <inttypes.h>
#endif



#ifdef LINUX
#define LIB_TIME_MEASUREMENTS_API
#endif

#ifdef MAC
#define LIB_TIME_MEASUREMENTS_API
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


LIB_TIME_MEASUREMENTS_API tick_counter Get_Time();
LIB_TIME_MEASUREMENTS_API float ElapsedTime(tick_counter start, tick_counter end);
LIB_TIME_MEASUREMENTS_API void PrintElapsedTime(char *text, tick_counter start, tick_counter end);
LIB_TIME_MEASUREMENTS_API void GetTimeAndPrintElapsedTime(char *text, tick_counter start);
LIB_TIME_MEASUREMENTS_API void Get_HH_MM_SS(int input_overall_seconds, int *hours, int *minutes, int *seconds);
