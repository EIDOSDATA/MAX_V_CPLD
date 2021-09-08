set ALTERA C:/Altera 
set SRC EPT_10M04_AF_Operators/EPT_10M04_AF_Operators
vlog +define+SIM -reportprogress 300 -work work {../../EPT_10M04_AF_Operators/src/EPT_10M04_AF_S2_Top.v}
vlog +define+SIM -reportprogress 300 -work work {../../EPT_10M04_AF_Operators/Testbench/tb_ept_10m04_top.v}
vsim +maxdelays work.tb_ept_10m04_top
do wave_ept_10m04_top.do
run -all
