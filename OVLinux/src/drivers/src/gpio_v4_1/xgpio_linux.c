#include <stdio.h>
#include "xgpio.h"

static XGpio_uio_info uio_info;

static int line_from_file(char* filename, char* linebuf) {
    char* s;
    int i;
    FILE* fp = fopen(filename, "r");
    if (!fp) return -1;
    s = fgets(linebuf, MAX_UIO_NAME_SIZE, fp);
    fclose(fp);
    if (!s) return -2;
    for (i=0; (*s)&&(i<MAX_UIO_NAME_SIZE); i++) {
        if (*s == '\n') *s = 0;
        s++;
    }
    return 0;
}
static int uio_info_read_name(XGpio_uio_info* info) {
    char file[ MAX_UIO_PATH_SIZE ];
    sprintf(file, "/sys/class/uio/uio%d/name", info->uio_num);
    return line_from_file(file, info->name);
}

static int uio_info_read_version(XGpio_uio_info* info) {
    char file[ MAX_UIO_PATH_SIZE ];
    sprintf(file, "/sys/class/uio/uio%d/version", info->uio_num);
    return line_from_file(file, info->version);
}


static int uio_info_read_map_addr(XGpio_uio_info* info, int n) {
    int ret;
    char file[ MAX_UIO_PATH_SIZE ];
    info->maps[n].addr = UIO_INVALID_ADDR;
    sprintf(file, "/sys/class/uio/uio%d/maps/map%d/addr", info->uio_num, n);
    FILE* fp = fopen(file, "r");
    if (!fp) return -1;
    ret = fscanf(fp, "0x%x", &info->maps[n].addr);
    fclose(fp);
    if (ret < 0) return -2;
    return  XST_SUCCESS;
}

static int uio_info_read_map_size(XGpio_uio_info* info, int n) {
    int ret;
    char file[ MAX_UIO_PATH_SIZE ];
    sprintf(file, "/sys/class/uio/uio%d/maps/map%d/size", info->uio_num, n);
    FILE* fp = fopen(file, "r");
    if (!fp) return -1;
    ret = fscanf(fp, "0x%x", &info->maps[n].size);
    fclose(fp);
    if (ret < 0) return -2;
    return  XST_SUCCESS;
}

int XGpio_Initialize(XGpio *InstancePtr) {

    char file[ MAX_UIO_PATH_SIZE ];

    XGpio_uio_info * InfoPtr = &uio_info;
    
    uint32_t leds=0x0;
    
    InfoPtr->uio_num = 2;

    uio_info_read_name(InfoPtr);
    uio_info_read_version(InfoPtr);
   
    uio_info_read_map_addr(InfoPtr, 0);
    uio_info_read_map_size(InfoPtr, 0);


    sprintf(file, "/dev/uio%d", InfoPtr->uio_num);
    if ((InfoPtr->uio_fd = open(file, O_RDWR)) < 0) {
        return XST_OPEN_DEVICE_FAILED;
    }

    InstancePtr->BaseAddress = (u32)mmap(NULL, InfoPtr->maps[0].size, PROT_READ|PROT_WRITE, MAP_SHARED, InfoPtr->uio_fd, 0 * getpagesize());
    assert(InstancePtr->Axilites_BaseAddress);

    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;


    return  XST_SUCCESS;
}

XGpio_uio_info* XGpio_get_fd(){
    return  &uio_info;
}



