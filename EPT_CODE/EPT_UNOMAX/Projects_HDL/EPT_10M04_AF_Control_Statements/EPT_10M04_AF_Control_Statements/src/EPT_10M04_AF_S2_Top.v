//#######################################################################
//#
//#	Copyright 	Earth People Technology Inc. 2018
//#
//#
//# File Name:  EPT_10M04_AF_S2_Top.v
//# Author:     Earth People Technology
//# Date:       February 20, 2018
//# Revision:   A
//#
//# Development: EPT Verilog Controls Statements 
//# Application: Altera MAX10 FPGA
//# Description: This file contains verilog code which access
//#              the I/O's of the FPGA. 
//#               
//#              
//#
//#************************************************************************
//#
//# Revision History:	
//#			DATE		VERSION		DETAILS		
//#			2/20/18 	1			Created
//#
//#									
//#
//#######################################################################


//************************************************************************
//* Module Declaration
//************************************************************************

// Control Statements Code
    module EPT_10M04_AF_S2_Top 
	( 
	
	//Inputs and Outputs for Verilog Control Statements
	
	input  wire                CLK,
	input  wire                RST_N,
		

	input wire    [7:0]        IF_ELSE_COUNTER_1,       //
	output reg    [7:0]        IF_ELSE_RESULT_1,        //
	
	input wire    [7:0]        CASE_COUNTER_2,          //
	output reg    [7:0]        CASE_RESULT_2,           //
	
	input wire    [7:0]        WHILE_COUNTER_3,         //
	output reg    [7:0]        WHILE_RESULT_3,          //
	
	input wire    [7:0]        FOR_LOOP_COUNTER_4,      //
	output reg    [7:0]        FOR_LOOP_RESULT_4,       //
	
	input wire    [7:0]        REPEAT_LOOP_COUNTER_5,   //
	output reg    [7:0]        REPEAT_LOOP_RESULT_5    //
	
	
	);

	
   //-----------------------------------------------
   // Parameters
   //-----------------------------------------------
   
   parameter                   IF_ELSE_MAX_COUNT = 8'hf0;
   parameter                   WHILE_MAX_COUNT = 8'hf0;
   parameter                   REPEAT_MAX_COUNT = 8'h0a;
   
   
//***************************************************************************
//* Internal Signals and Registers Declarations
//***************************************************************************
   reg  [7:0]                   while_counter;
   reg  [7:0]                   index;
   reg  [7:0]                   repeat_loop_counter;
   reg                          repeat_loop_flag;
   
   
//***************************************************************************
//* 	Signal Assignments	
//***************************************************************************
 

//***************************************************************************
//* 	If Else Counter
//***************************************************************************
    always@(*)   
    begin
	   if(IF_ELSE_COUNTER_1 == IF_ELSE_MAX_COUNT)
	   begin
	       IF_ELSE_RESULT_1 <= IF_ELSE_COUNTER_1;
	   end
	   else
	   begin
	      IF_ELSE_RESULT_1 <= 8'h0;
	   end
	   
    end	
 
//***************************************************************************
//* 	Case Statement
//***************************************************************************
    always@(*)   
    begin
	   case(CASE_COUNTER_2)
	       0: CASE_RESULT_2 <= 8'ha;
		   1: CASE_RESULT_2 <= 8'h9;
		   2: CASE_RESULT_2 <= 8'h8;
		   3: CASE_RESULT_2 <= 8'h7;
		   4: CASE_RESULT_2 <= 8'h6;
		   5: CASE_RESULT_2 <= 8'h5;
		   6: CASE_RESULT_2 <= 8'h4;
		   7: CASE_RESULT_2 <= 8'h3;
		   8: CASE_RESULT_2 <= 8'h2;
		   9: CASE_RESULT_2 <= 8'h1;
		   default: CASE_RESULT_2 <= 8'h0;
	   endcase
    end	

//***************************************************************************
//* 	While Loop Counter
//***************************************************************************
    always@(posedge CLK or negedge RST_N)   
    begin
     if(!RST_N)
	 begin
	     WHILE_RESULT_3 <= 0;
	 end
	 else 
	 begin
	   if(WHILE_COUNTER_3 == 0)
	   begin
	       WHILE_RESULT_3 <= 0;
		   while_counter <= 0;
	   end
	   else if(while_counter < WHILE_MAX_COUNT)
	   begin
	      while_counter <= while_counter + 1'd1;
	       WHILE_RESULT_3 <= 0;
	   end
	   else
	   begin
	       WHILE_RESULT_3 <= while_counter;
	   end
	end   
	   
    end	
 
//***************************************************************************
//* 	For Loop Counter
//***************************************************************************
    always@(posedge CLK or negedge RST_N)   
    begin
     if(!RST_N)
	 begin
	     FOR_LOOP_RESULT_4 <= 0;
		 index <= 0;
	 end
	 else 
	 begin
	   if(FOR_LOOP_COUNTER_4 == 0)
	   begin
	      FOR_LOOP_RESULT_4 <= 0;
	   end
	   else
	   begin
	      for(index = 0; index < FOR_LOOP_COUNTER_4; index = index + 1'd1)
	      begin
	          FOR_LOOP_RESULT_4 <= FOR_LOOP_COUNTER_4 + index;
	      end
       end
	 end
    end	

	
//***************************************************************************
//* 	Repeat Counter
//***************************************************************************
    always@(*)   
    begin
	   if(REPEAT_LOOP_COUNTER_5 == 0)
	   begin
	      REPEAT_LOOP_RESULT_5 <= 0;
		  repeat_loop_counter <= 0;
		  repeat_loop_flag <= 1'b0;
	   end
	   else if(REPEAT_LOOP_COUNTER_5 == 8'h1)
	   begin
	      repeat_loop_flag <= 1'b0;
	   end
	   else if((REPEAT_LOOP_COUNTER_5 == 8'h2) & !repeat_loop_flag)
	   begin
	      repeat_loop_flag <= 1'b1;
	      if(repeat_loop_counter < REPEAT_MAX_COUNT)
	      begin
		     repeat_loop_counter <= repeat_loop_counter + 1'd1;
	         REPEAT_LOOP_RESULT_5 <= repeat_loop_counter;
	      end
       end
    end	

    endmodule
