transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -sv -work work +incdir+. {graphicionado_rtl.svo}

vlog -sv -work work +incdir+/home/andrew/illinois/cs598jt/final_project {/home/andrew/illinois/cs598jt/final_project/testbench.sv}

vsim -t 1ps -L altera_ver -L cyclone10lp_ver -L gate_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run -all
