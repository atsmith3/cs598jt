## Generated SDC file "a4.sdc"

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

## DATE    "Tue Dec 10 20:06:34 2019"

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

set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {clk}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[0]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[1]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[2]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[3]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[4]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[5]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[6]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[7]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[8]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[9]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[10]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[11]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[12]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[13]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[14]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[15]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[16]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[17]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[18]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[19]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[20]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[21]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[22]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[23]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[24]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[25]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[26]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[27]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[28]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[29]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[30]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[31]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[32]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[33]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[34]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[35]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[36]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[37]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[38]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[39]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[40]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[41]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[42]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[43]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[44]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[45]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[46]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[47]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[48]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[49]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[50]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[51]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[52]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[53]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[54]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[55]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[56]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[57]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[58]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[59]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[60]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[61]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[62]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[63]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[64]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[65]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[66]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[67]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[68]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[69]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[70]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[71]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[72]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[73]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[74]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[75]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[76]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[77]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[78]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[79]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[80]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[81]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[82]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[83]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[84]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[85]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[86]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[87]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[88]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[89]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[90]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[91]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[92]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[93]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[94]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[95]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[96]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[97]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[98]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[99]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[100]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[101]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[102]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[103]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[104]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[105]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[106]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[107]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[108]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[109]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[110]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[111]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[112]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[113]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[114]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[115]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[116]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[117]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[118]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[119]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[120]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[121]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[122]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[123]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[124]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[125]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[126]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[127]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {data_i[128]}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_resp}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {rst}]
set_input_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {valid_i}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {done}]
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
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[0]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[1]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[2]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[3]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[4]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[5]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[6]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[7]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[8]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[9]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[10]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[11]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[12]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[13]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[14]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[15]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[16]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[17]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[18]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[19]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[20]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[21]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[22]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[23]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[24]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[25]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[26]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[27]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[28]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[29]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[30]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[31]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[32]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[33]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[34]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[35]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[36]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[37]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[38]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[39]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[40]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[41]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[42]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[43]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[44]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[45]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[46]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[47]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[48]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[49]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[50]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[51]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[52]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[53]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[54]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[55]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[56]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[57]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[58]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[59]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[60]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[61]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[62]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_wdata[63]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {mem_write}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  0.000 [get_ports {ready_o}]


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

