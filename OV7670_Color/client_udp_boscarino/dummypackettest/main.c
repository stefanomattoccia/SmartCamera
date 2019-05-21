#include "dummy.h"

int main(void)
{
    printf("WARNING: please do not open this program from Codeblocks IDE,\notherwise it won't be able to load files.\nJust open it from the build folder.\n");
    printf("\nPlease be sure to have the png test files (ZYNQ, LUMA and CHROMA)\nplaced in the same directory as this executable.\n");
    printf("Press any key to continue.\n");
    getchar();

    start_simulation();

    return 0;
}
