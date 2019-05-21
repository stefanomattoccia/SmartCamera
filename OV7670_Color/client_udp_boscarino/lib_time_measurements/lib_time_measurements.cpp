// lib_time_measurements.cpp : Defines the exported functions for the DLL application.
//
#ifdef WINDOWS
#include "stdafx.h"
#endif

#include "lib_time_measurements.h"
#include "Time_Measurement.h"


LIB_TIME_MEASUREMENTS_API tick_counter Get_Time()
{
	return function_Get_Time();
}



LIB_TIME_MEASUREMENTS_API float ElapsedTime(tick_counter start, tick_counter end)
{
	return function_ElapsedTime(start, end);
}



LIB_TIME_MEASUREMENTS_API void PrintElapsedTime(char *text, tick_counter start, tick_counter end)
{
	return function_PrintElapsedTime(text, start, end);
}



LIB_TIME_MEASUREMENTS_API void GetTimeAndPrintElapsedTime(char *text, tick_counter start)
{
	return function_GetTimeAndPrintElapsedTime(text, start);
}


LIB_TIME_MEASUREMENTS_API void Get_HH_MM_SS(int input_overall_seconds, int *hours, int *minutes, int *seconds)
{
	function_Get_HH_MM_SS(input_overall_seconds, hours, minutes, seconds);
}
