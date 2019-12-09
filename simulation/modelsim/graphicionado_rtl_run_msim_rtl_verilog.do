transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+/home/andrew/illinois/cs598jt/final_project {/home/andrew/illinois/cs598jt/final_project/types.sv}
vlog -sv -work work +incdir+/home/andrew/illinois/cs598jt/final_project {/home/andrew/illinois/cs598jt/final_project/pipe_itf.sv}

vlog -sv -work work +incdir+/home/andrew/illinois/cs598jt/final_project {/home/andrew/illinois/cs598jt/final_project/testbench.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run 100000000 ps
