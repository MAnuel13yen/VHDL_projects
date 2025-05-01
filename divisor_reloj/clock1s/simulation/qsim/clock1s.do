onerror {exit -code 1}
vlib work
vcom -work work clock1s.vho
vcom -work work Waveform14.vwf.vht
vsim -novopt -c -t 1ps -L cycloneiv -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.clock1s_vhd_vec_tst
vcd file -direction clock1s.msim.vcd
vcd add -internal clock1s_vhd_vec_tst/*
vcd add -internal clock1s_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
