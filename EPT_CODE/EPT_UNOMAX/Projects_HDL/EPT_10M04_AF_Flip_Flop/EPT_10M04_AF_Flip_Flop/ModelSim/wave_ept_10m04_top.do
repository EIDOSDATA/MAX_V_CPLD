onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Testbench Signals}
add wave -noupdate /tb_ept_10m04_top/clk_50
add wave -noupdate /tb_ept_10m04_top/reset
add wave -noupdate /tb_ept_10m04_top/d
add wave -noupdate /tb_ept_10m04_top/q
add wave -noupdate /tb_ept_10m04_top/q_bar
add wave -noupdate -divider EPT-10M04-Top
add wave -noupdate /tb_ept_10m04_top/DUT/d
add wave -noupdate /tb_ept_10m04_top/DUT/clk
add wave -noupdate /tb_ept_10m04_top/DUT/q
add wave -noupdate /tb_ept_10m04_top/DUT/q_bar
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 19} {7254725913 ps} 0} {{Cursor 3} {1247655982 ps} 0} {{Cursor 4} {6891545513 ps} 0} {{Cursor 5} {552485341 ps} 0}
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
WaveRestoreZoom {50002423151 ps} {50002504045 ps}
