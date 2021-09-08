/******************************************************
 * Title: spi_iface_model.v 
 * Author: Richard Jolly                           
 * Creation Date: 11/28/2011                           
 * Description: This Module is does serial byte writes
 * on the SPI TX line. The input is parallel data
 *
 * Copyright Earth People Technology, Inc. 2011
 *
******************************************************/

`timescale 1 ns / 10 ps

module spi_iface_model
  (
   CLK, 
   RST_N,

   SPI_DATA_OUT,
   SPI_CLK,
   SPI_DATA_IN,
   SPI_CS_N,

   DIN,
   WE_IN,
 
   DOUT,
   WE_OUT_N,
   RDY_OUT

   );


   //----------------------------------------------
   // Parameter Declarations
   //----------------------------------------------
   parameter 	IDLE						= 0,
                START_WRITE_BYTE			= 1,
                WRITE_BYTE                  = 2,
                START_READ_BYTE             = 3,
                READ_BYTE					= 4,
                READ_COMPLETE				= 5;
				
   //SPI Clock Generation
   //parameter   CLK_COUNT_4_4MHZ             = 4;  
   parameter   CLK_COUNT_10_2MHZ            = 2;  

   //SPI Delay Counters
   //parameter   READ_SPI_DELAY_COUNT         = 8'h10;   
   
   //--------------------------------------------------
   // IO Port Declarations
   //--------------------------------------------------     
	input					CLK;
   	input					RST_N;

   	output					SPI_DATA_OUT;
   	output					SPI_CLK;
   	input					SPI_DATA_IN;
   	output					SPI_CS_N;

	input	[7:0]			DIN;
	input					WE_IN;

  	output	[7:0]			DOUT;
   	output					WE_OUT_N;
	input					RDY_OUT;

   //------------------------------------------------
   // Wire and Register Declarations                
   //------------------------------------------------
   	reg	[5:0] 			state, next;
  
     //SPI Signals
    wire 					   SPI_CLK;
    wire					   SPI_DATA_IN;
    reg  					   SPI_CS_N;
	wire                       SPI_RESET;

   	wire	[7:0]			DOUT;

	reg                     WE_OUT_N;

	//Clock Registers
	reg                     CLK_SPI;
	reg	[2:0]               clock_spi_count;

	//Read SPI registers
   	reg 					read_spi_start, write_spi_start;
	//reg					    read_spi_start_pulse;
   	wire 				    read_spi_sclk;
 	
	//Write SPI Registers
   	wire 				    write_spi_done, read_spi_done;
   	wire 				    write_spi_sclk;
	//wire                    write_spi_busy;
 
    //SPI Interface FSM Registers
   	wire 					read_mode;
   	wire	[7:0] 			write_spi_din;
	//reg                     end_read_data_flag;


	//reg	[3:0]				SPI_STATE;

	//Miscellaneous registers
	//wire						read_assert_data_out;

      
`ifdef SIM
   	reg [8*30:1] state_name;
`endif
   
   //------------------------------------------------
   // Signal Assignments  
   //------------------------------------------------
   
   assign 	SPI_CLK = read_mode ? read_spi_sclk : write_spi_sclk;

   assign 	read_mode = (state[READ_BYTE] || state[START_READ_BYTE]);
   assign 	write_spi_din = DIN;
//   assign	DOUT = read_spi_done ? read_spi_dout : DOUT;
   

   //-----------------------------------------------
   // Create a State Test Output Signal
   //-----------------------------------------------
/*   always @(posedge CLK or negedge RST_N)
     begin
	if (!RST_N)
	  SPI_STATE <= 0;
	else
	  begin
	     if (state[IDLE])
               SPI_STATE <= 4'h0;
	     if (state[WAIT_FOR_START])
	       SPI_STATE <= 4'h1;
	     if (state[CHECK_FOR_DATA])
	       SPI_STATE <= 4'h2;
	     if (state[START_WRITE_BYTE])
	       SPI_STATE <= 4'h3;
	     if (state[WRITE_BYTE])
	       SPI_STATE <= 4'h4;
	     if (state[START_READ_BYTE])
	       SPI_STATE <= 4'h6;
	     if (state[READ_BYTE])
	       SPI_STATE <= 4'h7;
	     if (state[CHECK_RD_BYTE])
	       SPI_STATE <= 4'h8;
	     if (state[READ_COMPLETE])
	       SPI_STATE <= 4'ha;

		  
	  end // else: !if(!RST_N)
     end // always @ (posedge CLK or negedge RST_N)
*/
   //-----------------------------------------------
   // 9.4 Mhz clock creation. This will allow the  
   // SPI bus to run at 4.7 Mhz.
   //-----------------------------------------------
   //always @(posedge CLK_100 or negedge RST_N_100)
   always @(posedge CLK or negedge RST_N)
     begin
	if (!RST_N)
	begin
	  		CLK_SPI <= 0;
		  	clock_spi_count <= 0;
	end
	else 
	  begin
	     if ( clock_spi_count < CLK_COUNT_10_2MHZ)
		begin
	       	//CLK_SPI <= 1;
		  	clock_spi_count <= clock_spi_count + 1;
		end
	     else 
		begin 
	  		CLK_SPI <= ~CLK_SPI;
		  	clock_spi_count <= 8'h0;
		end
	  end
	 end

   //------------------------------------------------
   // Generate the write_spi_start Signal
   //------------------------------------------------
   always @(posedge CLK or negedge RST_N)
     begin
	if (!RST_N)
	begin
	     write_spi_start <= 0;
	end
	else
	  begin
	     if (state[START_WRITE_BYTE])
		 begin
	       write_spi_start <= 1;
		 end
	     else if (state[write_spi_sclk])
		 begin
	       write_spi_start <= 0;
		 end
	  end
     end // always @ (posedge CLK or negedge RST_N)

	 
   //------------------------------------------------
   // Generate the read_spi_start Signal
   //------------------------------------------------
   always @(posedge CLK or negedge RST_N)
     begin
	if (!RST_N)
	begin
	  			read_spi_start <= 1'b0;
	  			//read_spi_start_pulse <= 1'b0;
				//read_spi_start_count <=  0;	
	end
	else
	begin
	     if ( state[START_READ_BYTE])
		begin
	       		read_spi_start <= 1'b1;
		end
		else if(read_spi_sclk)
		begin
	  			read_spi_start <= 1'b0;
	    end
/*	     if ( state[START_READ_BYTE] &  !read_spi_start_pulse)
		begin
	       		read_spi_start <= 1'b1;
		  		read_spi_start_pulse <= 1'b1;
		end
		else if(read_spi_sclk &  read_spi_start_pulse)
		begin
	  			read_spi_start <= 1'b0;
	  			read_spi_start_pulse <= 1'b0;
	    end
		else if ( read_spi_start_pulse )
		begin
			if( read_spi_start_count < READ_SPI_DELAY_COUNT )
				read_spi_start_count <=  read_spi_start_count + 1;
			else
			begin 
				read_spi_start_count <=  0;	
	       		read_spi_start <= 0;
		  		read_spi_start_pulse <= 0;
			end
		end
*/	end
    end // always @ (posedge CLK or negedge RST_N)   

   //-----------------------------------------------
   // Create a WE_OUT_N to tell the FSM to
   // read bytes of the input word
   //-----------------------------------------------
   always @(posedge CLK or negedge RST_N)
     begin
	if (!RST_N)
	  WE_OUT_N <= 1'b0;
	else 
	  begin
	     if (state[READ_COMPLETE] )
	       WE_OUT_N <= 1'b1;
	     else if ( state[IDLE] ) 
	       WE_OUT_N <= 1'b0;
	  end
     end // always @ (posedge CLK or negedge RST_N)   
 	 
 
   //------------------------------------------------
   // Generate the end_read_data_flag Signal
   //------------------------------------------------
/*   always @(posedge CLK or negedge RST_N)
     begin
	if (!RST_N)
	  end_read_data_flag <= 0;
	else
	  begin
	     if ( RDY_OUT)
	       end_read_data_flag <= 1;
	     else
	       end_read_data_flag <= 0;
	  end
     end // always @ (posedge CLK or negedge RST_N)
*/
   //--------------------------------------------------
   // Generate Active Low SD Chip Select 
   //--------------------------------------------------  
   always @(posedge CLK or negedge RST_N)
     begin
	if (!RST_N)
	  SPI_CS_N <= 1;
	 else
	  begin
		if(state[IDLE] )
	       SPI_CS_N <= 1;
	     else
	       SPI_CS_N <= 0;
	  end // else: !if(!RST_N)
     end // always @ (posedge CLK or negedge RST_N)

   //--------------------------------------------------
   // Create a byte count
   //-------------------------------------------------- 
/*   always @(posedge CLK or negedge RST_N)
     begin
	if (!RST_N)
	begin
				byte_count_read <= 0;
	end
	else
	  begin
	     if ( state[CHECK_RD_BYTE] )
		begin
				byte_count_read <= byte_count_read + 1;
		end
		if( state[READ_COMPLETE] )
		begin
				byte_count_read <= 0;	
		end

	  end
     end // always @ (posedge CLK or negedge RST_N)
*/
   //--------------------------------------------------
   // Create a read byte count
   //--------------------------------------------------  
/*   always @(posedge CLK or negedge RST_N)
     begin
	if (!RST_N)
	  read_byte <= 0;
	else
	  begin
	     if (read_spi_done)
	       read_byte <= read_spi_dout;
	     else 
	       read_byte <= 0;
	  end
     end // always @ (posedge CLK or negedge RST_N)
*/
   //--------------------------------------------------
   // Write State Machine
   //--------------------------------------------------  
   // Next State Logic
   always @(posedge CLK or negedge RST_N)
     begin
	if (!RST_N)
	  begin
	     state <= 6'h000;
	     state[IDLE] <= 1'b1;
	  end
	else
	  state <= next;
     end


   always @ ( write_spi_start or read_spi_start
	      or read_spi_done or state /*or end_of_data_flag*/
	      or write_spi_done or WE_IN or
		 RDY_OUT )

     begin
	next = 6'h000;

	if (state[IDLE])
	  begin
	     if ( WE_IN )
	       next[START_WRITE_BYTE] = 1'b1;
	     else if ( RDY_OUT )
	       next[START_READ_BYTE] = 1'b1;
		else
	       next[IDLE] = 1'b1;			
	  end

	if (state[START_WRITE_BYTE])
	  next[WRITE_BYTE] = 1'b1;

	if (state[WRITE_BYTE])
	  begin
		if ( write_spi_done )
			next[IDLE] = 1'b1;
	     else
			next[WRITE_BYTE] = 1'b1;
	  end

	if (state[START_READ_BYTE])
	  next[READ_BYTE] = 1'b1;

	if (state[READ_BYTE])
	  begin
	     if (read_spi_done)
	       next[READ_COMPLETE] = 1'b1;
	     else
	       next[READ_BYTE] = 1'b1;
	  end

	if (state[READ_COMPLETE])
	begin
	  	if( !RDY_OUT & !read_spi_done)
		   next[IDLE] = 1'b1;
		else
			next[READ_COMPLETE] = 1'b1;			
	end

	
`ifdef SIM
	if (state == (1 << IDLE))
	  state_name = "IDLE";
	else if (state == (1 << START_WRITE_BYTE))
	  state_name = "START_WRITE_BYTE";
	else if (state == (1 << WRITE_BYTE))
	  state_name = "WRITE_BYTE";
	else if (state == (1 << START_READ_BYTE))
	  state_name = "START_READ_BYTE";
	else if (state == (1 << READ_BYTE))
	  state_name = "READ_BYTE";
	else if (state == (1 << READ_COMPLETE))
	  state_name = "READ_COMPLETE";

	  
`endif
     end // always @ (...

   //----------------------------------------------
   // Instantiate the Leaf FSM Modules
   //----------------------------------------------
   write_SPI                  write_spi_inst
     (
      .CLK                    (CLK_SPI), 
      .RST_N                  (RST_N),
      
      .START                  (write_spi_start),
      .DONE                   (write_spi_done),
      
      .DIN                    (write_spi_din),
      .DATA_OUT               (SPI_DATA_OUT), //SPI_DATA_OUT is an output from *top.v
      .SCLK                   (write_spi_sclk)//,

	 //.PERFORM_READ			  (write_spi_busy)
      );

   read_SPI                    read_spi_inst
     (
      .CLK                    (CLK_SPI), 
      .RST_N                  (RST_N),
      
      .START                  (read_spi_start),
      .DONE                   (read_spi_done),
      
      .DOUT                   (DOUT),
      .DATA_IN                (SPI_DATA_IN), //SPI_DATA_IN is an input from *top.v
      .SCLK                   (read_spi_sclk)//,

	 //.PERFORM_READ			  (read_assert_data_out)

      );
    
	
  
endmodule // audio_SPI_fsm

   