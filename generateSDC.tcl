project_open -force "/home/jliu128/cs598jt/graphicionado_rtl.qpf" -revision graphicionado_rtl
create_timing_netlist -model slow
create_clock -name clk -period 10.000 [get_ports {clk}]
derive_clock_uncertainty
set_input_delay -clock { clk } 0 [all_inputs]
set_output_delay -clock { clk } 0 [all_outputs]
update_timing_netlist
write_sdc -expand "top.sdc"
