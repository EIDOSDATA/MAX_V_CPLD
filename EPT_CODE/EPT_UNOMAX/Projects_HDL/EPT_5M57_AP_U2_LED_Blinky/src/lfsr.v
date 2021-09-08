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

module lfsr
  (
   output wire                 Q,
   input wire                  CLK,
   input wire                  RST,
   input wire [3:0]            SEED,
   input wire                  LOAD

   );

   wire [3:0]       state_out;
   wire [3:0]       state_in;
   
   reg             delay_state3;
   
   flipflop F[3:0] (state_out, CLK, RST, state_in);
   mux M1[3:0] (state_in, LOAD, SEED, {state_out[2],
                                       state_out[1],
									   state_out[0],
									   nextbit});
									   
   always @(state_out[3])
         delay_state3 = #20 state_out[3];   
   xor G1(nextbit, state_out[2], delay_state3); //state_out[3]);
   assign Q = nextbit;   

   

endmodule 

