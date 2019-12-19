#!/bin/bash

/home/andrew/software/intelFPGA_lite/19.1/modelsim_ase/linuxaloem/vsim << EOF -do \"do ./run_testbench.do $1 $2\" 
EOF
