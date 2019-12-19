transcript off
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}

if { $argc > 0 } {
  set this_argc [llength [lindex $argv 2]]
  if { $this_argc > 1 } {
    set module_flag [lindex [lindex $argv 2] 2]
    set trace_path [lindex [lindex $argv 2] 3]
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

vlog -sv -work work +incdir+/home/andrew/illinois/cs598jt/final_project {/home/andrew/illinois/cs598jt/final_project/types.sv}
vlog -sv -work work +incdir+/home/andrew/illinois/cs598jt/final_project {/home/andrew/illinois/cs598jt/final_project/mem_write.sv}
vlog -sv -work work +incdir+/home/andrew/illinois/cs598jt/final_project {/home/andrew/illinois/cs598jt/final_project/seq_mem.sv}
vlog -sv -work work +incdir+/home/andrew/illinois/cs598jt/final_project {/home/andrew/illinois/cs598jt/final_project/random_mem_read.sv}

vlog -sv -work work +define+$module_flag +define+TRACE_PATH=$trace_path +incdir+/home/andrew/illinois/cs598jt/final_project {/home/andrew/illinois/cs598jt/final_project/testbench.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclone10lp_ver -L rtl_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run -all
