## Generated SDC file "p5.sdc"

## Copyright (C) 2018  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel FPGA IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Intel and sold by Intel or its authorized distributors.  Please
## refer to the applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

## DATE    "Tue Dec 10 01:21:41 2019"

##
## DEVICE  "EP4SGX70HF35C2"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {clk} -period 10.000 -waveform { 0.000 5.000 } [get_ports {clk}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************



#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {clk}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[0]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[1]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[2]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[3]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[4]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[5]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[6]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[7]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[8]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[9]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[10]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[11]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[12]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[13]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[14]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[15]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[16]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[17]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[18]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[19]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[20]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[21]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[22]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[23]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[24]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[25]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[26]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[27]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[28]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[29]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[30]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[31]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[32]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[33]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[34]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[35]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[36]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[37]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[38]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[39]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[40]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[41]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[42]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[43]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[44]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[45]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[46]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[47]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[48]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[49]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[50]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[51]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[52]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[53]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[54]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[55]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[56]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[57]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[58]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[59]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[60]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[61]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[62]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_a[63]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[0]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[1]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[2]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[3]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[4]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[5]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[6]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[7]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[8]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[9]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[10]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[11]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[12]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[13]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[14]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[15]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[16]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[17]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[18]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[19]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[20]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[21]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[22]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[23]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[24]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[25]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[26]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[27]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[28]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[29]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[30]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[31]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[32]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[33]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[34]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[35]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[36]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[37]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[38]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[39]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[40]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[41]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[42]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[43]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[44]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[45]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[46]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[47]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[48]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[49]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[50]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[51]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[52]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[53]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[54]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[55]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[56]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[57]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[58]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[59]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[60]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[61]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[62]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_b[63]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {ready_i}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rst}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {valid_i}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[0]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[1]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[2]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[3]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[4]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[5]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[6]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[7]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[8]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[9]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[10]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[11]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[12]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[13]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[14]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[15]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[16]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[17]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[18]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[19]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[20]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[21]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[22]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[23]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[24]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[25]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[26]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[27]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[28]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[29]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[30]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[31]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[32]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[33]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[34]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[35]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[36]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[37]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[38]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[39]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[40]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[41]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[42]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[43]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[44]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[45]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[46]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[47]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[48]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[49]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[50]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[51]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[52]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[53]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[54]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[55]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[56]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[57]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[58]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[59]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[60]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[61]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[62]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[63]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {ready_o}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {valid_o}]


#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

