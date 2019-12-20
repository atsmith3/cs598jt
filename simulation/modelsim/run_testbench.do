transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}

puts "$argv"
if { $argc > 0 } {
  set this_argc [llength [lindex $argv 3]]
  if { $this_argc > 1 } {
    set module_flag [lindex [lindex $argv 3] 2]
    set trace_path [lindex [lindex $argv 3] 3]
    puts "Module: $module_flag"
    puts "Trace: $trace_path"
  } else {
    puts stderr "Missing module type"
    exit
  }
} else {
  puts stderr "No args"
  exit
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+/home/jliu128/cs598/cs598jt {/home/jliu128/cs598/cs598jt/types.sv}
vlog -sv -work work +incdir+/home/jliu128/cs598/cs598jt {/home/jliu128/cs598/cs598jt/mem_write.sv}
vlog -sv -work work +incdir+/home/jliu128/cs598/cs598jt {/home/jliu128/cs598/cs598jt/seq_mem.sv}
vlog -sv -work work +incdir+/home/jliu128/cs598/cs598jt {/home/jliu128/cs598/cs598jt/random_mem_read.sv}

vlog -sv -work work +define+$module_flag +define+TRACE_PATH=$trace_path +incdir+/home/jliu128/cs598/cs598jt {/home/jliu128/cs598/cs598jt_scripts/testbench.sv}

vsim -t 1ns -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L stratixiv_hssi_ver -L stratixiv_pcie_hip_ver -L stratixiv_ver -L rtl_work -L work -voptargs="+acc"  tb

vcd file dump.vcd
vcd add -r /tb/top/*
run -all
