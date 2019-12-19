## Generated SDC file "graphicionado_rtl.out.sdc"

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

## DATE    "Tue Dec 10 00:14:31 2019"

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

set_clock_uncertainty -rise_from [get_clocks {clk}] -rise_to [get_clocks {clk}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {clk}] -fall_to [get_clocks {clk}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clk}] -rise_to [get_clocks {clk}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clk}] -fall_to [get_clocks {clk}]  0.020  


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[0]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[1]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[2]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[3]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[4]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[5]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[6]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[7]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[8]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[9]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[10]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[11]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[12]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[13]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[14]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[15]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[16]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[17]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[18]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[19]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[20]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[21]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[22]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[23]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[24]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[25]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[26]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[27]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[28]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[29]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[30]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[31]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[32]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[33]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[34]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[35]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[36]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[37]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[38]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[39]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[40]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[41]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[42]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[43]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[44]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[45]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[46]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[47]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[48]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[49]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[50]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[51]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[52]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[53]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[54]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[55]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[56]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[57]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[58]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[59]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[60]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[61]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[62]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {base_addr[63]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {clk}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[0]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[1]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[2]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[3]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[4]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[5]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[6]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[7]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[8]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[9]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[10]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[11]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[12]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[13]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[14]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[15]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[16]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[17]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[18]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[19]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[20]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[21]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[22]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[23]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[24]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[25]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[26]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[27]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[28]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[29]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[30]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[31]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[32]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[33]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[34]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[35]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[36]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[37]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[38]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[39]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[40]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[41]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[42]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[43]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[44]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[45]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[46]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[47]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[48]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[49]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[50]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[51]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[52]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[53]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[54]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[55]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[56]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[57]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[58]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[59]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[60]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[61]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[62]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_rdata[63]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_resp}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {new_iteration}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[0]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[1]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[2]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[3]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[4]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[5]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[6]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[7]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[8]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[9]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[10]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[11]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[12]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[13]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[14]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[15]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[16]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[17]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[18]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[19]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[20]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[21]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[22]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[23]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[24]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[25]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[26]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[27]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[28]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[29]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[30]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[31]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[32]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[33]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[34]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[35]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[36]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[37]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[38]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[39]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[40]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[41]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[42]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[43]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[44]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[45]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[46]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[47]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[48]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[49]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[50]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[51]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[52]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[53]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[54]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[55]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[56]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[57]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[58]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[59]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[60]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[61]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[62]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {queue_length[63]}]
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
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_o[64]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[0]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[1]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[2]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[3]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[4]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[5]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[6]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[7]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[8]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[9]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[10]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[11]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[12]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[13]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[14]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[15]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[16]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[17]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[18]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[19]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[20]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[21]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[22]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[23]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[24]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[25]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[26]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[27]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[28]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[29]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[30]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[31]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[32]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[33]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[34]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[35]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[36]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[37]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[38]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[39]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[40]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[41]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[42]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[43]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[44]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[45]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[46]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[47]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[48]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[49]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[50]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[51]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[52]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[53]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[54]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[55]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[56]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[57]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[58]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[59]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[60]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[61]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[62]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_addr[63]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_read}]
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

