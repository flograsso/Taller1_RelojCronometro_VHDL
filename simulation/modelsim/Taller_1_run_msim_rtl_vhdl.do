transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Fede/workspace/Quartus/Taller_1/Taller_1.vhd}
vcom -93 -work work {C:/Users/Fede/workspace/Quartus/Taller_1/segmentos7.vhd}

