//#################################################################
//	Testbench for the 10M04 FPGA
//
//	File name:	tb_ept_10m04_top.v
//	Author:		Richard Jolly
//	Date:		February 20, 2018
//
//	Copyright 	Earth People Technology Inc. 2018
//
//#************************************************************************
//#
//# Revision History:	
//#			DATE		VERSION		DETAILS		
//#			2/20/18 	1			Created			
//#                                 
//#
//#
//################################################################

`timescale 1ns/1ps

`include "../Testbench/tb_define.v"

module tb_ept_10m04_top;

   //----------------------------------------------
   // Parameter Declarations  
   //----------------------------------------------
	parameter	BEGIN_SECTION			 = 8'h00;
	parameter	TRIGGER_IN_SECTION		 = 8'h01;
	parameter	TRANSFER_IN_SECTION      = 8'h02;
	parameter	BLOCK_OUT_SECTION        = 8'h03;
	parameter	WRITE_SECTION			 = 8'h04;
	parameter	BLOCK_IN_SECTION         = 8'h05;
	parameter	ARDUINO_WRITE_TO_FIFO    = 8'h06;
	parameter	ARDUINO_ANALOG_MONITOR   = 8'h07;
	parameter	LED_BLINKY               = 8'h08;
	parameter	READ_SECTION_MODEL       = 8'h09;
	parameter   WRITE_ADC_CONFIG_REG     = 8'h0a;
	parameter   SEND_ADC_CONV_START      = 8'h0b;
	parameter   DSO_BEGIN_SECTION        = 8'h0c;
	parameter   DSO_ADC_CONV_START       = 8'h0d; 
	parameter   DSO_VERIFY_SPI_BUS_PGA   = 8'h0e; 
	parameter   DSO_CHANGE_ADC_CONVST_DELAY_REGISTER
	                                     = 8'h0f;
	parameter   DSO_SET_SOFTWARE_RESET   = 8'h10; 
	parameter   I2C_WRITE_TO_MCP4451_CHIP_1
	                                     = 8'h11;
	parameter   MAX10_LED_BLINKY         = 8'h12;
	parameter   D_FLIP_FLOP              = 8'h13;
	parameter   OPERATORS                = 8'h14;
	parameter   CONTROL_STATEMENTS       = 8'h15;

    parameter   BLOCK_COUNT_8            = 8'h8;
    parameter   BLOCK_COUNT_16           = 8'h10;
	parameter   BLOCK_COUNT_32           = 8'h20;
	parameter   BLOCK_COUNT_64           = 8'h40;
	parameter   BLOCK_COUNT_128          = 8'h80;
	
	//Shift Value for Operators
	parameter   SHIFT_OPERATOR           = 8'h03;
	
	//Control Statement
	parameter   IF_ELSE_COUNT_MAX        = 8'hf0;
	parameter   WHILE_COUNT_MAX          = 8'hf0;
	parameter   REPEAT_MAX_COUNT         = 8'h0a;

//---------------------------------------------------------------------------------------------------------------
//	wire and register declarations
//---------------------------------------------------------------------------------------------------------------
	reg                                  clk_32K;
	reg                                  clk_10;
	reg                                  clk_50;
	reg                                  clk_66;
	reg                                  clk_150;
	reg                                  reset;

	integer                              logfile;
	integer                              num_read_cycles;
	integer                              num_purge_host_fifo_cycles;
	integer                              num_block_cycles;
	integer                              num_write_cycles;
	integer                              num_config_read_cycles;
	integer                              num_config_write_cycles;

	reg                                  register_memory;



	reg	[31:0]                           next_address;
	reg	[31:0]                           write_word;

	//Host bus model start buttons
	reg                                  start_config_read_cycle;
	reg                                  start_config_write_cycle;
	reg                                  start_read_cycle;
	reg                                  start_write_cycle;
	reg                                  write_to_cis_register_block ;

	//cis registers
	reg	[7:0]                            cis_register_index;

	//Host bus model write registers
	reg	[7:0]                            write_value;

	//Compare read register configuration registers
	wire	[7:0]                        configuration_address;
	wire	[7:0]                        config_compare_data;
	wire	[7:0]                        control_compare_data;


	//Read Control Registers
	wire	[7:0]                        read_control_register;
	reg	[7:0]                            read_control_register_index;

	//read and write register bytes
	reg   [7:0]                          host_read_register;
	wire  [7:0]                          write_register_value;

	//Write Control Registers
	wire	[7:0]                        write_control_register;
	reg	[7:0]                            write_control_register_index;
	reg                                  write_control_word;

	wire	[25:0]                       host_bus_model_addr;
	wire	[15:0]                       host_bus_model_data;

	//Test Bench Stimulus Host Registers
	reg	[7:0]                            host_register;
	reg	[7:0]                            host_readback;
	reg	[7:0]                            host_status_byte;
	reg                                  host_read_status;
	reg                                  host_status_we;
	reg  [7:0]                           host_data_in;
	wire [7:0]                           host_data_out;
	reg                                  host_read_byte;
	reg                                  host_write_byte;
	reg  [7:0]                           host_write_value;
	
	// Control Registers
	reg  [7:0]                           ept_control_register_to_device;

	//DUT pass registers
	wire [1:0]                           aa;
	wire [1:0]                           bc_in;
	wire [2:0]                           bc_out;
	wire [7:0]                           bd_inout;
	wire                                 usb_rxf_n;
	wire                                 usb_txe_n;
	wire                                 usb_rd_n;
	wire                                 usb_wr;
	wire                                 usb_reset_n;
	wire                                 usb_pwren_n;
	wire                                 usb_test;
	wire   [7:0]                         usb_data;

    // EPT control signals
	reg    [7:0]                         ept_send_cmd_to_device;
	reg    [7:0]                         ept_send_data_to_device;
	reg    [7:0]                         ept_control_word;
	reg    [7:0]                         ept_send_addr_to_device;

    // Registers to convert incoming bits for USB transfer message
    reg [2:0]                            command_from_device;
    reg [7:0]                            length_from_device;
    reg [2:0]                            address_from_device;
    reg [7:0]                            payload_from_device;
	
	//Trigger Registers
	reg [7:0]                            trigger_to_device;
	wire [7:4]                           trigger_control_signals;
	wire [3:0]                           trigger_leds;
	
	//Transfer Registers
	wire [7:0]                           transfer_from_host;
	reg  [7:0]                           TransferOutReceive_A0;
	reg  [7:0]                           TransferOutReceive_A1;
	reg  [7:0]                           TransferOutReceive_A2;
	reg  [7:0]                           TransferOutReceive_A3;
	reg  [7:0]                           TransferOutReceive_A4;
	reg  [7:0]                           TransferOutReceive_A5;
	reg  [7:0]                           TransferOutReceive_A6;
	reg  [7:0]                           TransferOutReceive_A7;
	
	//Block Transfer Registers
	reg                          [7:0]   block_read_array [7:0] ;
	reg                          [7:0]   block_write_array [7:0] ;
	
	//EPTParseReceive Task registers
	reg                                  parse_status;
	
	//Random Number Generator for Single Transfer
	reg [31:0]                           r_seed;
	reg [31:0]                           random_number;
	
	//LED Blinky Registers
	wire [3:0]                           leds;

	//I2C communication registers
	reg	[7:0]                   host_transmit_word_1;
	reg	[7:0]                   host_transmit_word_2;
	reg	[7:0]                   host_transmit_num_of_words;
	reg	[7:0]                   host_write_word;
	reg	[7:0]                   slave_read_register;

	//Serial I2C Communication registers
	wire                        serial_iic_rdy_out;
	reg                         serial_iic_ena_in;
	wire  [7:0]                 serial_iic_data_out;
	wire                        serial_i2c_ena_out;
	//reg  [7:0]                  serial_iic_data_in;
	reg  [7:0]                  serial_i2c_data_in;
	reg                         serial_i2c_rdy_in;
	
	//Serial I2C Communications Model registers
	reg                         serial_iic_rdy_in_model;
	wire [7:0]                  i2c_master_control_register_model;
	reg  [7:0]                  i2c_master_status_register_model;
	reg  [7:0]                  i2c_master_send_register_model;
	wire [7:0]                  i2c_master_receive_register_model;
    reg  [7:0]                  i2c_master_read_return;
    reg  [7:0]                  compare_result;
	wire                        i2c_model_data_out;
	reg  [7:0]                  slave_register_1;
	
	//SPI Communications TriggerOut registers
	reg                         receive_rdy_in_flag;
	reg                         receive_write_en_flag;
	
	//Active Transfer Test Registers
	wire [7:0]                  received_trigger_byte;
	
	//DSO Communications registers
	wire [7:0]                  adc_bus;	
	wire                        adc_encode;	
	wire [3:0]                  adc_channel;
	wire                        pga_mosi;
	wire                        pga_clk;
	wire                        pga_miso;
	wire                        pga_cs;
	wire [3:0]                  selected_pga_channel;
	reg  [7:0]                  mcp4451_chip_1_address;
	reg  [7:0]                  mcp4451_chip_2_address;

    //DSO Models
	wire [7:0]                  i2c_0_mcp4451_chip_1_control_register;
	wire [7:0]                  i2c_0_mcp4451_chip_1_status_register;
	wire [7:0]                  i2c_0_mcp4451_chip_1_receive_register;
	wire [7:0]                  i2c_0_mcp4451_chip_1_send_register;
	
	wire [7:0]                  i2c_0_mcp4451_chip_2_control_register;
	wire [7:0]                  i2c_0_mcp4451_chip_2_status_register;
	wire [7:0]                  i2c_0_mcp4451_chip_2_receive_register;
	wire [7:0]                  i2c_0_mcp4451_chip_2_send_register;
	
	wire                       i2c_0_data;
	wire                       i2c_0_clock;
	
	//Data for the MCP4451 devices
	reg  [1:0]                  mcp4451_chip1_data_msb;
	reg  [7:0]                  mcp4451_chip1_data_lsb;
	reg  [9:0]                  mcp4451_chip1_data;
	
	//Registers for the D Flip Flop
	reg                         d;
	wire                        q;
	wire                        q_bar;
	
	//Registers for Operators
	reg  [7:0]                  addition_a;
	reg  [7:0]                  addition_b;
	wire [7:0]                  addition_result;
	
	reg  [7:0]                  subtraction_a;
	reg  [7:0]                  subtraction_b;
	wire [7:0]                  subtraction_result;
	
	reg  [7:0]                  multiplication_a;
	reg  [7:0]                  multiplication_b;
	wire [7:0]                  multiplication_result;
	
	reg  [7:0]                  division_a;
	reg  [7:0]                  division_b;
	wire [7:0]                  division_result;
	
	//Inputs and Outputs for Logical, Relational and Equality Operators
	
	reg  [7:0]                  logical_negation_a;
	reg  [7:0]                  logical_negation_b;
	wire [7:0]                  logical_negation_result;
	
	reg  [7:0]                  logical_and_a;
	reg  [7:0]                  logical_and_b;
	wire [7:0]                  logical_and_result;
	
	reg  [7:0]                  logical_or_a;
	reg  [7:0]                  logical_or_b;
	wire [7:0]                  logical_or_result;
	
	reg  [7:0]                  greater_lesser_than_a;
	reg  [7:0]                  greater_lesser_than_b;
	wire [7:0]                  greater_than_result;
	wire [7:0]                  lesser_than_result;
	
	reg  [7:0]                  greater_equal_than_a;
	reg  [7:0]                  greater_equal_than_b;
	wire [7:0]                  greater_equal_than_result;
	wire [7:0]                  lesser_equal_than_result;
	
	reg  [7:0]                  equality_a;
	reg  [7:0]                  equality_b;
	wire [7:0]                  equality_result;
	
	
	reg  [7:0]                  inequality_a;
	reg  [7:0]                  inequality_b;
	wire [7:0]                  inequality_result;
	
	//Inputs and Outputs for Reduction, Shift and Concatenation Operators
	
	reg  [7:0]                  bitwise_negation_a;
	reg  [7:0]                  bitwise_negation_b;
	wire [7:0]                  bitwise_negation_result;
	
	reg  [7:0]                  gate_a;
	reg  [7:0]                  gate_b;
	wire [7:0]                  nand_result;
	wire [7:0]                  or_result;
	wire [7:0]                  nor_result;
	wire [7:0]                  xor_result;
	wire [7:0]                  xnor_result;
	wire [7:0]                  right_shift_result;
	wire [7:0]                  left_shift_result;
	
	reg  [7:0]                  concatenation_a;
	reg  [7:0]                  concatenation_b;
	wire [7:0]                  concatenation_result;
	
	
	//Registers for Control Statements
	reg  [7:0]                  if_else_count;
	wire [7:0]                  if_else_result;
	reg  [7:0]                  case_input_register;
	wire [7:0]                  case_statement_result;
	reg  [7:0]                  while_counter;
	wire [7:0]                  while_result;
	reg  [7:0]                  for_loop_counter;
	wire [7:0]                  for_loop_result;
	reg  [7:0]                  repeat_loop_counter;
	wire [7:0]                  repeat_loop_result;
	
	reg  [7:0]                  index;
	reg  [7:0]                  loop_counter;
	
	

//--------------------------------------------------------------------------------------------------------------
//	Generate Internal Clock with 32KHz
//--------------------------------------------------------------------------------------------------------------

	initial 
	begin
		clk_32K = 0;
		forever
		//begin
			# `CYCLE_32K clk_32K = !clk_32K;
		//end
	end

	
//--------------------------------------------------------------------------------------------------------------
//	Generate Internal Clock with 10MHz
//--------------------------------------------------------------------------------------------------------------

	initial 
	begin
		clk_10 = 0;
		forever
		//begin
			# `CYCLE_10 clk_10 = !clk_10;
		//end
	end


//--------------------------------------------------------------------------------------------------------------
//	Generate Internal Clock with 'cycle/2 period
//--------------------------------------------------------------------------------------------------------------

	initial 
	begin
		clk_66 = 0;
		forever
		//begin
			# `CYCLE_66 clk_66 = !clk_66;
		//end
	end
//--------------------------------------------------------------------------------------------------------------
//	Generate Internal Clock with 50 MHz
//--------------------------------------------------------------------------------------------------------------

	initial 
	begin
		clk_50 = 0;
		forever
		//begin
			# `CYCLE_50 clk_50 = !clk_50;
		//end
	end

//--------------------------------------------------------------------------------------------------------------
//	Generate a random number using x period
//--------------------------------------------------------------------------------------------------------------

	initial 
	begin
		r_seed = 2;
		forever
			#10 random_number = $random(r_seed);
	end

//-------------------------------------------------------------------------------------------------------------
//	Apply Stimulus
//-------------------------------------------------------------------------------------------------------------

	initial
	begin
	   reset                     = 1'b1;
	   if_else_count             = 8'h00;
	   case_input_register       = 8'h00;
	   while_counter             = 8'h00;
	   for_loop_counter          = 8'h00;
       repeat_loop_counter	     = 8'h00;
	   loop_counter              = 8'h0a;
	   
        //////////////////////////////////////////////////////
		//  Perform reset
        //////////////////////////////////////////////////////
		#(100 * `CYCLE)
	   reset                = 1'b0;
	   
	   
		#(100 * `CYCLE)
	   reset                = 1'b1;
	   
        //////////////////////////////////////////////////////
		//  Print the Title of the Section that is being tested
        //////////////////////////////////////////////////////
		
		call_title(CONTROL_STATEMENTS);
		
		//If Else Statement
		#(100 * `CYCLE)
		$display("\n\n\n\nIf Else Statement executing now. Code will increment a counter");
		$display("\nuntil max count has been reached. An If statement compares each iteration ");
		$display("\nof the count to a MAX_COUNT value. Count Starts at 0x%h with Max Count = 0x%h",if_else_count,IF_ELSE_COUNT_MAX); 
				   
		while(if_else_result == 0) 
		begin
		   //$display("*");
		   #(100 * `CYCLE)
		   if_else_count = if_else_count + 1;
		end
		$display("\n\n\n\nIf Else Statement reached maximum count: 0x%h\n\n",if_else_result);
		
		
		//Case Statement
		#(100 * `CYCLE)
		$display("\n\n\n\nThe Case Statement compares a single input register to multiple");
		$display("\noutcome statements. The statement that matches the input register"); 
		$display("\nwill be selected. The results will be displayed. \n\n\n");
		repeat(10)
        begin
		    $display("Case Statement Input Register: 0x%h Output Statement: \n",
			         case_input_register,case_statement_result);
			#(100 * `CYCLE)
		    case_input_register = case_input_register + 1;
        end		

		//While Statement
		#(100 * `CYCLE)
		$display("\n\n\n\nThe While statement is not synthesizeable. So, the while ");
		$display("\nstatement will stay in the Testbench and a counter will be implemented");
		$display("\nin the User Code area. The Testbench sends an initial count value to the ");
		$display("\nuser code. The while statement will wait for the counter in the user code");
		$display("\nto expire. Then display the reults. The MAX COUNT is: 0x%h\n",WHILE_COUNT_MAX);
		while_counter = 1;
		while(while_result == 0) 
		begin
		   $display("*");
		   #(100 * `CYCLE);
		end
		$display("\n\n\n\nWhile Statement reached maximum count: 0x%h\n\n",while_result);

		//For Loop Statement
		#(100 * `CYCLE)
		$display("\n\n\n\The For Loop allows repeated statements to execute within");
        $display("\na pre-set range. This means the for loop will start a count value");
		$display("\nand increment until it reaches a max count value. Each increment");
		$display("\nwill cause the statement to execute.\n");
		for_loop_counter = 10;
		#(100 * `CYCLE)
		$display("\nFor Loop Count started at: 0x%h", for_loop_counter);
		$display("\nThe MAX COUNT is 0x%h", for_loop_counter);
		$display("\nFor Loop result is 0x%h", for_loop_result);
		//Repeat Statement
		#(100 * `CYCLE)
		$display("\n\n\n\The Repeat Loop is not synthesizeable. So, it will implemented");
		$display("\nin a counter in the user code and use the repeat keyword in the testbench.");
		$display("\nStart the counter by changing the initial value to non-zero. Use repeat");
		$display("\nwith a variable that decrements on each simulation cycle. The repeat will");
		$display("\ncomplete when the varaible reaches zero.\n");
		#(100 * `CYCLE);
		repeat(10)
		begin
		     repeat_loop_counter = 2;
			 #(100 * `CYCLE);
		     loop_counter = REPEAT_MAX_COUNT - repeat_loop_result;
			 repeat_loop_counter = 1;
			 #(100 * `CYCLE);
		     $display("\nRepeat Loop Counter is 0x%h", loop_counter);
		end


		// End of Simulation
		#(50000 * `CYCLE);
		stopsim;


	end	//stimulus
//--------------------------------------------------
//	Task: call title 
//--------------------------------------------------
   task call_title;
	input [7:0] select_title;
      begin
		case ( select_title ) 
		8'h0:
		$display("\n\n\n\nThis testbench will test the EPT Interface PLD functionality.\n");
		8'h01:
		$display("\n\n\n\nSend Trigger Section of Testbench \n");
		8'h02:
		$display("\n\n\n\nSend Single Byte Section of Testbench  \n");
		8'h03:
		begin
		$display("\n\n\n\nReceive Block from Device Section of Testbench \n");
		end
		8'h04:
		$display("\n\n\n\nSend Block from Host Section of Testbench \n");
		8'h05:
		begin
		$display("\n\n\n\nSend Block To Device Section of Testbench \n");
		end
		8'h06:
		begin
		$display("\n\n\n\nSend Bytes from Arduino to the FIFO \n");
		end
		8'h07:
		begin
		$display("\n\n\n\nArduino Analog Monitor Project \n");
		$display("\nDisplays all six of the UNO's Analog inputs \n");
		end
		8'h08:
		begin
		$display("\n\n\n\nLED Blinky Project \n");
		$display("\nBlink the LEDs with Random number, Shift Left, Shift Right, Count \n");
		end
		8'h09:
		begin
		$display("\n\n\n\nLED Blinky Project \n");
		$display("\nBlink the LEDs with Random number, Shift Left, Shift Right, Count \n");
		end
		8'h0a:
		begin
		$display("\n\n\n\n5M57-AP DAQ Project \n");
		$display("\nWrite the configuration registers of the ADC\n");
		end
		8'h0b:
		begin
		$display("\n\n\n\n5M57-AP DAQ Project \n");
		$display("\nSend the Conversion Start Command to the ADC\n");
		end
		8'h0c:
		begin
		$display("\n\n\n\nEPT-4CE6 DSO Project \n");
		$display("\nSelects PGA Gain and Channel, then initiates\n");
		$display("\nADC to send sample. Collects all ADC samples and\n");
		$display("\nsends them to the Host.\n");
		end
		DSO_ADC_CONV_START:
		begin
		$display("\n\n\n\nStart collecting ADC Samples \n");
		end
		DSO_VERIFY_SPI_BUS_PGA:
		begin
		$display("\n\n\n\nTest the SPI bus with write - read -compare \n");
		end
		DSO_CHANGE_ADC_CONVST_DELAY_REGISTER:
		begin
		$display("\n\n\n\nTest the ADC CONVST Delay Register Update \n");
		end
		DSO_SET_SOFTWARE_RESET:
		begin
		$display("\n\n\n\nTest Software Reset Cycle \n");
		end
		I2C_WRITE_TO_MCP4451_CHIP_1:
		begin
		$display("\n\n\n\nWrite Values to the MCP4451 Digi-Pots \n");
		end
		MAX10_LED_BLINKY:
		begin
		$display("\n\n\n\nMAX10 LED Blinky Simulation\n");
		end
		D_FLIP_FLOP:
		begin
		$display("\n\n\n\nSimulate the D Flip Flop\n");
		end
		OPERATORS:
		begin
		$display("\n\n\n\nSimulate the Verilog Operators\n");
		end
		CONTROL_STATEMENTS:
		begin
		$display("\n\n\n\nSimulate the Control Statements Code\n");
		end
		default:
		$display("\n\n\n\nTest bench running....\n");
		endcase

      end
   endtask 

  //--------------------------------------------------
  //	Task: Send Block to the Device
  //--------------------------------------------------
   task send_block;
	  input [7:0] block_address;
      input [7:0] block_length;
	  reg [7:0] block_control_word;
	  reg [7:0] block_cmd_to_device;
	  reg [7:0] byte_count;
	  reg [31:0] block_write_word;
   begin

			block_control_word = `READ_CONTROL_WORD;
            //Write Block Transfer Command and Address to EPT 10M04 AF Model
			#(100 * `CYCLE )
			block_cmd_to_device = {block_control_word[7:6], block_address[2:0] , `BLOCK_IN_CMD_TB};
			host_bus_write( block_cmd_to_device);

	        //Write Block Transfer Command and Address to EPT 240 AP Model
			#(100 * `CYCLE )
			block_cmd_to_device = block_length;
			host_bus_write( block_cmd_to_device);

			byte_count = 0;
		    //Write Data to FIFO to EPT 240 AP Model
			while(byte_count < block_length)
			begin
			     block_write_word = random_number;
			     #( 50 * `CYCLE )
			     host_bus_write( block_write_word[7:0]);
				 
				 block_write_array[byte_count] = block_write_word[7:0];
				 byte_count = byte_count + 1;
			end
   end
   endtask
  //--------------------------------------------------
  //	Task: Read FT2232H FIFO until it is empty
  //--------------------------------------------------
   task ept_read_fifo;
     reg [7:0] fifo_readback;
     reg [7:0] array_index;
   begin
        array_index = 0;
		//Read the length from the Block Transfer
		#( 50 * `CYCLE )
         host_bus_read(host_readback);
		length_from_device = host_readback;
		
		while(array_index < (length_from_device + 1'd1))
		begin
		     host_bus_read(fifo_readback);
			 block_read_array[array_index] = fifo_readback;
			 array_index = array_index + 1'd1;
		end
	end
   endtask // ept_read_fifo

  
//--------------------------------------------------
//	Task: EPTParseReceive
//        Determines what command has been received from the 
//        Active Transfer Library.
//--------------------------------------------------
   task EPTParseReceive;
   //output error_flag;
   begin
         #(50 * `CYCLE )
		 //error_flag = 1'b0;
         //Read the byte received from the Host Model
         host_bus_read(host_readback);
		 command_from_device = host_readback[5:3];
         address_from_device = host_readback[2:0];
		 #( 10 * `CYCLE )
         case(command_from_device)
			3'h1:
			     begin
                     host_bus_read(host_readback);
				     payload_from_device = host_readback;
					 //TriggerOutReceive_I2CSlave(payload_from_device);
					 TriggerOutReceive_SPIMaster(payload_from_device);
					 //error_flag = 1'b1;
                     $display("\n\n\n\nReceived Trigger %h\n",payload_from_device);					 
				 end
			3'h2:
			     begin
                     host_bus_read(host_readback);
				     payload_from_device = host_readback;
					 TransferOutReceive(payload_from_device,address_from_device);
					 //error_flag = 1'b1;
                     $display("\n\n\n\nReceived Single Transfer Byte %h from address: %h\n",payload_from_device,address_from_device);					 
				 end
			3'h4:
			     begin
                     ept_read_fifo();
					 BlockOutReceive();
					 //error_flag = 1'b1;
                     $display("\n\n\n\nReceived Block Transfer %h from address: %h\n",payload_from_device,address_from_device);					 
				 end
         endcase			
	end
   endtask // EPTParseReceive

//--------------------------------------------------
//	Task: TriggerOutReceive
//--------------------------------------------------
   task    TriggerOutReceive_I2CSlave;
    input [7:0] read_register_value;
    begin
	     case (read_register_value)
		 8'h01:
		       WriteI2CSlaveToFIFO();
		 8'h02:
		 begin
		       ReadI2CSlaveWordFromFIFO();
			   $display("\n\n\n\nnTriggerOutReceive matched a case statement, ReadI2CSlaveWordFromFIFO 0x%h\n",read_register_value);
		 end
		 default:
		 begin
	         #(20 * `CYCLE);
			 $display("\n\n\n\nTriggerOutReceive did not match a case statement 0x%h\n",read_register_value);
		 end
		 endcase
	     #(20 * `CYCLE);
    end
   endtask // TriggerOutReceive

//--------------------------------------------------
//	Task: TriggerOutReceive_SPIMaster
//--------------------------------------------------
   task    TriggerOutReceive_SPIMaster;
    input [7:0] read_register_value;
    begin
	     case (read_register_value)
		 8'h01:
		 begin
		       receive_rdy_in_flag = 1'b1;
			   $display("\n\n\n\nnTriggerOutReceive received RDY_IN response from the SPI transmit 0x%h\n",read_register_value);
		 end
		 8'h02:
		 begin
		       receive_write_en_flag = 1'b1;
			   $display("\n\n\n\nnTriggerOutReceive received WE_IN response from the SPI receive 0x%h\n",read_register_value);
		 end
		 default:
		 begin
	         #(20 * `CYCLE);
			 $display("\n\n\n\nTriggerOutReceive did not match a case statement 0x%h\n",read_register_value);
		 end
		 endcase
	     #(20 * `CYCLE);
    end
   endtask // TriggerOutReceive_SPIMaster
//--------------------------------------------------
//	Task: TransferOutReceive
//--------------------------------------------------
   task       TransferOutReceive;
    input [7:0] read_register_value;
    input [7:0] read_register_address;
    begin
       case(read_register_address)
	   8'h0:
	           TransferOutReceive_A0 = read_register_value;
	   8'h1:
	           TransferOutReceive_A1 = read_register_value;
	   8'h2:
	           TransferOutReceive_A2 = read_register_value;
	   8'h3:
	           TransferOutReceive_A3 = read_register_value;
	   8'h4:
	           TransferOutReceive_A4 = read_register_value;
	   8'h5:
	           TransferOutReceive_A5 = read_register_value;
	   8'h6:
	           TransferOutReceive_A6 = read_register_value;
	   8'h7:
	           TransferOutReceive_A7 = read_register_value;
	   default:
	           #(20 * `CYCLE);
	   endcase
    end
   endtask // TransferOutReceive

//--------------------------------------------------
//	Task: BlockOutReceive
//--------------------------------------------------
   task       BlockOutReceive;
    begin
	     #(20 * `CYCLE);
    end
   endtask // BlockOutReceive

//--------------------------------------------------
//	Task: I2CSlaveResponseWord
//--------------------------------------------------
   task I2CSlaveResponseWord; 
       input [7:0] read_register;
	   output [7:0] response_word;  
    begin
       case(slave_read_register)
	   8'h9c:
	           response_word = 8'h31;
	   8'h9d:
	           response_word = 8'h32;
	   8'h9e:
	           response_word = 8'h33;
	   8'h9f:
	           response_word = 8'h34;
	   8'ha0:
	           response_word = 8'h35;
	   8'ha1:
	           response_word = 8'h36;
	   8'ha2:
	           response_word = 8'h37;
	   8'ha3:
	           response_word = 8'h38;
	   default:
	           response_word = 8'h00;
	   endcase
    end
   endtask
//--------------------------------------------------
//	Task: ReadI2CSlaveWordFromFIFO
//--------------------------------------------------
   task ReadI2CSlaveWordFromFIFO; 
    begin
	     //Set the Receive Enable Bit by sending 
		 //the bit through the control register
         ept_control_register_to_device = ept_control_register_to_device | `SET_RECEIVE_ENA_IN_BIT;
         send_control_register(ept_control_register_to_device);
	     #(200 * `CYCLE);
		 
		 //Clear the Receive Enable Bit by sending 
		 //the bit through the control register
         ept_control_register_to_device = ept_control_register_to_device & `CLEAR_RECEIVE_ENA_IN_BIT;
         send_control_register(ept_control_register_to_device);
	     #(200 * `CYCLE);
    end
   endtask // ReadI2CSlaveWordFromFIFO

//--------------------------------------------------
//	Task: WriteI2CSlaveToFIFO
//--------------------------------------------------
   task WriteI2CSlaveToFIFO; 
     begin
	     //Set the Transmit Ready Bit by sending 
		 //the bit through the control register
         ept_control_register_to_device = ept_control_register_to_device | `SET_TRANSMIT_RDY_IN_BIT;
         send_control_register(ept_control_register_to_device);
	     #(200 * `CYCLE);

	     //Clear the Transmit Ready Bit by sending 
		 //the bit through the control register
         ept_control_register_to_device = ept_control_register_to_device | `CLEAR_TRANSMIT_RDY_IN_BIT;
         send_control_register(ept_control_register_to_device);
	     #(200 * `CYCLE);
		 end
   endtask // WriteI2CSlaveToFIFO
  
//--------------------------------------------------
//	Task: Host read register memory
//--------------------------------------------------
   task host_bus_read;
    output [7:0] read_register_value;
    begin
	     host_read_byte = 1'b1;
	     #(20 * `CYCLE);
	     read_register_value = host_data_out;
	     #(20 * `CYCLE);
	     host_read_byte = 1'b0;
	     #(20 * `CYCLE);
    end
   endtask // host_bus_read

//--------------------------------------------------
//	Task: Host write register memory
//--------------------------------------------------
   task host_bus_write;
   input [7:0] write_register_value;
   begin
	     //#(20 * `CYCLE);
         host_write_byte = 1'b1;
	     host_data_in = write_register_value;
	     #(20 * `CYCLE);
	     host_write_byte = 1'b0;
	     #(20 * `CYCLE);
   end
   endtask // host_bus_write

//--------------------------------------------------
//	Task: Check Host Status
//	For Host Model Only
//	Read the status word from the Host_Bus_Model.
//--------------------------------------------------
   task host_check_status;
    output [7:0] host_status_byte;
	reg          host_status_reg;
    begin
	     host_status_reg = 1'b1;
	     host_read_status = 1'b1;
	     #(20 * `CYCLE);
		 
		 
		 host_status_byte = host_data_out;
	     host_read_status = 1'b0;
	     #(20 * `CYCLE);
	     host_status_reg = 1'b0;
    end
   endtask // host_bus_write

//--------------------------------------------------
//	Task: test_bench_compare
//	Compare two words from the testbench
//--------------------------------------------------
   task	test_bench_compare;
      input [7:0] write_tb_value1;
      input [7:0] write_tb_value2;
	  input [7:0]  message;
	  
	  reg [16*8:0] string;
      begin
	  case(message)
	  `TRIGGER_OUT_CMD_TB:  string = "Trigger Out";
	  `TRANSFER_OUT_CMD_TB: string = "Transfer Out";
	  `BLOCK_OUT_CMD_TB:    string = "Block Out";
	  endcase
	  if(write_tb_value1 == write_tb_value2)
		$display("\n\n\n\n%s %x correctly detected!.\n",string,write_tb_value2[7:0]);
	  else
 		$display("\n\n\n\n%s %x Failed.\n",string,write_tb_value2[7:0]);
     end
   endtask //  host_bus_read

   //-----------------------------------------------
   // Send Trigger to EPT 10M04 AF
   //-----------------------------------------------
   task	send_trigger;
      //input [7:0] trigger_control_word;
      input [7:0] trigger_bit;
	  reg [7:0] trigger_cmd_to_device;
	  reg [7:0] trigger_control_word;
	begin
	        trigger_control_word = `READ_CONTROL_WORD;
	 
	        //Write Trigger Command to EPT 10M04 AF Model
			#(20 * `CYCLE )
			trigger_cmd_to_device = {trigger_control_word[7:6], `TRIGGER_OUT_CMD_TB, `ADDRESS_000_TB };
			host_bus_write( trigger_cmd_to_device);

		    //Write Trigger  Payload to EPT 10M04 AF Model
			#( 20 * `CYCLE )
			host_bus_write( trigger_bit);
	end
   endtask 

   //-----------------------------------------------
   // Send Control Register to EPT 10M04 AF
   //-----------------------------------------------
   task	send_control_register;
      input [7:0] control_register_byte;
	  reg [7:0] transfer_cmd_to_device;
	  reg [7:0] read_command;
	begin
	        read_command = `READ_CONTROL_WORD;
		    //Write Control Register Command to EPT 10M04 AF
			#(100 * `CYCLE )
			transfer_cmd_to_device = {read_command[7:6], `TRANSFER_OUT_CMD_TB, `ADDRESS_002_TB };
			host_bus_write( transfer_cmd_to_device);
		    //Write Byte1 to Control Register State Machine
			#(20 * `CYCLE )
			host_bus_write(`TRANSFER_CONTROL_BYTE1);

		    //Write Control Register Command to EPT 10M04 AF
			#(100 * `CYCLE )
			transfer_cmd_to_device = {read_command[7:6], `TRANSFER_OUT_CMD_TB, `ADDRESS_002_TB };
			host_bus_write( transfer_cmd_to_device);
		    //Write Byte2 to Control Register State Machine
			#(20 * `CYCLE )
			host_bus_write(`TRANSFER_CONTROL_BYTE2);

		    //Write Control Register Command to EPT 10M04 AF
			#(100 * `CYCLE )
			transfer_cmd_to_device = {read_command[7:6], `TRANSFER_OUT_CMD_TB, `ADDRESS_002_TB };
			host_bus_write( transfer_cmd_to_device);
		    //Write Byte3 to Control Register State Machine
			#(20 * `CYCLE )
			host_bus_write(`TRANSFER_CONTROL_BYTE3);

		    //Write Control Register Command to EPT 10M04 AF
			#(100 * `CYCLE )
			transfer_cmd_to_device = {read_command[7:6], `TRANSFER_OUT_CMD_TB, `ADDRESS_002_TB };
			host_bus_write( transfer_cmd_to_device);
		    //Write Payload to Control Register State Machine
			#(20 * `CYCLE )
			host_bus_write( control_register_byte);
			
		    //Write Control Register Command to EPT 10M04 AF
			#(100 * `CYCLE )
			transfer_cmd_to_device = {read_command[7:6], `TRANSFER_OUT_CMD_TB, `ADDRESS_002_TB };
			host_bus_write( transfer_cmd_to_device);
		    //Write Dummy Byte to Control Register State Machine
			#(20 * `CYCLE )
			host_bus_write(`TRANSFER_CONTROL_DUMMY_BYTE);

			transfer_cmd_to_device = 0;
	end
   endtask 

   
//--------------------------------------------------
//	Task: assert_max11618_convst
//	This task initiates the conversion start for the 
//  MAX11618 ADC.
//--------------------------------------------------
   task	assert_max11618_convst;
      begin
	  
			//Write to the control register to set bit 3
			send_control_register(`ADC_CONVERSION_START);
			#(300* `CYCLE);
			
			//Reset the control register
			send_control_register(`RESET_CONTROL_REGISTER);
			#(100* `CYCLE);
	  
      end
   endtask //  

//--------------------------------------------------
//	Task: channel_select_max11618
//	This task initiates the conversion start for the 
//  MAX11618 ADC.
//--------------------------------------------------
   task	channel_select_max11618;
      begin
	  
			//Write to the control register to set bit 3
			send_control_register(`ADC_CONVERSION_START);
			#(300* `CYCLE);
			
			//Reset the control register
			send_control_register(`RESET_CONTROL_REGISTER);
			#(100* `CYCLE);
	  
      end
   endtask //  

//--------------------------------------------------
//	Task: SendMessage
//	This task will send a byte to the master spi unit.
//  Then it initiates a master spi transmit.
//--------------------------------------------------
   task	SendMessage;
      input		[7:0]	message;
      begin
	        //Send the transmit data word to the EndTerm
		    send_transfer(`TRANSFER_ENDTERM_1,message);
 			#(50* `CYCLE);
			
            //Send Trigger with Value = 2
			//This will latch the Register value into Storage Memory
			//in the CPLD
            send_trigger(8'h02);
			#(50* `CYCLE);
			
            //Send Trigger with Value = 1
			//This will initiate an SPI Write cycle to the ADC Control Registers
            send_trigger(8'h01);
			#(50* `CYCLE);

			
      end
   endtask //  

//--------------------------------------------------
//	Task: WriteDSOMemory
//	This task will send a data byte to the Host Interface
//  of the UC controller. Constitutes a write cycle to 
//  Local DSO Memory
//--------------------------------------------------
   task	WriteDSOMemory;
      input		[7:0]	address;
      input		[7:0]	data_byte;
	  reg               write_latch;
      begin
         //Delay
         #(50* `CYCLE);

         //Send the Address Byte to EndTerm 1
         send_transfer(`TRANSFER_ENDTERM_1,address);
         #(50* `CYCLE);
			
         //Send the Data Byte to the EndTerm 2
         send_transfer(`TRANSFER_ENDTERM_2,data_byte);
         #(50* `CYCLE);
			
         //Send Trigger with Value = 1
         //This will initiate the Write Latch 
		 write_latch = 1'b1;
         send_trigger(8'h01);
         #(50* `CYCLE);
		 write_latch = 1'b0;

			
      end
   endtask //  
 
//--------------------------------------------------
//	Task: ReadDSOMemory
//	This task will send a byte to the EndTerm 2.
//  This byte is the Data Byte for the Host Interface
//  write cycle to the UC controller.
//--------------------------------------------------
   task	ReadDSOMemory;
      input     [7:0]	address;
	  reg               read_latch;
	  reg               output_enable;
      begin
         //Delay
         #(50* `CYCLE);

         //Send Trigger with Value = 4
         //This will initiate the Output Enable for the Read Cycle
		 output_enable = 1'b1;
         send_trigger(8'h04);
         #(50* `CYCLE);
			
         //Send the Address Byte to EndTerm 1
         send_transfer(`TRANSFER_ENDTERM_1,address);
         #(50* `CYCLE);
			
         //Send Trigger with Value = 2
         //This will initiate the Read Latch for the Read Cycle
		 read_latch = 1'b1;
         send_trigger(8'h02);
         #(50* `CYCLE);
		 read_latch = 1'b0;
		 output_enable = 1'b0;
			
			
      end
   endtask //  
//--------------------------------------------------
//	Task: WriteDSOControlRegister
//	This task will send the Control Register Number 
//  to the EndTerm 3. It will then send the Control 
//  Register Contents to EndTerm 4. This process will 
//  latch the contents into the Control Register Number
//  in the UC controller.
//--------------------------------------------------

   task	WriteDSOControlRegister;   
      input     [7:0]	control_register_number;
      input     [7:0]	control_register_contents;
	  reg               control_register_number_latch;
	  reg               control_register_contents_latch;
      begin
         //Delay
         #(50* `CYCLE);

         //Send the Control Register Number to EndTerm 3
         send_transfer(`TRANSFER_ENDTERM_3,control_register_number);
         #(50* `CYCLE);
			
         //Pulse the control_register_number_latch to indicate
		 //to the testbench that the Control Register Number 
		 //has been latched into the UC Controller
		 control_register_number_latch = 1'b1;
         #(50* `CYCLE);
		 control_register_number_latch = 1'b0;
			
         //Send the Control Register Contents to EndTerm 4
         send_transfer(`TRANSFER_ENDTERM_4,control_register_contents);
         #(50* `CYCLE);
			
         //Pulse the control_register_contents_latch to indicate
		 //to the testbench that the Control Register Contents 
		 //has been latched into the UC Controller
		 control_register_contents_latch = 1'b1;
         #(50* `CYCLE);
		 control_register_contents_latch = 1'b0;
			
			
      end
   endtask //  

   //--------------------------------------------------
//	Task: master_spi_transmit_byte
//	This task will send a byte to the master spi unit.
//  Then it initiates a master spi transmit.
//--------------------------------------------------
   task	master_spi_transmit_byte;
      begin

            //Send Control Register with Addres = 2 and Value = 2
			//This will initiate a transmit of the register value to
			//the ADC
            send_control_register(8'h01);
			#(50* `CYCLE);
			
            //Send Control Register with Addres = 2 and Value = 0
			//This will reset the Control Register to 0
            send_control_register(8'h00);
			#(50* `CYCLE);

			
      end
   endtask //  
 
//--------------------------------------------------
//	Task: slave_i2c_read_incoming_message
//	Once the serial_i2c_comms receives a message,
//	The serial_i2c_rdy_out signal is set and the host
//  can initiate a read of the available words.
//--------------------------------------------------
   task	slave_i2c_read_incoming_message;
      output	[7:0]	received_data_in;
      begin
	
	if( serial_iic_rdy_out)
	begin
		serial_iic_ena_in = 1'b1;
		 #(20 * `CYCLE);

		received_data_in = serial_iic_data_out;
		 #(20 * `CYCLE);
	
		wait( !serial_iic_rdy_out );
		serial_iic_ena_in = 1'b0;
		#(20 * `CYCLE);

	end
	else 
		$display("Failed to read Receive FIFO from DUT. \n
		serial_iic_rdy_out not asserted.");

      end
   endtask //  

//--------------------------------------------------
//	Task: slave_i2c_write_outgoing_message
//	Write one word to the serial_i2c_comms,
//	when done, start the transmit process.
//--------------------------------------------------
   task	slave_i2c_write_outgoing_message;
      input		[7:0]	transmit_address_out;
      input		[7:0]	transmit_data_out;
      begin
	        //Send the transmit data word to the EndTerm
		    send_transfer(transmit_address_out,transmit_data_out);
 			#(100* `CYCLE);
			
			//Cycle the Trigger bit to latch the data word into 
			//the transmit FIFO
			WriteI2CSlaveToFIFO();
	  end
   endtask //  

//--------------------------------------------------
//	Task: i2c_read_message_model
//	Read the words received from the Host.
//	These words were sent to the temp/humidity sensor.
//	They form a request from the Sensor.
//--------------------------------------------------
   task	i2c_read_message_model;
	output	[7:0]	master_return_value;
	output			master_receive_flag;

	begin
	
		if ( i2c_master_control_register_model[2] )
		begin
			master_receive_flag <= 1'b1;
 			#(20* `CYCLE);

			master_return_value <= i2c_master_receive_register_model;
 			#(20* `CYCLE);

			i2c_master_status_register_model[0] <= 1'b1;
 			#(2000* `CYCLE);

			i2c_master_status_register_model[0] <= 1'b0;
			#(20* `CYCLE);
		end
		else 
		begin
			master_receive_flag <= 1'b0;
 			#(20* `CYCLE);
		end

	end
   endtask

//--------------------------------------------------
//	Task: i2c_write_message_model
//	Write one word from the temp/humidity sensor.
//	These words constitute the reply message to the 
//	request from the Host FPGA.
//--------------------------------------------------
   task	i2c_write_message_model;
	input		[7:0]	sensor_send_value;

	begin

		i2c_master_send_register_model <= sensor_send_value;
 		#(20* `CYCLE);

		i2c_master_status_register_model[1] <= 1'b1;
		#(20* `CYCLE);


		#(2000* `CYCLE);

		i2c_master_status_register_model[1] <= 1'b0;
		#(20* `CYCLE);
	end
   endtask

//--------------------------------------------------
//	Task: i2c_latch_address_model
//--------------------------------------------------
   task	i2c_latch_address_model;
	input		[7:0]	address_value;

	begin

		i2c_master_send_register_model <= address_value;
 		#(20* `CYCLE);

		i2c_master_status_register_model[2] <= 1'b1;
		#(20* `CYCLE);


		#(2000* `CYCLE);

		i2c_master_status_register_model[2] <= 1'b0;
		#(20* `CYCLE);
	end
   endtask

//--------------------------------------------------
//	Task: i2c_receive_request_model
//--------------------------------------------------
   task	i2c_receive_request_model;
	input		[7:0]	receive_word_count_value;
	input		[7:0]	receive_word_value;

	begin

		i2c_master_send_register_model <= receive_word_count_value;
 		#(20* `CYCLE);

		i2c_master_status_register_model[3] <= 1'b1;
		#(20* `CYCLE);


		#(2000* `CYCLE);

		i2c_master_status_register_model[3] <= 1'b0;
		#(20* `CYCLE);
		
		#(2000* `CYCLE);
		//i2c_write_message_model(receive_word_value);
		#(20* `CYCLE);
	end
   endtask

 
//--------------------------------------------------
//	Task: compare read register 
//--------------------------------------------------
   task compare_host_read;
	input   [7:0]               write_register;
	input   [7:0]               read_register;
	output  [7:0]               compare_succeed;
	input   [7:0]               read_cycle_number;
	reg                         start_compare_read_cycle;


	begin
		start_compare_read_cycle = 1'b0;
		compare_succeed <= 1'b0;

		//$display("Performing the Compare of read and write words\n");
		start_compare_read_cycle = 1'b1;
	 	#(200* `CYCLE);
		if( write_register != read_register )
		begin
			compare_succeed <= 1'b0;
			$display("Compare failed at read cycle %h\n", read_cycle_number);
			$display("Write Register: %h\n", write_register);
			$display("Read Register: %h\n", read_register);
		end
		else
		begin
			compare_succeed <= 1'b1;
			$display("Compare Succeeded!!! at read cycle %h\n", read_cycle_number);
			$display("Write Register: %h\n", write_register);
			$display("Read Register: %h\n", read_register);
		end
		start_compare_read_cycle = 1'b0;
		 #(200 * `CYCLE);
		
	end
    endtask

   //-----------------------------------------------
   // Send Transfer to EPT 10M04 AF
   //-----------------------------------------------
   task	send_transfer;
      input [7:0] transfer_address;
      input [7:0] transfer_byte;
	  reg [7:0] transfer_cmd_to_device;
	  reg [7:0] read_command;
	begin
	        read_command = `READ_CONTROL_WORD;
		    //Write Single Transfer Command to EPT 10M04 AF
			#(20 * `CYCLE )
			transfer_cmd_to_device = {read_command[7:6], `TRANSFER_OUT_CMD_TB , transfer_address[2:0]};
			host_bus_write( transfer_cmd_to_device);

		    //Write Single Transfer  Payload to EPT 10M04 AF
			#( 20 * `CYCLE )
			host_bus_write( transfer_byte);
	end
   endtask 


   //-----------------------------------------------
   // Task: stopsim
   //-----------------------------------------------
   task stopsim;
      begin
   	 $fdisplay(logfile,"Simulation Finished at time %0t\n",$time);
	 $stop;
	 $fclose(logfile);
      end
   endtask // stopsim

  
   //-----------------------------------------------
   // Instantiate DUT
   //-----------------------------------------------
	
   EPT_10M04_AF_S2_Top          DUT
    (
	.CLK                        (clk_50),
	.RST_N                      (reset),
	
	.IF_ELSE_COUNTER_1          (if_else_count),
	.IF_ELSE_RESULT_1           (if_else_result),
	
	.CASE_COUNTER_2             (case_input_register),
	.CASE_RESULT_2              (case_statement_result),
	
	.WHILE_COUNTER_3            (while_counter),
	.WHILE_RESULT_3             (while_result),
	
	.FOR_LOOP_COUNTER_4         (for_loop_counter),
	.FOR_LOOP_RESULT_4          (for_loop_result),

	.REPEAT_LOOP_COUNTER_5      (repeat_loop_counter),
	.REPEAT_LOOP_RESULT_5       (repeat_loop_result)
	);
	

endmodule // tb_ept_10m04_top.v


