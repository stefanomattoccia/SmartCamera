#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>
#include "../../common/include/axis_to_ddr_writer.h"
#include "../../common/include/ddr_to_axis_reader.h"
#include "../../common/include/gpio_intr.h"
#include "../../common/include/platform_config.h"

/**
 * test function used to see if the reading on DDR 
 * is done correctly.
**/
void take_pic(off_t addr, unsigned char *frame){

    FILE* file = fopen("../src/frameAccess/src/pic.pgm","w");

    size_t pagesize = getpagesize();
    off_t page_base = (addr / pagesize) * pagesize;
    off_t page_offset = addr - page_base;
    size_t i;

    fprintf(file,"P2\n#pic\n640 480\n255\n");

    for (i = 0; i < FRAME_BUFFER_DIM; ++i){
        fprintf(file,"%d ", (unsigned char)frame[page_offset + i]);
    }

    fclose(file);
}



int main(int argc, char *argv[]) {

    AXIS2DDRWriter  *axi2ddrWriter   = new AXIS2DDRWriter();
    DDR2AXISReader  *ddr2axireader   = new DDR2AXISReader();
    GpioIntr        *gpiointr        = new GpioIntr();  

    int result;
   
    
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

    gpiointr->waitForInterrupts();

    u32 frame_index = gpiointr->discreteRead();

    frame_index == 0 ? frame_index = FRAME_BUFFER_NUM - 1 : frame_index--;

    off_t  ddr_address = ((off_t) FRAME_BUFFER_ADDR) + frame_index*FRAME_SIZE;

    int fd = open("/dev/mem", O_SYNC);

    unsigned char *mem =(unsigned char*) mmap(NULL, FRAME_SIZE, PROT_READ | PROT_WRITE, MAP_PRIVATE, fd, ddr_address);
    if (mem == MAP_FAILED) {
        perror("Can't map memory");
        return -1;
    }
    
    take_pic(ddr_address,mem);

    close(fd);

    

    return 0;
}