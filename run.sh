#!/bin/bash

MODULES=('READ_SRC_PROPERTY' 'READ_SRC_EDGES' 'READ_DST_PROPERTY' 'PROCESS_EDGE' 'CONTROL_ATOMIC_UPDATE' 'READ_TEMP_DST_PROPERTY' 'REDUCE' 'WRITE_TEMP_DST_PROPERTY' 'READ_VERTEX_PROPERTY' 'READ_TEMP_VERTEX_PROPERTY' 'APPLY' 'WRITE_VERTEX_PROPERTY')
MODULE_NAMES=('ReadSrcProperty' 'ReadSrcEdges' 'ReadDstProperty' 'ProcessEdge' 'ControlAtomicUpdate' 'ReadTempDstProperty' 'Reduce' 'WriteTempDstProperty' 'ReadVertexProperty' 'ReadTempVertexProperty' 'Apply' 'WriteVertexProperty')
GRAPHS=('amazon0302' 'citeseer' 'G42' 'gemat11' 'lock_700' 'lshp1882' 'mbeacxc' 'orani678' 'shl_200')
PIPELINES=('1' '8' '16' '32')
APPS=('bfs' 'cc' 'sssp')

num_pipelines=1
num_pdr=1

RED='\033[0;31m'
GREEN='\033[0;32'
NC='\033[0m' # No Color

TRACE_BASE="/home/andrew/cs598jt/trace"

#for graph in "${GRAPHS[@]}"; do
#  for app in "${APPS[@]}"; do
#    for pipeline in "${PIPELINES[@]}"; do
#      fname="${graph}_${app}_${pipeline}_trace.zip"
#      unzip $fname
#      fname="${graph}_${app}_${pipeline}_trace"
#      mv trace $fname
#    done
#  done
#done

for ((i=0;i<"${#MODULES[@]}";i++)); do
  module="${MODULE_NAMES[i]}"
  module_flag="${MODULES[i]}"

  #Compile
  quartus_map --read_settings_files=on --write_settings_files=off --parallel --verilog_macro="$module_flag" --verilog_macro="TRACE_PATH=\"${TRACE_BASE}/\"" graphicionado_rtl -c graphicionado_rtl
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

  ##Timing Analyzer
  #quartus_sta --parallel graphicionado_rtl -c graphicionado_rtl
  #error=$?
  #if [ $error != 0 ]; then
  #  echo -e "${RED}ERROR${NC} quartus_sta failed with exit code $error"
  #  exit 1
  #fi

  ##EDA netlist writer
  #quartus_eda --read_settings_files=on --write_settings_files=off graphicionado_rtl -c graphicionado_rtl
  #error=$?
  #if [ $error != 0 ]; then
  #  echo -e "${RED}ERROR${NC} quartus_eda failed with exit code $error"
  #  exit 1
  #fi

  for graph in "${GRAPHS[@]}"; do
    for app in "${APPS[@]}"; do
      for ((pipeline_id=0;pipeline_id<"${num_pipelines}";pipeline_id++)); do
        if [ $module == 'ReadDstProperty' ]; then
          for ((pd_id=0;pd_id<"${num_pdr}";pd_id++)); do
            fname="${TRACE_BASE}/${graph}_${app}_8_trace/${module}_${pipeline_id}_${pd_id}_in.csv"
            if [ ! -f $fname ]; then
              echo -e "${RED}$fname${NC} does not exist"
            fi
            vsim -c -do "do ./simulation/modelsim/run_testbench.do ${module_flag} ${fname}"
          done
        else
          fname="${TRACE_BASE}/${graph}_${app}_8_trace/${module}_${pipeline_id}_in.csv"
          if [ ! -f $fname ]; then
            echo -e "${RED}$fname${NC} does not exist"
          fi
          vsim -c -do "do ./simulation/modelsim/run_testbench.do ${module_flag} ${fname}"
        fi
      done
    done
  done
done

##Compile
#quartus_map --read_settings_files=on --write_settings_files=off --parallel --verilog_macro="WRITE_TEMP_DST_PROPERTY" --verilog_macro="TRACE_PATH=\"${TRACE_BASE}/WriteTempDstProperty_0_in.csv\"" graphicionado_rtl -c graphicionado_rtl
#error=$?
#if [ $error != 0 ]; then
#  echo -e "${RED}ERROR${NC} quartus_map failed with exit code $error"
#  exit 1
#fi
#
##Fitter
#quartus_fit --read_settings_files=on --write_settings_files=off graphicionado_rtl -c graphicionado_rtl
#error=$?
#if [ $error != 0 ]; then
#  echo -e "${RED}ERROR${NC} quartus_fit failed with exit code $error"
#  exit 1
#fi
#
#
##Assembler
#quartus_asm --read_settings_files=on --write_settings_files=off graphicionado_rtl -c graphicionado_rtl
#error=$?
#if [ $error != 0 ]; then
#  echo -e "${RED}ERROR${NC} quartus_asm failed with exit code $error"
#  exit 1
#fi
#
##Timing Analyzer
#quartus_sta graphicionado_rtl -c graphicionado_rtl
#error=$?
#if [ $error != 0 ]; then
#  echo -e "${RED}ERROR${NC} quartus_sta failed with exit code $error"
#  exit 1
#fi

##EDA netlist writer
#quartus_eda --read_settings_files=on --write_settings_files=off graphicionado_rtl -c graphicionado_rtl
#error=$?
#if [ $error != 0 ]; then
#  echo -e "${RED}ERROR${NC} quartus_eda failed with exit code $error"
#  exit 1
#fi
#
##Launch Modelsim
#quartus_sh -t "/home/andrew/software/intelFPGA_lite/19.1/quartus/common/tcl/internal/nativelink/qnativesim.tcl" --gen_script "graphicionado_rtl" "graphicionado_rtl"
#error=$?
#if [ $error != 0 ]; then
#  echo -e "${RED}ERROR${NC} quartus_sh failed with exit code $error"
#  exit 1
#fi

#cd ./simulation/modelsim/
#vsim -c -do "do ./run_testbench.do WRITE_TEMP_DST_PROPERTY ${TRACE_BASE}/WriteTempDstProperty_0_in.csv"
