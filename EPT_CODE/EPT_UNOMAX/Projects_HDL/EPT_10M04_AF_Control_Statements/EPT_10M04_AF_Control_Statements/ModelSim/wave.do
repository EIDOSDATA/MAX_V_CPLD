onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Testbench Signals}
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/reset
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/usb_pwren_n
add wave -noupdate -format Logic /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_FT245_RXF_N
add wave -noupdate -format Logic /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_FT245_RD_N
add wave -noupdate -format Logic /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_FT245_TXE_N
add wave -noupdate -format Logic /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_FT245_WR
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_FT245_DATA
add wave -noupdate -format Literal /tb_hsp_ft2232_top/aa
add wave -noupdate -format Literal /tb_hsp_ft2232_top/bc_in
add wave -noupdate -format Literal /tb_hsp_ft2232_top/bc_out
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/bd_inout
add wave -noupdate -divider {Host Check Status}
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/host_check_status/host_status_byte
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/host_read_status
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/host_data_out
add wave -noupdate -divider {Host Read Bus}
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/host_bus_read/read_register_value
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/command_from_device
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/host_read_byte
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/host_data_out
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/host_readback
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/host_data_in
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/host_read_register
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/host_read_status
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/host_register
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/host_status_byte
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/host_status_we
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/host_write_byte
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/host_write_value
add wave -noupdate -divider {Trigger In}
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/send_trigger/trigger_control_word
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/send_trigger/trigger_bit
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/send_trigger/trigger_cmd_to_device
add wave -noupdate -divider {Block In Transfer}
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/send_block/block_control_word
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/send_block/block_address
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/send_block/block_length
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/send_block/block_cmd_to_device
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/send_block/byte_count
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/send_block/block_write_word
add wave -noupdate -divider DUT
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/CLK_66
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/RST
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/aa
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/bc_in
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/bc_out
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/bd_inout
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/TRIGGER_IN
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/TRIGGER_OUT
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/TR_DIR_1
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/TR_OE_1
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/TR_DIR_2
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/TR_OE_2
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/TR_DIR_3
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/TR_OE_3
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/TR_DIR_4
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/TR_OE_4
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/LB_MIDDLE
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/LB_UPPER
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/UC_IN
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/UC_OUT
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/transfer_out_reg
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/transfer_in_received
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/transfer_in_byte
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/transfer_out_byte
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/transfer_in_loop_back
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/transfer_to_host_meta
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/transfer_to_host_reset
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/reset
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/reset_counter
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/reset_signal_reg
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/aa_in
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/test_counter
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/test_signal_reg
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/data_byte_ready
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/ft_245_state_machine
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/endpoint_registers_state
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/register_decode
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/endpoint_uc_payload
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/trigger_out
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/trigger_in_byte
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/trigger_in_store
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/trigger_in_reg
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/trigger_in_reset
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/trigger_in_detect
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/trigger_in_counter
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/uc_out_m
add wave -noupdate -divider {Active Trigger}
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/ACTIVE_TRIGGER_INST/uc_clk
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/ACTIVE_TRIGGER_INST/uc_reset
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/ACTIVE_TRIGGER_INST/uc_in
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/ACTIVE_TRIGGER_INST/uc_out
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/ACTIVE_TRIGGER_INST/trigger_to_host
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/ACTIVE_TRIGGER_INST/trigger_to_device
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/ACTIVE_TRIGGER_INST/to_trigupdate
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/ACTIVE_TRIGGER_INST/trigger_to_host_flag
add wave -noupdate -divider {Active Transfer}
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/ACTIVE_TRANSFER_INST/uc_clk
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/ACTIVE_TRANSFER_INST/uc_reset
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/ACTIVE_TRANSFER_INST/uc_in
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/ACTIVE_TRANSFER_INST/uc_out
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/ACTIVE_TRANSFER_INST/start_transfer
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/ACTIVE_TRANSFER_INST/transfer_received
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/ACTIVE_TRANSFER_INST/uc_addr
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/ACTIVE_TRANSFER_INST/transfer_to_host
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/ACTIVE_TRANSFER_INST/transfer_to_device
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/ACTIVE_TRANSFER_INST/transfer_to_device_reset
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/ACTIVE_TRANSFER_INST/to_transfer_update
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/ACTIVE_TRANSFER_INST/transfer_to_host_reset
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/ACTIVE_TRANSFER_INST/transfer_to_device_meta
add wave -noupdate -divider {Active Block}
add wave -noupdate -divider {EPT FT2232H Top}
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/CLK_66
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/UC_IN
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/UC_OUT
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/reset_n
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/register_decode
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/data_byte_ready
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ft_245_state_mne_write_ready
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/write_complete
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ft_usb_data_out
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ft_usb_data_in
add wave -noupdate -divider FT_245_State_Machine
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/FT_245_STATE_MACHINE_INST/CLK
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/FT_245_STATE_MACHINE_INST/RST_N
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/FT_245_STATE_MACHINE_INST/USB_RXF_N
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/FT_245_STATE_MACHINE_INST/USB_TXE_N
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/FT_245_STATE_MACHINE_INST/USB_RD_N
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/FT_245_STATE_MACHINE_INST/USB_WR
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/FT_245_STATE_MACHINE_INST/USB_TEST
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/FT_245_STATE_MACHINE_INST/USB_REGISTER_DECODE
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/FT_245_STATE_MACHINE_INST/USB_DATA_IN
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/FT_245_STATE_MACHINE_INST/USB_DATA_OUT
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/FT_245_STATE_MACHINE_INST/DATA_BYTE_READY
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/FT_245_STATE_MACHINE_INST/RSB_INT_EN
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/FT_245_STATE_MACHINE_INST/WRITE_EN
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/FT_245_STATE_MACHINE_INST/WRITE_READY
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/FT_245_STATE_MACHINE_INST/WRITE_BYTE
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/FT_245_STATE_MACHINE_INST/WRITE_COMPLETE
add wave -noupdate -format Literal -radix ascii /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/FT_245_STATE_MACHINE_INST/state_name
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/FT_245_STATE_MACHINE_INST/read_complete
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/FT_245_STATE_MACHINE_INST/read_complete_reg
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/FT_245_STATE_MACHINE_INST/read_complete_cntr
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/FT_245_STATE_MACHINE_INST/write_complete
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/FT_245_STATE_MACHINE_INST/write_complete_reg
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/FT_245_STATE_MACHINE_INST/usb_rxf_n_reg
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/FT_245_STATE_MACHINE_INST/usb_txe_n_reg
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/FT_245_STATE_MACHINE_INST/state
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/FT_245_STATE_MACHINE_INST/next
add wave -noupdate -divider {Endpoint Registers}
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/CLK
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/RST_N
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/ENDPOINT_DECODE
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/DATA_BYTE_READY
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/ENDPOINT_EN
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/WRITE_EN
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/WRITE_READY
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/WRITE_BYTE
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/WRITE_COMPLETE
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/UC_IN
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/UC_OUT
add wave -noupdate -format Literal -radix ascii /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/state_name
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/write_data_byte
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/write_to_host
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/device
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/command_to_device
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/command_from_device
add wave -noupdate -format Literal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/address_to_device
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/length_from_device
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/address_from_device
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/payload_from_device
add wave -noupdate -format Literal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/uc_in_address
add wave -noupdate -format Literal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/uc_in_command
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/uc_in_length
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/length_to_device
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/uc_in_payload
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/reset_uc_in
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/reset_uc_in_counter
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/reset_uc_in_reg
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/byte_count
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/control_multiplexor
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/command_byte
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/write_byte
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/write_control_mux
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/write_control_mux_reg
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/write_en_reg
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/decode_byte_fail_reg
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/decode_byte_fail_count
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/state
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/DUT/EPT_FT2232_TOP_INST/ENDPOINT_REGISTERS_INST/next
add wave -noupdate -divider {Host Bus Model}
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/CLK
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/RST_N
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_FT245_RXF_N
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_FT245_TXE_N
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_FT245_RD_N
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_FT245_WR
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_FT245_RESET_N
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_FT245_PWREN_N
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_FT245_TEST
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_FT245_DATA
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/DATA_IN
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/DATA_OUT
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/READ_FT_245
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/WRITE_FT_245
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/READ_FT_STATUS
add wave -noupdate -format Literal -radix ascii /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/state_name
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/host_model_write_cycle_complete
add wave -noupdate -format Logic /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/write_cycle_complete_reg
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/write_transmit_byte
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/fifo_wren
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/fifo_aempty
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/fifo_afull
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/fifo_dout
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/fifo_empty
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/fifo_full
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/fifo_rden
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/start_read_cycle
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/read_cycle_reg
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/read_cycle_meta_reg
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/read_cycle_rdy
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/read_cycle_complete
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/write_cycle_reg
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/write_cycle_meta_reg
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/start_write_cycle
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/write_cycle_hold_byte
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/model_read_host_data_byte
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/transmit_byte_storage
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/read_ft_status_reg
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/ft_status_byte
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/read_ft_status_cntr
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/host_byte_available
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/temp_byte
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/state
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/next
add wave -noupdate -divider {Sync FIFO}
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/FIFO/clk
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/FIFO/reset_n
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/FIFO/flush
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/FIFO/read_req
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/FIFO/write_data
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/FIFO/wdata_valid
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/FIFO/read_data
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/FIFO/rdata_valid
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/FIFO/fifo_empty
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/FIFO/fifo_aempty
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/FIFO/fifo_full
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/FIFO/fifo_afull
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/FIFO/write_ack
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/FIFO/read_ptr
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/FIFO/write_ptr
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/FIFO/read_enable
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/FIFO/write_enable
add wave -noupdate -divider {Write Control Logic}
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/FIFO/U_WRITE_CTRL/read_ptr
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/FIFO/U_WRITE_CTRL/wdata_valid
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/FIFO/U_WRITE_CTRL/flush
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/FIFO/U_WRITE_CTRL/reset_n
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/FIFO/U_WRITE_CTRL/clk
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/FIFO/U_WRITE_CTRL/write_ack
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/FIFO/U_WRITE_CTRL/write_enable
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/FIFO/U_WRITE_CTRL/write_ptr
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/FIFO/U_WRITE_CTRL/fifo_full
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/FIFO/U_WRITE_CTRL/fifo_afull
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/FIFO/U_WRITE_CTRL/write_addr
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/FIFO/U_WRITE_CTRL/read_addr
add wave -noupdate -divider {Host Write Model}
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_WRITE/CLK
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_WRITE/RST_N
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_WRITE/HOST_FT245_TXE_N
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_WRITE/HOST_FT245_WR
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_WRITE/HOST_FT245_WRITE_BYTE
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_WRITE/TRANSMIT_BYTE
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_WRITE/START_WRITE_CYCLE
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_WRITE/WRITE_CYCLE_COMPLETE
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_WRITE/state
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_WRITE/next
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_WRITE/output_enable_reg
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_WRITE/write_enable
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_WRITE/write_enable_reg
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_WRITE/txe_delay_reg
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_WRITE/txe_delay_count
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_WRITE/host_ft245_txe_n_reg
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_WRITE/host_ft245_txe_n_count
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_WRITE/write_byte_control_reg
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_WRITE/write_byte_control_count
add wave -noupdate -format Literal -radix ascii /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_WRITE/state_name
add wave -noupdate -divider {Host Read Model}
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_READ/CLK
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_READ/RST_N
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_READ/HOST_FT245_RXF_N
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_READ/HOST_FT245_RD_N
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_READ/HOST_FT245_READ_BYTE
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_READ/TRANSMIT_BYTE
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_READ/START_READ_CYCLE
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_READ/READ_CYCLE_RDY
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_READ/READ_CYCLE_COMPLETE
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_READ/state
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_READ/next
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_READ/start_read_cycle_reg
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_READ/ft245_rd_n_reg
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_READ/output_enable_reg
add wave -noupdate -format Literal -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_READ/rxf_n_delay_count
add wave -noupdate -format Logic -radix hexadecimal /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_READ/rxf_n_delay_reg
add wave -noupdate -format Literal -radix ascii /tb_hsp_ft2232_top/HOST_FT_245_MODEL_INST/HOST_READ/state_name
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 19} {3066759370 ps} 0} {{Cursor 3} {3068489295 ps} 0} {{Cursor 4} {3068336688 ps} 0} {{Cursor 5} {6810583979 ps} 0}
configure wave -namecolwidth 227
configure wave -valuecolwidth 166
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
WaveRestoreZoom {3068225737 ps} {3069114649 ps}
