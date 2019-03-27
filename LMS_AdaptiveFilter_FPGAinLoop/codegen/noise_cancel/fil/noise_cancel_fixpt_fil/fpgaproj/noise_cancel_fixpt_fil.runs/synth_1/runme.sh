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
  PATH=F:/Softwares/Xilinx_Vivado_SDK_2016.2_0605_1/Vivado/2016.2/ids_lite/ISE/bin/nt64;F:/Softwares/Xilinx_Vivado_SDK_2016.2_0605_1/Vivado/2016.2/ids_lite/ISE/lib/nt64:F:/Softwares/Xilinx_Vivado_SDK_2016.2_0605_1/Vivado/2016.2/bin
else
  PATH=F:/Softwares/Xilinx_Vivado_SDK_2016.2_0605_1/Vivado/2016.2/ids_lite/ISE/bin/nt64;F:/Softwares/Xilinx_Vivado_SDK_2016.2_0605_1/Vivado/2016.2/ids_lite/ISE/lib/nt64:F:/Softwares/Xilinx_Vivado_SDK_2016.2_0605_1/Vivado/2016.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='C:/Users/admin/Desktop/bhavesh/codegen/noise_cancel/fil/noise_cancel_fixpt_fil/fpgaproj/noise_cancel_fixpt_fil.runs/synth_1'
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

EAStep vivado -log noise_cancel_fixpt_fil.vds -m64 -mode batch -messageDb vivado.pb -notrace -source noise_cancel_fixpt_fil.tcl