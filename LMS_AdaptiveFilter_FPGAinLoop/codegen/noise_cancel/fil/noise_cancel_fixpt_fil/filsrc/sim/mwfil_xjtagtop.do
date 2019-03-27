set SRCDIR C:/Users/admin/Desktop/bhavesh/codegen/noise_cancel/fil/C:/Users/admin/Desktop/bhavesh/codegen/noise_cancel/fil/noise_cancel_fixpt_fil/filsrc
set SIMDIR C:/Users/admin/Desktop/bhavesh/codegen/noise_cancel/fil/C:/Users/admin/Desktop/bhavesh/codegen/noise_cancel/fil/noise_cancel_fixpt_fil/filsrc/sim
set COMPILE vcom

set SIM vsim

vlib $SIMDIR/work
vmap work $SIMDIR/work

$COMPILE $SRCDIR/jtag_mac.v
$COMPILE $SRCDIR/jtag_mac_fifo_wrapper.vhd
$COMPILE $SRCDIR/simcycle_fifo_wrapper.vhd
$COMPILE $SRCDIR/mwfil_dpscram.vhd
$COMPILE $SRCDIR/mwfil_udfifo.vhd
$COMPILE $SRCDIR/mwfil_bus2dut.vhd
$COMPILE $SRCDIR/mwfil_chifcore.vhd
$COMPILE $SRCDIR/mwfil_controller.vhd
$COMPILE $SRCDIR/mwfil_dut2bus.vhd
$COMPILE $SRCDIR/noise_cancel_fixpt_wrapper.v
$COMPILE $SRCDIR/mwfil_chiftop.vhd
$COMPILE $SRCDIR/noise_cancel_fixpt_fil.vhd
