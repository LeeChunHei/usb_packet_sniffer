transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Projects/ss_usb_analyzer {D:/Projects/ss_usb_analyzer/usb_capture.v}
vlog -vlog01compat -work work +incdir+D:/Projects/ss_usb_analyzer {D:/Projects/ss_usb_analyzer/dual_ram.v}
vlog -vlog01compat -work work +incdir+D:/Download/Supra/etc/arch/rodinia {D:/Download/Supra/etc/arch/rodinia/alta_sim.v}
vlog -vlog01compat -work work +incdir+D:/Projects/ss_usb_analyzer {D:/Projects/ss_usb_analyzer/spi_register_bus.v}

