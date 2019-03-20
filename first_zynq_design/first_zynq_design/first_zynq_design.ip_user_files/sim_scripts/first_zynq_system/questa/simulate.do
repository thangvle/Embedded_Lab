onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib first_zynq_system_opt

do {wave.do}

view wave
view structure
view signals

do {first_zynq_system.udo}

run -all

quit -force
