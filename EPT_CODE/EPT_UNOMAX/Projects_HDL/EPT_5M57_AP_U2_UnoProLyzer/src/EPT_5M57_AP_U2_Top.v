//#######################################################################
//#
//#	Copyright 	Earth People Technology Inc. 2015
//#
//#
//# File Name:  EPT_5M57_AP_U2_Top.v
//# Author:     R. Jolly
//# Date:       July 8, 2015
//# Revision:   A
//#
//# Development: USB Test Tool Interface board 
//# Application: Altera MAX V CPLD
//# Description: This file contains verilog code which will allow access
//#              to Active Transfer Library. The MAX V receives its commands via
//#				 USB.
//#               
//#              
//#
//#************************************************************************
//#
//# Revision History:	
//#			DATE		VERSION		DETAILS		
//#			7/8/15 	    A			Created			RJJ
//#                     			RJJ
//#
//#									
//#
//#######################################################################

`timescale 1ns/1ps



//************************************************************************
//* Module Declaration
//************************************************************************

module EPT_5M57_AP_U2_Top (

	//Active Transfer Library
	input  wire [1:0]          aa,
	input  wire [1:0]          bc_in,
	output wire [2:0]          bc_out,
	inout  wire [7:0]		   bd_inout,
	
	//I/O Connectors
	output wire   [1:0]        LB_SER,       //XIOH -- J10
	output wire   [5:0]        LB_AD,        //AD   -- J9
	output wire   [7:0]        LB_IOH,       //XIOH -- J10
	output wire   [7:0]        LB_IOL,       //XIOL -- J8

    // ADC Interface	
	output wire                ADC_MOSI,
	output wire                ADC_CLK,
	input wire                 ADC_MISO,
	output wire                ADC_CS,
	output wire                ADC_CNVST,	
	input wire                 ADC_EOC,
	
	//Transceiver Control Signals
	output wire                TR_DIR_1,
	output wire                TR_OE_1,
	
	output wire                TR_DIR_2,
	output wire                TR_OE_2,

	output wire                TR_DIR_3,
	output wire                TR_OE_3,

	//Switch Inputs
	input wire                 SW_USER_1,
	input wire                 SW_USER_2,

	//LEDs
	output wire [3:0]          LED
	
	);

   //----------------------------------------------
   // Parameter Declarations
   //-----------------------------------------------

  //parameter    GLOBAL_RESET_COUNT          = 4'hf;
// `ifdef SIM
//  parameter    ADC_CONVST_CMD_DELAY        = 24'h500;
//`else
  //parameter    ADC_CONVST_CMD_DELAY        = 19'h50910; //5ms
  //parameter    ADC_CONVST_CMD_DELAY        = 19'h101d0; //1ms
  //parameter    ADC_CONVST_CMD_DELAY        = 19'h80e8; //0.5ms
  //parameter    ADC_CONVST_CMD_DELAY        = 19'h19c8; //0.1ms
  //parameter    ADC_CONVST_CMD_DELAY        = 19'hce4; //0.05ms
  //parameter    ADC_CONVST_CMD_DELAY        = 19'h294; //0.01ms
  //parameter    ADC_CONVST_CMD_DELAY        = 19'h42; //0.001ms
//`endif  
   //ADC Conversion Delay
   //parameter    ADC_CNVST_DELAY_COUNT       = 8'h40;

   //State Machine 
   parameter 	IDLE                        = 0,
				ADC_CONVST                  = 1,
				WAIT_FOR_EOC                = 2,
                START_DATA_RECEIVE          = 3,
                WE_OUT_RCVD                 = 4,
				DATA_RECEIVE_COMPLETE       = 5,
				CHECK_RCV_DATA              = 6,
				CHECK_RCV_DELAY             = 7,
				UPDATE_CH_SELECT            = 8,
                TRANSFER_TO_HOST            = 9,
                TRANSFER_COMPLETE           = 10;
   
`ifdef SIM
   	reg [8*30:1] state_name;
`endif

   //------------------------------------------------
   // Wire and Register Declarations                
   //------------------------------------------------
   	reg [10:0]                   state, next;

    wire                        CLK_66;
	wire                        RST;

	wire [23:0]                 UC_IN;
	wire [21:0]                 UC_OUT;
	
	//Trigger Signals
	wire [7:0]                  trigger_out;
	wire [7:0]                  trigger_in_byte;	
	
	//Transfer registers
	reg    [7:0]                transfer_storage_register;
	wire                        transfer_receive_start;
	wire                        transfer_receive_busy;
	wire                        transfer_receive_in;
	reg                         serial_receive_start_transfer_reg;

	//Serial SPI Receive Registers Unit 1
	wire  [7:0]                 serial_receive_out_byte;
	//wire  [7:0]                 serial_control_in_byte;	
	reg                         master_spi_initiate_receive;
	reg                         master_spi_initiate_receive_reg;
	wire                        spi_receive_word_enable;
	
	//Receive Storage registers Unit 1
	reg  [7:0]                  serial_receive_data_storage;	
    reg  [1:0]                  serial_receive_data_reg;
	wire [7:0]                  transfer_in_byte_1;

	//Serial SPI Transmit Registers
	//wire                        serial_transmit_start_transfer;
	wire                        serial_transmit_busy;
	wire                        serial_transmit_in_received;
	wire                        spi_transmit_word_enable;
	reg                         master_spi_initiate_transmit;
	reg                         master_spi_initiate_transmit_reg;
	reg                         master_spi_transmit_byte;
	reg                         master_spi_transmit_byte_reg;
	
	
	//Block 1 Control Registers
	reg                         start_block_out;
	wire                        block_byte_ready;
    //wire [7:0]                  block_in_data;
	wire                        block_in_rcv;
	//reg                         block_in_loopback;
	//wire  [7:0]                 ept_length;
	wire  [7:0]                 uc_length;
	wire                        block_busy;
	wire  [7:0]                 block_out_byte;

	
	
	//ADC conversion start ontrol registers
	reg   [1:0]                 adc_cnvst_reg;
 	reg                         adc_conv_start;
	reg                         adc_convst_cmd;
	reg                         adc_convst_cmd_reg;
	reg  [15:0]                 adc_convst_cmd_count;
	reg  [15:0]                 adc_convst_delay_value;
	
	
	//ADC end of conversion control rgisters
	//wire                        adc_end_of_conv;
	reg                         adc_eoc_reg;
	
    //ADC Data registers
	reg                         adc_data_rcvd_msb;
	
	//ADC Channels To Read
	reg   [2:0]                 adc_channels_to_read;
	reg   [2:0]                 adc_channel_select;
	reg   [2:0]                 receive_endterm_select;
	
	//Block Memory Registers
    reg   [7:0]                 mem_array [7:0];
	reg   [2:0]                 mem_array_index;
	
	
	
	//TEST ONLY
	//reg                         led_2_reg;
	//reg  [3:0]                  STATE_OUT;
	//wire                        test_transfer_received_reg;
	//wire                        test_transfer_received_reg_5;
	//wire [7:0]                  test_transmit_byte;
	wire                        transfer_busy;
	//reg                         test_delay_count_reg;
	//reg  [23:0]                 test_delay_count;
	//wire  [3:0]                 ft245_test_state_out;
	//wire  [7:0]                 active_transfer_test_out;
	//reg                         led1_assert;
	//reg                         led1_assert_reg;
	//reg [11:0]                  led1_assert_count;

	


   //------------------------------------------------
   // 	Signal Assignments	
   //------------------------------------------------
   
   assign            TR_DIR_1  = 1'b0; //1 = A to B; 0 = B to A
   assign            TR_OE_1  = 1'b1;
   assign            TR_DIR_2  = 1'b0; //1 = A to B; 0 = B to A
   assign            TR_OE_2  = 1'b1;
   assign            TR_DIR_3  = 1'b0; //1 = A to B; 0 = B to A
   assign            TR_OE_3  = 1'b1;  

   //Clock and Reset
   assign            CLK_66 = aa[1];
   //assign            RST = reset;
   assign            RST = aa[0];
   //assign            reset = reset_signal_reg;
   
    //Trigger In Byte
   //assign            trigger_out  = 8'h00;
	
   //Output pins
   assign            ADC_CNVST = ~adc_conv_start;
   
   //Input pins
   //assign            adc_end_of_conv = ~ADC_EOC;
   
   //Block to host byte
   assign            block_out_byte = mem_array[mem_array_index];
   assign            uc_length = 8'h8;
   
   //Stub the transfer start for Transfer Endterm 1
   //assign            transfer_receive_start = 1'b0;
    
	//LEDs
    assign           LED[0] = 1'bz;//!ADC_CS ? 1'b0 : 1'bz;
    assign           LED[1] = 1'bz;//master_spi_initiate_transmit ? 1'b0: 1'bz;
    assign           LED[2] = 1'bz;//state[IDLE] ? 1'bz: (state[ADC_CONVST] ? 1'b0 : 1'bz);
    assign           LED[3] = 1'bz;//adc_eoc_reg ? 1'b0 : 1'bz;
	
	//Debug LB_IOL Bus
    assign           LB_IOL[0] = 1'b0;//active_transfer_test_out[0];//block_out_byte[0];
    assign           LB_IOL[1] = 1'b0;//active_transfer_test_out[1];//block_out_byte[1];
    assign           LB_IOL[2] = 1'b0;//active_transfer_test_out[2];//block_out_byte[2];
    assign           LB_IOL[3] = 1'b0;//active_transfer_test_out[3];//block_out_byte[3];
    assign           LB_IOL[4] = 1'b0;//active_transfer_test_out[4];//block_out_byte[4];
    assign           LB_IOL[5] = 1'b0;//active_transfer_test_out[5];//block_out_byte[5];
    assign           LB_IOL[6] = 1'b0;//active_transfer_test_out[6];//block_out_byte[6];
    assign           LB_IOL[7] = 1'b0;//active_transfer_test_out[7];//block_out_byte[7];
	
	
	//Debug LB_IOH Bus
    assign           LB_IOH[0] = 1'b0;//mem_array_index[0];
    assign           LB_IOH[1] = 1'b0;//mem_array_index[1];
    assign           LB_IOH[2] = 1'b0;//mem_array_index[2];
    assign           LB_IOH[3] = 1'b0;//mem_array_index[3];
    assign           LB_IOH[4] = 1'b0;//mem_array_index[4];
    assign           LB_IOH[5] = 1'b0;//block_byte_ready;
    assign           LB_IOH[6] = 1'b0;
    assign           LB_IOH[7] = 1'b0;
	
	//Debug LB_AD
    assign           LB_AD[0] = ADC_MOSI;//active_transfer_test_out[0];
    assign           LB_AD[1] = ADC_CLK;//active_transfer_test_out[1];
    assign           LB_AD[2] = ADC_MISO;
    assign           LB_AD[3] = ADC_CS;
    assign           LB_AD[4] = ADC_CNVST;	
    assign           LB_AD[5] = ADC_EOC;

   //-----------------------------------------------
   // ADC conversion start command from control_register[2]
   // Single conversion or repeated conversion are determined   
   //-----------------------------------------------
	always @(posedge CLK_66 or negedge RST)
	begin
	  if(!RST)
	  begin
	        adc_convst_cmd <= 1'b0;
			adc_convst_cmd_reg <= 1'b0;
			adc_convst_cmd_count <= 0;
			adc_conv_start <= 1'b0;
			adc_cnvst_reg <= 2'b00;
	  end
	  else
	  begin 
	      //if(control_register[2] & !adc_convst_cmd_reg)
	      if(trigger_in_byte[2] & !adc_convst_cmd_reg)
	      begin
		     adc_convst_cmd <= 1'b1;
			 adc_convst_cmd_reg <= 1'b1;
	         adc_convst_cmd_count <= 0;
			 adc_conv_start <= 1'b0;
			 adc_cnvst_reg <= 2'b00;
	      end
	      //else if(control_register[3] & adc_convst_cmd_reg)
	      else if(trigger_in_byte[3] & adc_convst_cmd_reg)
	      begin
		      adc_convst_cmd <= 1'b0;
	          adc_convst_cmd_reg <= 1'b0;
	          adc_convst_cmd_count <= 0;
			  adc_conv_start <= 1'b0;
			  adc_cnvst_reg <= 2'b00;
	      end
	      else if(adc_convst_cmd_reg)
	      begin
		  
		      case(adc_cnvst_reg)
			  2'b00:
			  begin
		         if(adc_convst_cmd_count < adc_convst_delay_value)
		         begin
		            adc_convst_cmd <= 1'b0;
		            adc_convst_cmd_count <= adc_convst_cmd_count + 1'd1;
		         end
				 else
		         begin
		            adc_convst_cmd <= 1'b1;
		             //adc_convst_cmd_count <= 0;
					adc_cnvst_reg <= 2'b01;
		         end
			  end
			  2'b01:
			  begin
			    adc_conv_start <= 1'b1;
			    adc_cnvst_reg <= 2'b10;
			  end
			  2'b10:
			  begin
		        adc_convst_cmd <= 1'b0;
			    adc_conv_start <= 1'b1;
			    adc_cnvst_reg <= 2'b11;
			  end
			  2'b11:
			  begin
			    adc_conv_start <= 1'b0;
				adc_convst_cmd_count <= 0;
			    if(!adc_eoc_reg)
			    begin
			       adc_cnvst_reg <= 2'b00;
			    end
              end
/*			  default:
			  begin
			       adc_convst_cmd <= 1'b0;
			       adc_convst_cmd_count <= 0;
			       adc_conv_start <= 1'b0;
			       adc_cnvst_reg <= 2'b00;
			  end
*/			  endcase
	      end
	  end
	end  
   //-----------------------------------------------
   // MAX11618 ADC Conversion Start   
   //-----------------------------------------------
/*	always @(posedge CLK_66 or negedge RST)
	begin
	  if(!RST)
	  begin
			adc_conv_start <= 1'b0;
			adc_cnvst_reg <= 2'b00;
	  end
	  else
	  begin
	      if(state[ADC_CONVST] & (adc_cnvst_reg == 2'b00))
		  begin
			adc_conv_start <= 1'b1;
			adc_cnvst_reg <= 2'b01;
	      end
	      else if(adc_cnvst_reg == 2'b01)
	      begin
			    adc_conv_start <= 1'b1;
			    adc_cnvst_reg <= 2'b10;
	      end
	      else if(adc_cnvst_reg == 2'b10)
	      begin
			adc_conv_start <= 1'b1;
			adc_cnvst_reg <= 2'b11;
	      end
	      else if(adc_cnvst_reg == 2'b11)
	      begin
			adc_conv_start <= 1'b0;
			adc_cnvst_reg <= 2'b00;
	      end
	  end
	end  
*/
	
   //-----------------------------------------------
   // Create a State Test Output Signal
   //-----------------------------------------------
/*   always @(posedge CLK_66 or negedge RST)
     begin
	if (!RST)
	  STATE_OUT <= 0;
	else
	  begin
	     if (state[IDLE])
           STATE_OUT <= 4'h0;
	     if (state[LOAD_REGISTER_DATA])
	       STATE_OUT <= 4'h1;
	     if (state[TRANSMIT_REGISTER])
	       STATE_OUT <= 4'h2;
	     if (state[TRANSMIT_COMPLETE])
	       STATE_OUT <= 4'h3;
	     if (state[ADC_CONVST])
	       STATE_OUT <= 4'h4;
	     if (state[WAIT_FOR_EOC])
	       STATE_OUT <= 4'h5;
	     if (state[START_DATA_RECEIVE])
	       STATE_OUT <= 4'h6;
	     if (state[WE_OUT_RCVD])
	       STATE_OUT <= 4'h7;
	     if (state[DATA_RECEIVE_COMPLETE])
	       STATE_OUT <= 4'h8;
	     if (state[TRANSFER_TO_HOST])
	       STATE_OUT <= 4'h9;
	     if (state[TRANSFER_COMPLETE])
	       STATE_OUT <= 4'ha;
	  end // else: !if(!RST_N)
     end // always @ (posedge CLK or negedge RST_N)
*/

   //-----------------------------------------------
   // Store the adc_convst_delay register 
   // Uses three separate trigger_in bits   
   //-----------------------------------------------
	always @(posedge CLK_66 or negedge RST)
	begin
	  if(!RST)
	  begin
 `ifdef SIM
            adc_convst_delay_value <= 16'h500;
`else
	        //adc_convst_delay_value <= 19'h000ce4; //0.07ms
	        adc_convst_delay_value <= 16'h0ce4; //0.5ms
`endif
	  end
	  else
	  begin
	      //if(control_register[4])
	      if(trigger_in_byte[4])
	      begin
		    adc_convst_delay_value[7:0] <= transfer_in_byte_1;
	      end
	      //else if(control_register[5])
	      else if(trigger_in_byte[5])
	      begin
		    adc_convst_delay_value[15:8] <= transfer_in_byte_1;
	      end
	      //else if(control_register[6])
	      //else if(trigger_in_byte[6])
	      //begin
		  //  adc_convst_delay_value[16] <= 1'b0;//transfer_in_byte_1[0];
	      //end
	  end
	end  
	

   //-----------------------------------------------
   // Parse the ADC register to determine operation of 
   // the state machine.
   //-----------------------------------------------
	always @(posedge CLK_66 or negedge RST)
	begin
	  if(!RST)
	  begin
            adc_channels_to_read <= 0;
	  end
	  else
	  begin 
	      if(master_spi_initiate_transmit & (transfer_storage_register[7] == 1'b1))
	      begin
	         //adc_channels_to_read = transfer_storage_register[4:3] + 1'd1;
	         adc_channels_to_read = transfer_storage_register[4:3];
	      end
	  end
	end  

   //-----------------------------------------------
   // Store the register value to transmit to the ADC.
   //-----------------------------------------------
	always @(posedge CLK_66 or negedge RST)
	begin
	  if(!RST)
	  begin
			transfer_storage_register <= 0;
	  end
	  else
	  begin
	      if(trigger_in_byte[1])
	      begin
			transfer_storage_register <= transfer_in_byte_1;
	      end
	  end
	end  

	//-----------------------------------------------
   // Initiate a read from the Master SPI Unit   
   //-----------------------------------------------
	always @(posedge CLK_66 or negedge RST)
	begin
	  if(!RST)
	  begin
			master_spi_initiate_receive <= 1'b0;
			master_spi_initiate_receive_reg <= 1'b0;
	  end
	  else
	  begin
	      if(state[START_DATA_RECEIVE])
	      begin
			master_spi_initiate_receive <= 1'b1;
			master_spi_initiate_receive_reg <= 1'b0;
	      end
	      else if(spi_receive_word_enable & !master_spi_initiate_receive_reg)
	      begin
			master_spi_initiate_receive <= 1'b0;
			master_spi_initiate_receive_reg <= 1'b1;
	      end
	      else if(!spi_receive_word_enable & master_spi_initiate_receive_reg)
	      begin
			master_spi_initiate_receive <= 1'b0;
			master_spi_initiate_receive_reg <= 1'b0;
	      end
	  end
	end  


   //-----------------------------------------------
   // Master SPI Transmit Start   
   //-----------------------------------------------
	always @(posedge CLK_66 or negedge RST)
	begin
	  if(!RST)
	  begin
			master_spi_initiate_transmit <= 1'b0;
	  end
	  else
	  begin 
	      if(trigger_in_byte[0])
	      begin
			master_spi_initiate_transmit <= 1'b1;
	      end
	      else //if(!trigger_in_byte[0])
	      begin
			master_spi_initiate_transmit <= 1'b0;
	      end
	  end
	end  


   //-----------------------------------------------
   // Register the ADC_EOC signal    
   //-----------------------------------------------
	always @(posedge CLK_66 or negedge RST)
	begin
	  if(!RST)
	  begin
			adc_eoc_reg <= 1'b0;
	  end
	  else
	  begin
	      if(ADC_EOC)
	      begin
			adc_eoc_reg <= 1'b1;
	      end
	      else 
		  begin
		    adc_eoc_reg <= 1'b0;
	      end
	  end
	end  
	
	//-----------------------------------------------
   // Set the MSB of the data received from the ADC.
   // The first byte received is the MSB.    
   //-----------------------------------------------
	always @(posedge CLK_66 or negedge RST)
	begin
	  if(!RST)
	  begin
			adc_data_rcvd_msb <= 1'b0;
	  end
	  else
	  begin
	      if(state[ADC_CONVST])
	      begin
			adc_data_rcvd_msb <= 1'b1;
	      end
	      else if(state[CHECK_RCV_DELAY])//& !spi_receive_word_enable)
	      begin
			adc_data_rcvd_msb <= 1'b0;
	      end
		  else if(state[UPDATE_CH_SELECT])
	      begin
			adc_data_rcvd_msb <= 1'b1;
	      end
	  end
	end  

	//-----------------------------------------------
   // Set the adc_channel_select equal to the adc_channels_to_read
   // register. This will notify the state machine to continue to read
   // the ADC FIFO until all bytes are read.   
   //-----------------------------------------------
	always @(posedge CLK_66 or negedge RST)
	begin
	  if(!RST)
	  begin
			adc_channel_select <= 1'b0;
	  end
	  else
	  begin
	      if(state[ADC_CONVST])
	      begin
			adc_channel_select <= adc_channels_to_read;
	      end
	      else if(state[UPDATE_CH_SELECT] & !adc_data_rcvd_msb)
	      begin
	         if(adc_channel_select > 0)
		        adc_channel_select = adc_channel_select - 1'd1;
	      end
	  end
	end  

	//-----------------------------------------------
   // Latch the data from the SPI Master Receive unit.
   // This data will be sent to the EndTerm 3.
   //-----------------------------------------------
	always @(posedge CLK_66 or negedge RST)
	begin
	  if(!RST)
	  begin
			//serial_receive_data_storage <= 0;
			serial_receive_data_reg <= 2'b00;
			receive_endterm_select <= 0;
	  end
	  else
	  begin
	        if(state[DATA_RECEIVE_COMPLETE] & (serial_receive_data_reg == 2'b00))
			begin
			   //if(adc_channel_select > 0)
			       receive_endterm_select <= adc_channels_to_read - adc_channel_select;
			   //else
			   //   receive_endterm_select <= 3'h1;
			   serial_receive_data_reg <= 2'b01;
			end
			else if(state[DATA_RECEIVE_COMPLETE] & (serial_receive_data_reg == 2'b01))
			begin
			   case(receive_endterm_select)
			   3'h0:
			   begin
			      if(adc_data_rcvd_msb)
	                 mem_array[0] <= {4'h0,serial_receive_out_byte[3:0]};
			      else
	                 mem_array[1] <= {serial_receive_out_byte[7:2],2'h0};
			      serial_receive_data_reg <= 2'b10;
			   end
			   3'h1:
			   begin
			      if(adc_data_rcvd_msb)
	                 mem_array[2] <= {4'h0,serial_receive_out_byte[3:0]};
			      else
	                 mem_array[3] <= {serial_receive_out_byte[7:2],2'h0};
			      serial_receive_data_reg <= 2'b10;
			   end
			   3'h2:
			   begin
			      if(adc_data_rcvd_msb)
	                 mem_array[4] <= {4'h0,serial_receive_out_byte[3:0]};
			      else
	                 mem_array[5] <= {serial_receive_out_byte[7:2],2'h0};
			      serial_receive_data_reg <= 2'b10;
			   end
			   3'h3:
			   begin
			      if(adc_data_rcvd_msb)
	                 mem_array[6] <= {4'h0,serial_receive_out_byte[3:0]};
			      else
	                 mem_array[7] <= {serial_receive_out_byte[7:2],2'h0};
			      serial_receive_data_reg <= 2'b10;
			   end
			   default:
			   begin
			      serial_receive_data_reg <= 2'b10;
			   end
			   endcase
			end
	        else if(state[CHECK_RCV_DATA] & (serial_receive_data_reg == 2'b10))
			begin
			   serial_receive_data_reg <= 2'b00;
			end
	  end
	end
	

   //-----------------------------------------------
   // Start Transfer on the Active Block EndTerm 1
   // This will send the ADC Data to the EndTerm 1.
   //-----------------------------------------------
	always @(posedge CLK_66 or negedge RST)
	begin
	  if(!RST)
	  begin
			start_block_out <= 1'b0;
			serial_receive_start_transfer_reg <= 1'b0;
			mem_array_index <= 0;
	  end
	  else
	  begin
         if(state[TRANSFER_TO_HOST] & !serial_receive_start_transfer_reg)
         begin
		     start_block_out <= 1'b1;
			 serial_receive_start_transfer_reg <= 1'b1;
			 
		 end
		 else if(state[TRANSFER_TO_HOST] & serial_receive_start_transfer_reg)
		 begin
		    if(block_byte_ready)
			   mem_array_index <= mem_array_index + 1'd1;
		 end
		 else if(state[TRANSFER_COMPLETE])
         begin
		     start_block_out <= 1'b0;
			 serial_receive_start_transfer_reg <= 1'b0;
			 mem_array_index <= 0;
		 end
	  end
	end
	
   //--------------------------------------------------
   // Write State Machine
   //--------------------------------------------------  
   // Next State Logic
   always @(posedge CLK_66 or negedge RST)
     begin
	if (!RST)
	  begin
	     state <= 8'h000;
	     state[IDLE] <= 1'b1;
	  end
	else
	  state <= next;
     end

	 always @ ( state or mem_array_index or block_byte_ready
	      or ADC_EOC or adc_eoc_reg or master_spi_initiate_receive
	      or spi_receive_word_enable or adc_conv_start or adc_data_rcvd_msb 
		  or trigger_in_byte or adc_convst_cmd)

     begin
	next = 8'h000;

	if (state[IDLE])
	  begin
		 if(adc_convst_cmd)
	       next[ADC_CONVST] = 1'b1;
		else
	       next[IDLE] = 1'b1;			
	  end

	if (state[ADC_CONVST])
		    next[WAIT_FOR_EOC] = 1'b1;

	if (state[WAIT_FOR_EOC])
	begin
	    if(!adc_eoc_reg)
		    next[START_DATA_RECEIVE] = 1'b1;
	    else 
		    next[WAIT_FOR_EOC] = 1'b1;
	end

	if (state[START_DATA_RECEIVE])
	begin
	   if(master_spi_initiate_receive)
	      next[WE_OUT_RCVD] = 1'b1;
	    else 
		    next[START_DATA_RECEIVE] = 1'b1;
	end

	if (state[WE_OUT_RCVD])
	begin
	   if(spi_receive_word_enable)
	       next[DATA_RECEIVE_COMPLETE] = 1'b1;
	    else 
		    next[WE_OUT_RCVD] = 1'b1;
	end

	if (state[DATA_RECEIVE_COMPLETE])
	begin
	   if(!spi_receive_word_enable)
	      next[CHECK_RCV_DATA] = 1'b1;
	    else 
		    next[DATA_RECEIVE_COMPLETE] = 1'b1;
	end

	if (state[CHECK_RCV_DATA])
	begin
	   if(!adc_data_rcvd_msb)
		 next[UPDATE_CH_SELECT] = 1'b1;
	   else
         next[CHECK_RCV_DELAY] = 1'b1;
	end
	
	if (state[CHECK_RCV_DELAY])
		 next[START_DATA_RECEIVE] = 1'b1;
	
	if (state[UPDATE_CH_SELECT])
	begin
	   if(adc_channel_select > 0)
		 next[START_DATA_RECEIVE] = 1'b1;
	   else
		 next[TRANSFER_TO_HOST] = 1'b1;
	end
	
	if (state[TRANSFER_TO_HOST])
	begin
	   if(mem_array_index >= 3'h7)
		 next[TRANSFER_COMPLETE] = 1'b1;
	   else
         next[TRANSFER_TO_HOST] = 1'b1;
	end

	if (state[TRANSFER_COMPLETE])
	begin
	   if(!serial_receive_start_transfer_reg)
	      next[START_DATA_RECEIVE] = 1'b1;
	   else
			next[IDLE] = 1'b1;	
	end
	
`ifdef SIM
	if (state == (1 << IDLE))
	  state_name = "IDLE";
	else if (state == (1 << ADC_CONVST))
	  state_name = "ADC_CONVST";
	else if (state == (1 << WAIT_FOR_EOC))
	  state_name = "WAIT_FOR_EOC";
	else if (state == (1 << START_DATA_RECEIVE))
	  state_name = "START_DATA_RECEIVE";
	else if (state == (1 << WE_OUT_RCVD))
	  state_name = "WE_OUT_RCVD";
	else if (state == (1 <<   DATA_RECEIVE_COMPLETE))
	  state_name = "DATA_RECEIVE_COMPLETE";
	else if (state == (1 <<   CHECK_RCV_DATA))
	  state_name = "CHECK_RCV_DATA";
	else if (state == (1 <<   CHECK_RCV_DELAY))
	  state_name = "CHECK_RCV_DELAY";
	else if (state == (1 <<   UPDATE_CH_SELECT))
	  state_name = "UPDATE_CH_SELECT";
	else if (state == (1 << TRANSFER_TO_HOST))
	  state_name = "TRANSFER_TO_HOST";
	else if (state == (1 << TRANSFER_COMPLETE))
	  state_name = "TRANSFER_COMPLETE";

	  
`endif
     end // always @ (...


   //-----------------------------------------------
   // Instantiate the SPI Interface
   //-----------------------------------------------
	spi_iface_model             SPI_IFACE_INST
	(
	.CLK                        (CLK_66), 
	.RST_N                      (RST),

	.SPI_DATA_OUT               (ADC_MOSI),
	.SPI_CLK                    (ADC_CLK),
	.SPI_DATA_IN                (ADC_MISO),
	.SPI_CS_N                   (ADC_CS),

	.DIN                        (transfer_storage_register),
	.WE_IN                      (master_spi_initiate_transmit),

	.DOUT                       (serial_receive_out_byte),
	.WE_OUT_N                   (spi_receive_word_enable),
	.RDY_OUT                    (master_spi_initiate_receive)

	);


   //-----------------------------------------------
   // Instantiate the EPT Active Transfer Library
   //-----------------------------------------------

	active_transfer_library	   ACTIVE_TRANSFER_LIBRARY_INST
	(	
	.aa                        (aa),
	.bc_in                     (bc_in),
	.bc_out                    (bc_out),
	.bd_inout                  (bd_inout),

	.UC_IN                     (UC_IN),
	.UC_OUT                    (UC_OUT)//,
	
	//.STATE_OUT                 (ft245_test_state_out),
	//.TEST_OUT                  (active_transfer_test_out)
	
	);
	
   //-----------------------------------------------
   // Instantiate the EPT Active Modules
   //-----------------------------------------------
wire [22*3-1:0]  uc_out_m;
eptWireOR # (.N(3)) wireOR (UC_OUT, uc_out_m);

    //
	// Trigger_In Mapping
	// control_register[0] = Master SPI Transmit Start to the ADC.
	// control_register[1] = Store the register value to transmit to the ADC.
	// control_register[2] = Start ADC Conversion Continuous
	// control_register[3] = Stop ADC Conversions
	// control_register[4] = Load adc_convst_delay register Byte 1
	// control_register[5] = Load adc_convst_delay register Byte 2
	// control_register[6] = Load adc_convst_delay register Byte 3
	// control_register[7] = 
	active_trigger             ACTIVE_TRIGGER_INST
	(
	 .uc_clk                   (CLK_66),
	 .uc_reset                 (RST),
	 .uc_in                    (UC_IN),
	 .uc_out                   (uc_out_m[ 0*22 +: 22 ]),

	 .trigger_to_host          (trigger_out),
	 .trigger_to_device        (trigger_in_byte)
	
	);


	active_transfer            ACTIVE_TRANSFER_INST_1
	(
	 .uc_clk                   (CLK_66),
	 .uc_reset                 (RST),
	 .uc_in                    (UC_IN),
	 .uc_out                   (uc_out_m[ 1*22 +: 22 ]),
	
	 .start_transfer           (transfer_receive_start),
	 .transfer_received        (transfer_receive_in),
	 
	 .transfer_busy            (transfer_receive_busy),
	
	 .uc_addr                  (3'h1),

	 .transfer_to_host         (),//serial_receive_data_storage),
	 .transfer_to_device       (transfer_in_byte_1)//()	
	);

	active_block               BLOCK_TRANSFER_INST
	(
	 .uc_clk                   (CLK_66),
	 .uc_reset                 (RST),
	 .uc_in                    (UC_IN),
	 .uc_out                   (uc_out_m[ 2*22 +: 22 ]),
	
	 .start_transfer           (start_block_out),
	 .transfer_received        (block_in_rcv),
	 
	 .transfer_ready           (block_byte_ready),
	 .transfer_busy            (block_busy),

	 .ept_length               (),
	
	 .uc_addr                  (3'h1),
	 .uc_length                (uc_length),

	 .transfer_to_host         (block_out_byte),
	 .transfer_to_device       ()
	
	);


	
endmodule
