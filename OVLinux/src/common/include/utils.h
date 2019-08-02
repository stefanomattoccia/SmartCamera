#include <time.h>

double getInterruptTime(XGpio_uio_info * gpio_uio_fd, int interrupt_count){

    u32 info; 
 
    struct timespec start, stop;

    bool first  = true; 
    
    double accum = 0;
    for (int i = 0; i < interrupt_count; ++i){     

        int nb1 = write(gpio_uio_fd->uio_fd, &info, sizeof(info));
        int nb2 = read(gpio_uio_fd->uio_fd,  &info, sizeof(info));

        if(first) {
            // start timer
            clock_gettime(CLOCK_REALTIME, &start);
        }
        else{
            // stop timer
            clock_gettime(CLOCK_REALTIME, &stop);
            
            accum += (double)(stop.tv_sec-start.tv_sec) + 
                     (double)(stop.tv_nsec-start.tv_nsec)/(double)1000000000L;
        }
        first = !first;
                        
        //printf("Interrupt #%u!\n", info);
    }
    return accum/(interrupt_count/2);
}