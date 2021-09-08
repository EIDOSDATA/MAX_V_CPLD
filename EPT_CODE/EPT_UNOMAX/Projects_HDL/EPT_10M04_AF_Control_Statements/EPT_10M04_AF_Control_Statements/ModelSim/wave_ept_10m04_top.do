onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Testbench Signals}
add wave -noupdate /tb_ept_10m04_top/clk_50
add wave -noupdate /tb_ept_10m04_top/reset
add wave -noupdate -divider {TestBench Task: Addition}
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/if_else_count
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/if_else_result
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/case_input_register
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/case_statement_result
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/while_counter
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/while_result
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/for_loop_counter
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/for_loop_result
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/repeat_loop_counter
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/repeat_loop_result
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/loop_counter
add wave -noupdate -divider EPT-10M04-Top
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/CLK
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/RST_N
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/IF_ELSE_COUNTER_1
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/IF_ELSE_RESULT_1
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/CASE_COUNTER_2
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/CASE_RESULT_2
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/WHILE_COUNTER_3
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/WHILE_RESULT_3
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/while_counter
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/FOR_LOOP_COUNTER_4
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/FOR_LOOP_RESULT_4
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/index
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/REPEAT_LOOP_COUNTER_5
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/REPEAT_LOOP_RESULT_5
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/repeat_loop_counter
add wave -noupdate /tb_ept_10m04_top/DUT/repeat_loop_flag
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 19} {50002930220 ps} 0} {{Cursor 3} {1247655982 ps} 0} {{Cursor 4} {6891545513 ps} 0} {{Cursor 5} {267968244 ps} 0}
quietly wave cursor active 4
configure wave -namecolwidth 227
configure wave -valuecolwidth 40
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {974166144 ps}
