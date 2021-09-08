/******************************************************
 * $Workfile::                                       
 * $Author::                                         
 * $Date::                                           
 * $Revision::                                       
 *
 *
 * This header files defines the input/output
******************************************************/
`timescale 1 ns / 10 ps

module flipflop
  (
   output reg                  Q,
   input  wire                 CLK,

   input  wire                 RST,
   input  wire                 D
   );




   //-----------------------------------------------
   // Set the Output equal to the input
   //-----------------------------------------------
   always @(posedge CLK or negedge RST)
    begin
	    if (!RST)
	        #2 Q <= 0;
	    else
	        Q <= #10 D;
    end 


endmodule 

