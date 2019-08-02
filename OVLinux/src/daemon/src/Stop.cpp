#include <iostream>

#include "../../common/include/axis_to_ddr_writer.h"
#include "../../common/include/ddr_to_axis_reader.h"

int main() {

    AXIS2DDRWriter writer;
    DDR2AXISReader reader;

    int s1 = writer.init();
    int s2 = reader.init();

    std::cout << "status w: " << s1 << std::endl;
    std::cout << "status r: " << s2 << std::endl;

    writer.stop();
    reader.stop();

    return EXIT_SUCCESS;
}