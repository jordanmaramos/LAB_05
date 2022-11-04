onerror {exit -code 1}
vlib work
vlog -work work LAB_05.vo
vlog -work work TESTE.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.REG4BIT_FLIPFLOP_vlg_vec_tst -voptargs="+acc"
vcd file -direction LAB_05.msim.vcd
vcd add -internal REG4BIT_FLIPFLOP_vlg_vec_tst/*
vcd add -internal REG4BIT_FLIPFLOP_vlg_vec_tst/i1/*
run -all
quit -f
