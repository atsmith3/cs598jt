#!/bin/bash

PROJ_NAME=
MODULES=('READ_SRC_PROPERTY' 'READ_SRC_EDGES' 'READ_DST_PROPERTY' 'PROCESS_EDGE' 'CONTROL_ATOMIC_UPDATE' 'READ_TEMP_DST_PROPERTY' 'REDUCE WRITE_TEMP_DST_PROPERTY' 'READ_VERTEX_PROPERTY' 'READ_TEMP_VERTEX_PROPERTY' 'APPLY' 'WRITE_VERTEX_PROPERTY')

RED='\033[0;31m'
GREEN='\033[0;32'
NC='\033[0m' # No Color

TRACE_BASE="/home/andrew/illinois/cs598jt/final_project/trace"

#Compile
quartus_map --read_settings_files=on --write_settings_files=off --parallel --verilog_macro="WRITE_TEMP_DST_PROPERTY" --verilog_macro="TRACE_PATH=\"${TRACE_BASE}/WriteTempDstProperty_0_in.csv\"" graphicionado_rtl -c graphicionado_rtl
error=$?
if [ $error != 0 ]; then
  echo -e "${RED}ERROR${NC} quartus_map failed with exit code $error"
  exit 1
fi

#Fitter
quartus_fit --read_settings_files=on --write_settings_files=off graphicionado_rtl -c graphicionado_rtl
error=$?
if [ $error != 0 ]; then
  echo -e "${RED}ERROR${NC} quartus_fit failed with exit code $error"
  exit 1
fi


#Assembler
quartus_asm --read_settings_files=on --write_settings_files=off graphicionado_rtl -c graphicionado_rtl
error=$?
if [ $error != 0 ]; then
  echo -e "${RED}ERROR${NC} quartus_asm failed with exit code $error"
  exit 1
fi

#Timing Analyzer
quartus_sta graphicionado_rtl -c graphicionado_rtl
error=$?
if [ $error != 0 ]; then
  echo -e "${RED}ERROR${NC} quartus_sta failed with exit code $error"
  exit 1
fi

#EDA netlist writer
quartus_eda --read_settings_files=on --write_settings_files=off graphicionado_rtl -c graphicionado_rtl
error=$?
if [ $error != 0 ]; then
  echo -e "${RED}ERROR${NC} quartus_eda failed with exit code $error"
  exit 1
fi

#Launch Modelsim
quartus_sh -t "/home/andrew/software/intelFPGA_lite/19.1/quartus/common/tcl/internal/nativelink/qnativesim.tcl" --gen_script "graphicionado_rtl" "graphicionado_rtl"
error=$?
if [ $error != 0 ]; then
  echo -e "${RED}ERROR${NC} quartus_sh failed with exit code $error"
  exit 1
fi

cd ./simulation/modelsim/
INPUT="-do \"do ./run_testbench.do WRITE_TEMP_DST_PROPERTY ${TRACE_BASE}/WriteTempDstProperty_0_in.csv\""
/home/andrew/software/intelFPGA_lite/19.1/modelsim_ase/linuxaloem/vsim << EOF $INPUT 
EOF
