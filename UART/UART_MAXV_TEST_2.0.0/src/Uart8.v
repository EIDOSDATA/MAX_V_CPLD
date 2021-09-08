/*
 * Simple 8-bit UART realization.
 * Combine receiver, transmitter and baud rate generator.
 * Able to operate 8 bits of serial data, one start bit, one stop bit.
 */
module Uart8  #(
    parameter CLOCK_RATE = 100000000, // board internal clock
    parameter BAUD_RATE = 9600
)(
	input wire clk, // 12

	// rx interface
	input wire rx, // 41
	input wire rxEn,
	output wire [7:0] out,
	output wire rxDone,
	output wire rxBusy,
	output wire rxErr,

	// tx interface
	output wire tx, // 81
	input wire txEn,
	input wire txStart,
	input wire [7:0] in,
	output wire txDone,
	output wire txBusy,
	
	//
	output wire		TR_DIR_1, //1 = A to B(input); 0 = B to A(output) >> PIN 100
	output wire		TR_OE_1, // PIN 86	
	output wire		TR_DIR_2, //1 = A to B(input); 0 = B to A(output) >> PIN 29
	output wire		TR_OE_2, // PIN 28	
	output wire		TR_DIR_3, //1 = A to B(input); 0 = B to A(output) >> PIN 85
	output wire		TR_OE_3, // PIN 74
	
	output reg		[3:0]	LED // PIN 54,53,52,51	
);
	// IOH
	assign            TR_DIR_1  = 1'b1; //1 = A to B(input); 0 = B to A(output) >> PIN 100
   assign            TR_OE_1  = 1'b0; // PIN 86
	// AD (RX)
   assign            TR_DIR_2  = 1'b1; //1 = A to B(input); 0 = B to A(output) >> PIN 29
   assign            TR_OE_2  = 1'b0; // PIN 28
	// IOL (TX)
	assign            TR_DIR_3  = 1'b0; //1 = A to B(input); 0 = B to A(output) >> PIN 85
   assign            TR_OE_3  = 1'b0; // PIN 74
	
	reg [31:0] led_count;
	
	always@ (posedge clk)
	begin

		if(LED == 4'hf)
			LED <=0;
		led_count <= led_count + 1;
		
		if(led_count == 66000066) // Delay 1000ms : 66000066
		begin
			led_count <= 0;
			LED <= LED + 1;
		end
	end

	wire rxClk;
	wire txClk;

BaudRateGenerator #(
    .CLOCK_RATE(CLOCK_RATE),
    .BAUD_RATE(BAUD_RATE)
) generatorInst (
    .clk(clk),
    .rxClk(rxClk),
    .txClk(txClk)
);

Uart8Receiver rxInst (
    .clk(rxClk),
    .en(rxEn),
    .in(rx),
    .out(out),
    .done(rxDone),
    .busy(rxBusy),
    .err(rxErr)
);

Uart8Transmitter txInst (
    .clk(txClk),
    .en(txEn),
    .start(txStart),
    .in(in),
    .out(tx),
    .done(txDone),
    .busy(txBusy)
);

endmodule
