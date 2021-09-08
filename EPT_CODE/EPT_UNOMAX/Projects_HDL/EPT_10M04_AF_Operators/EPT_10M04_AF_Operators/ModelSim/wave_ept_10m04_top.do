onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Testbench Signals}
add wave -noupdate /tb_ept_10m04_top/clk_50
add wave -noupdate /tb_ept_10m04_top/reset
add wave -noupdate -divider {TestBench Task: Addition}
add wave -noupdate -divider EPT-10M04-Top
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/ADDITION_A
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/ADDITION_B
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/ADDITION_RESULT
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/SUBTRACTION_A
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/SUBTRACTION_B
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/SUBTRACTION_RESULT
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/MULTIPLICATION_A
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/MULTIPLICATION_B
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/MULTIPLICATION_RESULT
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/DIVISION_A
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/DIVISION_B
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/DIVISION_RESULT
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/LOGICAL_NEGATION_A
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/LOGICAL_NEGATION_B
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/LOGICAL_NEGATION_RESULT
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/LOGICAL_AND_A
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/LOGICAL_AND_B
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/LOGICAL_AND_RESULT
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/LOGICAL_OR_A
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/LOGICAL_OR_B
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/LOGICAL_OR_RESULT
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/GREATER_LESSER_THAN_A
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/GREATER_LESSER_THAN_B
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/GREATER_THAN_RESULT
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/LESSER_THAN_RESULT
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/GREATER_EQUAL_THAN_A
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/GREATER_EQUAL_THAN_B
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/GREATER_EQUAL_THAN_RESULT
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/LESSER_EQUAL_THAN_RESULT
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/EQUALITY_A
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/EQUALITY_B
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/EQUALITY_RESULT
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/INEQUALITY_A
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/INEQUALITY_B
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/INEQUALITY_RESULT
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/BITWISE_NEGATION_A
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/BITWISE_NEGATION_B
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/BITWISE_NEGATION_RESULT
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/GATE_A
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/GATE_B
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/NAND_RESULT
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/OR_RESULT
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/NOR_RESULT
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/XOR_RESULT
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/XNOR_RESULT
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/RIGHT_SHIFT_RESULT
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/LEFT_SHIFT_RESULT
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/CONCATENATION_A
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/CONCATENATION_B
add wave -noupdate -radix hexadecimal /tb_ept_10m04_top/DUT/CONCATENATION_RESULT
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 19} {50002930220 ps} 0} {{Cursor 3} {1247655982 ps} 0} {{Cursor 4} {6891545513 ps} 0} {{Cursor 5} {3000000 ps} 0}
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
WaveRestoreZoom {50011539722 ps} {50026761068 ps}
