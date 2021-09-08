//top level file in this project
module UART_MAXV_TEST
(
	input clk, // 12
	input RxD, // 41
	output TxD, // 81

	output reg [7:0] GPout,  // general purpose outputs
	input [7:0] GPin,  // general purpose inputs
	
	input wire		SW_USER_1, // PIN 20
	input wire		SW_USER_2, // PIN 21
	
	output wire		TR_DIR_1, //1 = A to B(input); 0 = B to A(output) >> PIN 100
	output wire		TR_OE_1, // PIN 86	
	output wire		TR_DIR_2, //1 = A to B(input); 0 = B to A(output) >> PIN 29
	output wire		TR_OE_2, // PIN 28	
	output wire		TR_DIR_3, //1 = A to B(input); 0 = B to A(output) >> PIN 85
	output wire		TR_OE_3, // PIN 74
	
	output reg		[3:0]	LED // PIN 54,53,52,51	

);
//***************************************************************************
//* 	Signal Assignments	
//***************************************************************************
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
	
	wire RxD_data_ready;
	wire [7:0] RxD_data;
	
	async_receiver RX(.clk(clk),
						.RxD(RxD),
						.RxD_data_ready(RxD_data_ready),
						.RxD_data(RxD_data));
	//
	always @(posedge clk) if(RxD_data_ready) GPout <= RxD_data;

	async_transmitter TX(.clk(clk),
							.TxD(TxD),
							.TxD_start(RxD_data_ready),
							.TxD_data(GPin));
	//
endmodule



