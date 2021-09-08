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

module mux
  (
   output reg                  Q,
   input wire                  CONTROL,
   input wire                  A,
   input wire                  B

   );

   wire notcontrol;
   
   //-----------------------------------------------
   // Multiplex inputs A and B
   //-----------------------------------------------
   always @(CONTROL or notcontrol or A or B)
   begin
        Q = (CONTROL & A) | (notcontrol & B);
   end 

    not (notcontrol, CONTROL);
endmodule 

