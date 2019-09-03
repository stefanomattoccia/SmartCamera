#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>
#include <time.h>
#include "../../common/include/axis_to_ddr_writer.h"
#include "../../common/include/ddr_to_axis_reader.h"
#include "../../common/include/gpio_intr.h"
#include "../../common/include/platform_config.h"


int main(int argc, char *argv[]) {

    AXIS2DDRWriter  *axi2ddrWriter   = new AXIS2DDRWriter();
    DDR2AXISReader  *ddr2axireader   = new DDR2AXISReader();
    GpioIntr        *gpiointr        = new GpioIntr();  

    timespec start, stop; 
    FILE *file = fopen("data_MemStress.txt","w+");

    double accum = 0; 
    int result;
    bool first = true; 
    
    axi2ddrWriter->init();
    ddr2axireader->init();

    result  =   axi2ddrWriter->configure();
    if(result != XST_SUCCESS) {
        printf("configue axis to ddr writer error: %d\n", result);
    }

    result  =   ddr2axireader->configure();
    if(result != XST_SUCCESS) {
        printf("configure ddr to axis reader error: %d\n", result);
    }

    result =    gpiointr->init();
    if(result != XST_SUCCESS) {
        printf("gpio error: %d\n", result);
    }

    gpiointr->intrEnable();

    printf("test begin\n");

    for (int i= 0; i<100; i++){
        accum = 0 ; 

        gpiointr->waitForInterrupts();

        clock_gettime(CLOCK_REALTIME, &start);

        gpiointr->waitForInterrupts();

        clock_gettime(CLOCK_REALTIME, &stop);

        accum += (double)(stop.tv_sec-start.tv_sec) + (double)(stop.tv_nsec-start.tv_nsec)/(double)1000000000L;

        fprintf(file,"%.20f\n",accum);

    }

    printf("test finish\n");

    
    return 0;
}