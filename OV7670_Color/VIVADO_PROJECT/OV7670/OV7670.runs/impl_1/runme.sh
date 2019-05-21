#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
# 

echo "This script was generated under a different operating system."
echo "Please update the PATH and LD_LIBRARY_PATH variables below, before executing this script"
exit

if [ -z "$PATH" ]; then
  PATH=F:/Vivado_old/SDK/2016.2/bin;F:/Vivado_old/Vivado/2016.2/ids_lite/ISE/bin/nt64;F:/Vivado_old/Vivado/2016.2/ids_lite/ISE/lib/nt64:F:/Vivado_old/Vivado/2016.2/bin
else
  PATH=F:/Vivado_old/SDK/2016.2/bin;F:/Vivado_old/Vivado/2016.2/ids_lite/ISE/bin/nt64;F:/Vivado_old/Vivado/2016.2/ids_lite/ISE/lib/nt64:F:/Vivado_old/Vivado/2016.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='F:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.runs/impl_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .init_design.begin.rst
EAStep vivado -log design_1_wrapper.vdi -applog -m64 -messageDb vivado.pb -mode batch -source design_1_wrapper.tcl -notrace


