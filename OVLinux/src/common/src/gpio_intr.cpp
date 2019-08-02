#include "../include/gpio_intr.h"

int GpioIntr::init() {

    int result;

    result = XGpio_Initialize(&_gpioIntr);

    if(result != XST_SUCCESS) {
        printf("GpioIntr error: %d\n", result);
        return result;
    }
    return XST_SUCCESS;
}

void GpioIntr::intrEnable() {
    XGpio_InterruptEnable(&_gpioIntr, 0xFFFFFFFF);
    XGpio_InterruptGlobalEnable(&_gpioIntr);
}
void GpioIntr::intrDisable() {
    XGpio_InterruptDisable(&_gpioIntr, 0xFFFFFFFF);
    XGpio_InterruptGlobalDisable(&_gpioIntr);
}
u32 GpioIntr::waitForInterrupts() {

    u32 info;

    int nb1 = write(_gpioUIOFd->uio_fd, &info, sizeof(info));
    int nb2 = read( _gpioUIOFd->uio_fd, &info, sizeof(info));

    return info;
}