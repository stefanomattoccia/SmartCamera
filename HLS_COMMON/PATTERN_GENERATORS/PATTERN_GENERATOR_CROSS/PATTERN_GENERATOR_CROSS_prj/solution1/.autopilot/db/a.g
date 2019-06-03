#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/gian/Documenti/HiPeRTLab/Projects/fpgavisioninfrastructure/hls/PATTERN_GENERATORS/PATTERN_GENERATOR_CROSS/PATTERN_GENERATOR_CROSS_prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
