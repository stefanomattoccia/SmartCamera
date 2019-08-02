#ifndef _DDR_TO_AXIS_READER_H_
#define _DDR_TO_AXIS_READER_H_

#include "../../drivers/src/ddr_to_axis_reader_v1_0/xddr_to_axis_reader.h"

class DDR2AXISReader{
    
    private:
        XDdr_to_axis_reader _reader;

    public:
        void stop();

        int init();
        int configure();
};

#endif