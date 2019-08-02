#ifndef _GPIO_INTR_H_
#define _GPIO_INTR_H_

#include "../../drivers/src/gpio_v4_1/xgpio.h"

class GpioIntr{
    
    private:
        XGpio _gpioIntr;
        XGpio_uio_info * _gpioUIOFd;
    
    public:
        int init();

        u32 waitForInterrupts();

        void intrEnable();
        void intrDisable();
};

#endif