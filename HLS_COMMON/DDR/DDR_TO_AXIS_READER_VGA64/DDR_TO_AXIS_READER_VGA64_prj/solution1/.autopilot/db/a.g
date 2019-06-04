#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/andrea/Documenti/vision/Ultrascale/hls/DDR/DDR_TO_AXIS_READER_VGA64/DDR_TO_AXIS_READER_VGA64_prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
