transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/eidos/Desktop/UART_MAXV_TEST/src {C:/Users/eidos/Desktop/UART_MAXV_TEST/src/UART_MAXV_TEST_TOP.v}
vlog -vlog01compat -work work +incdir+C:/Users/eidos/Desktop/UART_MAXV_TEST/src {C:/Users/eidos/Desktop/UART_MAXV_TEST/src/async_transmitter.v}
vlog -vlog01compat -work work +incdir+C:/Users/eidos/Desktop/UART_MAXV_TEST/src {C:/Users/eidos/Desktop/UART_MAXV_TEST/src/async_receiver.v}
vlog -vlog01compat -work work +incdir+C:/Users/eidos/Desktop/UART_MAXV_TEST/src {C:/Users/eidos/Desktop/UART_MAXV_TEST/src/BaudTickGen.v}

