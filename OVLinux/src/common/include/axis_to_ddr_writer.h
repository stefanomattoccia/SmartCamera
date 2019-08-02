#ifndef _AXIS_TO_DDR_WRITER_H_
#define _AXIS_TO_DDR_WRITER_H_

#include "../../drivers/src/axis_to_ddr_writer_v1_0/xaxis_to_ddr_writer.h"

class AXIS2DDRWriter{

    private:
        XAxis_to_ddr_writer _writer;

    public:
        void stop();

        int init();
        int configure();
};

#endif