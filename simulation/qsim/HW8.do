onerror {exit -code 1}
vlib work
vlog -work work HW8.vo
vlog -work work PipelineCPU.vwf.vt
vsim -novopt -c -t 1ps -L arriaii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.PipelineCPU_vlg_vec_tst -voptargs="+acc"
vcd file -direction HW8.msim.vcd
vcd add -internal PipelineCPU_vlg_vec_tst/*
vcd add -internal PipelineCPU_vlg_vec_tst/i1/*
run -all
quit -f
