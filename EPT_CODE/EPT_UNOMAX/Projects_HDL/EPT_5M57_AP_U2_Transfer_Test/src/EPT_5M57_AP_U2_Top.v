//#######################################################################
//#
//#	Copyright 	Earth People Technology Inc. 2018
//#
//#
//# File Name:  EPT_5M57_AP_U2_Top.v
//# Author:     R. Jolly
//# Date:       November 12, 2018
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
//#			11/12/18 	A			Created			RJJ
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

	
	input  wire [1:0]          aa,
	input  wire [1:0]          bc_in,
	output wire [2:0]          bc_out,
	inout  wire [7:0]		   bd_inout,
	
	input wire   [1:0]          LB_SER,       //XIOH -- J10
	input wire   [5:0]          LB_AD,        //AD   -- J9
	input wire   [7:0]          LB_IOH,       //XIOH -- J10
	input wire   [7:0]          LB_IOL,       //XIOL -- J8
	
	
	//Transceiver Control Signals
	//output wire                TR_DIR_1,
	output wire                TR_OE_1,
	
	//output wire                TR_DIR_2,
	output wire                TR_OE_2,

	//output wire                TR_DIR_3,
	output wire                TR_OE_3,

	input wire                SW_USER_1,
	input wire                SW_USER_2,

	output reg [3:0]          LED
	
	);

   //-----------------------------------------------
   // Parameters
   //-----------------------------------------------

   //Header Bytes for the Transfer Loopback detection
//   parameter                   TRANSFER_CONTROL_BYTE1 = 8'h5A;
//   parameter                   TRANSFER_CONTROL_BYTE2 = 8'hC3;
//   parameter                   TRANSFER_CONTROL_BYTE3 = 8'h7E;
   
   //State Machine Transfer Loopback detection
//   parameter                   TRANSFER_CONTROL_IDLE = 0,
//			                   TRANSFER_CONTROL_HDR1 = 1,
//			                   TRANSFER_CONTROL_HDR2 = 2,
//			                   TRANSFER_DECODE_BYTE   = 3,
//			                   TRANSFER_CONTROL_SET  = 4;

   //Transfer to Host State Machine
   parameter                   TRANSFER_HOST_IDLE = 0,
                               TRANSFER_HOST_LOOPBACK_START = 1,
							   TRANSFER_HOST_LOOPBACK_COMPLETE = 2;

	//Block Transfer In Host State Machine
   parameter                   BLOCK_IN_IDLE = 3'h0,
                               BLOCK_IN_RECEIVE_HI = 3'h1,
                               BLOCK_IN_RECEIVE_LO = 3'h2,
							   BLOCK_IN_INCREMENT = 3'h3,
							   BLOCK_IN_COMPLETE = 3'h4;

	//Block Transfer Out State Machine
   parameter                   BLOCK_OUT_IDLE = 3'h0,
			                   BLOCK_OUT_TRANSMIT = 3'h1,
							   BLOCK_OUT_INCREMENT = 3'h2,
							   BLOCK_OUT_TRANSMIT_END = 3'h3;
							   
							   
//***************************************************************************
//* Internal Signals and Registers Declarations
//***************************************************************************
    wire                       CLK_66;
	wire                       RST;

	wire [23:0]                UC_IN;
	wire [21:0]                UC_OUT;
	
	//Trigger Signals
	reg  [7:0]                 trigger_out;
	wire [7:0]                 trigger_in_byte;	
	
	//LED registers
	reg                        led_reset;
	
	//Switch registers
	reg                        switch_reset;
	
	//Transfer registers
	reg                        transfer_out_reg;
	wire                       transfer_in_received;
	wire [7:0]                 transfer_byte;
	//reg  [7:0]                 transfer_out_byte;
	reg  [3:0]                 transfer_to_host_counter;
	reg  [1:0]                 transfer_to_host_state;

	//Block Transfer Out registers
	reg                        block_out_reg;
	wire                       block_out_received;
	reg                        start_block_transfer;
	reg                        start_block_transfer_reg;
	wire                       block_byte_ready;
	reg  [7:0]                 block_out_byte;
	reg [2:0]                  block_out_state;
	reg [3:0]                  block_out_index;
	reg                        block_out_start;
	
	//Block Transfer In registers
	wire [7:0]                 block_in_data;
	wire                       block_in_rcv;
	reg                        block_in_loopback;
	wire  [7:0]                ept_length;
	wire                       block_busy;
	reg [2:0]                  block_in_state;
	reg [3:0]                  block_in_index;
	reg                        mem_array_full_reg;
	
	//Memory Array
	reg   [7:0]                mem_array [8:0];

//***************************************************************************
//* 	Signal Assignments	
//***************************************************************************
   
   //assign            TR_DIR_1  = 1'b0; //1 = A to B; 0 = B to A
   assign            TR_OE_1  = 1'b1;
   //assign            TR_DIR_2  = 1'b0; //1 = A to B; 0 = B to A
   assign            TR_OE_2  = 1'b1;
   //assign            TR_DIR_3  = 1'b0; //1 = A to B; 0 = B to A
   assign            TR_OE_3  = 1'b1;  
   //assign            TR_DIR_4  = 1'b0; //1 = A to B; 0 = B to A
 
   //Clock and Reset
   assign            CLK_66 = aa[1];
   assign            RST = aa[0];
   //assign            reset = reset_signal_reg;
    
    

/*  always @(trigger_in_byte or LED or RST)
  begin
     if(!RST)
	     LED = 4'hz;
*/	
    always @(posedge CLK_66 or negedge RST) 
	begin
	   if (!RST)
	   begin
	      LED = 4'hz;
       end  
	   else
	   begin
         if(trigger_in_byte[4])
	        LED = 4'hz;
	     else if(trigger_in_byte[3:0])
	     begin
	     case(trigger_in_byte[3:0])
		     4'h1:
	             LED[0] = 1'b0;
		     4'h2:
	             LED[1] = 1'b0;
		     4'h4:
	             LED[2] = 1'b0;
		     4'h8:
	             LED[3] = 1'b0;
			 default:
	             LED = LED;
		 endcase
		 end
	   end
  
    end

   //-----------------------------------------------
   // User Switch Trigger
   //-----------------------------------------------
  always @(SW_USER_1 or SW_USER_2)
  begin
     if(!RST)
	 begin
	     trigger_out <= 8'h00;
	 end
	else 
	begin
	   if(!SW_USER_1 )
	        trigger_out <= 8'h01;
	   else if(!SW_USER_2 )
	        trigger_out <= 8'h02;
	    else 
	        trigger_out <= 8'h00;
	end
  end

   //-----------------------------------------------
   // Transfer to Host in Loop Back Mode 
   //-----------------------------------------------
    always @(posedge CLK_66 or negedge RST) 
	begin
	     if (!RST)
		 begin
			 transfer_out_reg <= 1'b0;
			 transfer_to_host_counter <= 0;
			 transfer_to_host_state <= TRANSFER_HOST_IDLE;
	     end 
		 else 
		 begin
			     transfer_out_reg <= 1'b0;
			case(transfer_to_host_state)
             TRANSFER_HOST_IDLE:
			     if(transfer_in_received )//& transfer_in_loop_back)	
                 begin			 
			         //transfer_out_byte = transfer_in_byte;
			         transfer_to_host_state <= TRANSFER_HOST_LOOPBACK_START;
			     end
             TRANSFER_HOST_LOOPBACK_START:
		         if(transfer_to_host_counter < 4'hf)
			     begin
		             transfer_to_host_counter <= transfer_to_host_counter + 1'd1;
			         transfer_to_host_state <= TRANSFER_HOST_LOOPBACK_START;
			     end
				 else
				 begin
			         transfer_out_reg <= 1'b1;
			         transfer_to_host_state <= TRANSFER_HOST_LOOPBACK_COMPLETE;				 
				 end
             TRANSFER_HOST_LOOPBACK_COMPLETE:
			     begin
			         transfer_out_reg <= 1'b0;
					 transfer_to_host_counter <= 0;
			         transfer_to_host_state <= TRANSFER_HOST_IDLE;
				 end
			 default:
			      begin
			          transfer_out_reg <= 1'b0;
			          transfer_to_host_counter <= 0;
			          transfer_to_host_state <= TRANSFER_HOST_IDLE;
				  end
			 endcase
	     end
    end

   //-----------------------------------------------
   // Loading the mem_array from Block In
   //-----------------------------------------------
    always @(posedge CLK_66 or negedge RST) 
	begin
       if (!RST)
       begin
	      block_in_state <= 0;
		  block_in_index <= 0;
		  //mem_array_full_reg <= 1'b0;
	   end
	   else
	   begin
	      case(block_in_state)
		  BLOCK_IN_IDLE:
		  begin
		     if(block_in_rcv)
			    block_in_state <= BLOCK_IN_RECEIVE_HI;
		     //mem_array_full_reg <= 1'b0;
		  end
		  BLOCK_IN_RECEIVE_HI:
		  begin
		     if(block_byte_ready)
			 begin
			    block_in_state <= BLOCK_IN_RECEIVE_LO;
			 end
			 if(block_in_index == ept_length[3:0])
			   block_in_state <= BLOCK_IN_COMPLETE;
		  end
		  BLOCK_IN_RECEIVE_LO:
		  begin
		     if(!block_byte_ready)
			 begin
			    mem_array[block_in_index] <= block_in_data;
			    block_in_state <= BLOCK_IN_INCREMENT;
			 end
		  end
		  BLOCK_IN_INCREMENT:
		  begin
		     if(!block_byte_ready)
			 begin
			   block_in_index <= block_in_index + 1'd1;
			   block_in_state <= BLOCK_IN_RECEIVE_HI;
			 end
		  end
		  BLOCK_IN_COMPLETE:
		  begin
		     if(BLOCK_OUT_TRANSMIT)
			     block_in_state <= BLOCK_IN_IDLE;
		     block_in_index <= 0;
			 //mem_array_full_reg <= 1'b1;
		  end
		  endcase
	   end
    end

   //-----------------------------------------------
   // Transmitting data from the mem_array using Block Out
   //-----------------------------------------------
    always @(posedge CLK_66 or negedge RST) 
	begin
       if (!RST)
       begin
	      block_out_state <= 0;
		  block_out_index <= 0;
		  block_out_start <= 1'b0;
	   end
	   else
	   begin
	      case(block_out_state)
		  BLOCK_OUT_IDLE:
		  begin
		     if(trigger_in_byte[5]/*mem_array_full_reg*/)
			 begin
			    block_out_state <= BLOCK_OUT_TRANSMIT;
				block_out_start <= 1'b1;
		     end
		  end
		  BLOCK_OUT_TRANSMIT:
		  begin
			 block_out_byte <= mem_array[block_out_index] ;
		     if(block_byte_ready)
			 begin
				block_out_state <= BLOCK_OUT_INCREMENT;
		     end
			 if(block_out_index >= ept_length[3:0])
			    block_out_state <= BLOCK_OUT_TRANSMIT_END;
		  end
		  BLOCK_OUT_INCREMENT:
		  begin
		     //if(block_out_index < ept_length[3:0])
			 //begin
			    block_out_index <= block_out_index + 1'd1;
				block_out_state <= BLOCK_OUT_TRANSMIT;
		     //end
		     //else 
			 //   block_out_state <= BLOCK_OUT_TRANSMIT_END;
		  end
		  BLOCK_OUT_TRANSMIT_END:
		  begin
		     if(BLOCK_OUT_TRANSMIT)
			     block_out_state <= BLOCK_OUT_IDLE;
		     block_out_index <= 0;
			 block_out_start <= 1'b0;
		  end
		  endcase
	   end
    end


   //-----------------------------------------------
   // Instantiate the EPT Library
   //-----------------------------------------------

	active_transfer_library	   ACTIVE_TRANSFER_LIBRARY_INST
	(	
	.aa                        (aa),
	.bc_in                     (bc_in),
	.bc_out                    (bc_out),
	.bd_inout                  (bd_inout),

	.UC_IN                     (UC_IN),
	.UC_OUT                    (UC_OUT)
	
	);
	
   //-----------------------------------------------
   // Instantiate the EPT Library
   //-----------------------------------------------
wire [22*3-1:0]  uc_out_m;
eptWireOR # (.N(3)) wireOR (UC_OUT, uc_out_m);
	active_trigger             ACTIVE_TRIGGER_INST
	(
	 .uc_clk                   (CLK_66),
	 .uc_reset                 (RST),
	 .uc_in                    (UC_IN),
	 .uc_out                   (uc_out_m[ 0*22 +: 22 ]),

	 .trigger_to_host          (trigger_out),
	 .trigger_to_device        (trigger_in_byte)
	
	);

	active_transfer            ACTIVE_TRANSFER_INST
	(
	 .uc_clk                   (CLK_66),
	 .uc_reset                 (RST),
	 .uc_in                    (UC_IN),
	 .uc_out                   (uc_out_m[ 1*22 +: 22 ]),
	
	 .start_transfer           (transfer_out_reg),
	 .transfer_received        (transfer_in_received),
	
	 .uc_addr                  (3'h2),

	 .transfer_to_host         (transfer_byte),
	 .transfer_to_device       (transfer_byte)	
	);
	
	active_block               BLOCK_TRANSFER_INST
	(
	 .uc_clk                   (CLK_66),
	 .uc_reset                 (RST),
	 .uc_in                    (UC_IN),
	 .uc_out                   (uc_out_m[ 2*22 +: 22 ]),
	
	 .start_transfer           (block_out_start),
	 .transfer_received        (block_in_rcv),
	 
	 .transfer_ready           (block_byte_ready),
	 .transfer_busy            (block_busy),

	 .ept_length               (ept_length),
	
	 .uc_addr                  (3'h4),
	 .uc_length                (ept_length),

	 .transfer_to_host         (block_out_byte),
	 .transfer_to_device       (block_in_data)
	
	);

	
endmodule
