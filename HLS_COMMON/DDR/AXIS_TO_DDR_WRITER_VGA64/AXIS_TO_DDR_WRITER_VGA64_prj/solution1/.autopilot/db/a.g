#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/andrea/Documenti/vision/Ultrascale/hls/DDR/AXIS_TO_DDR_WRITER_VGA64/AXIS_TO_DDR_WRITER_VGA64_prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
