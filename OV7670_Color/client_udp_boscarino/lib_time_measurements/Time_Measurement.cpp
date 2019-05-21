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

// #include "stdafx.h"
#include "Time_Measurement.h"



tick_counter function_Get_Time()
{
	return getTickCount();
}


float function_ElapsedTime(tick_counter start, tick_counter end)
{
	// in seconds
	return (float)((end-start)/getTickFrequency()); 
}


void function_PrintElapsedTime(char *text, tick_counter start, tick_counter end)
{
	printf("%s : %3.10f sec\n", text, function_ElapsedTime(start,end));
	return;
}

void function_GetTimeAndPrintElapsedTime(char *text, tick_counter start)
{
	tick_counter local_end = function_Get_Time();
	printf("%3.10f sec : %s\n", function_ElapsedTime(start,local_end),text);
	return;

}


void function_Get_HH_MM_SS(int input_overall_seconds, int *hours, int *minutes, int *seconds)
{
	// Funzione che, fornito in input il numero di secondi, ritorna HH, MM, SS 
	int overall_time_in_seconds =  (int)(input_overall_seconds);

	*hours		= overall_time_in_seconds/3600;
	*minutes	= (overall_time_in_seconds - *hours*3600)/60;
	*seconds	= (overall_time_in_seconds - *hours*3600 - *minutes*60);
}