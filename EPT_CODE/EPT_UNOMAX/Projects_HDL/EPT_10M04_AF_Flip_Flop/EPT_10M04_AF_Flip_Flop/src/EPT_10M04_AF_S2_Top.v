//#######################################################################
//#
//#	Copyright 	Earth People Technology Inc. 2017
//#
//#
//# File Name:  EPT_10M04_AF_S2_Top.v
//# Author:     Earth People Technology
//# Date:       January 15, 2017
//# Revision:   A
//#
//# Development: EPT Data Collection Project 
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
//#			1/15/17 	1			Created
//#
//#									
//#
//#######################################################################


//************************************************************************
//* Module Declaration
//************************************************************************

// D flip-flop Code
    module EPT_10M04_AF_S2_Top ( d, clk, q, q_bar);
    input d ,clk;
    output q, q_bar;
    wire d ,clk;
    reg q, q_bar;
       	 
    always @ (posedge clk)
    begin
        q <= d;
        q_bar <=  ! d;
    end
    
    endmodule
