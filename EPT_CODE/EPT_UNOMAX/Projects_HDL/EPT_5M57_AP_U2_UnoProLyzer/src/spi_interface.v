/******************************************************
 * Title: spi_interface.v 
 * Author: Richard Jolly                           
 * Creation Date: 11/28/2011                           
 * Description: This Module is does serial byte writes
 * on the SPI TX line. The input is parallel data
 *
 * Copyright Earth People Technology, Inc. 2011
 *
******************************************************/

`timescale 1 ns / 10 ps

module spi_interface
  (
   CLK, 
   RST_N,
   //CLK_100,
   //RST_N_100,

   SPI_DATA_OUT,
   SPI_CLK,
   SPI_DATA_IN,
   SPI_CS_N,

   DIN,
   WE_IN,
   RDY_IN,

   DOUT,
   WE_OUT_N,
   RDY_OUT

   );


   //----------------------------------------------
   // Parameter Declarations
   //----------------------------------------------
   parameter 	IDLE						= 0,
                WAIT_FOR_START				= 1,
                CHECK_FOR_DATA              = 2,
                START_WRITE_BYTE			= 3,
                WRITE_BYTE                  = 4,
                DELAY_CHECK_BYTE_COUNT		= 5,
                CHECK_BYTE_COUNT			= 6,
                START_READ_BYTE             = 7,
                READ_BYTE					= 8,
                CHECK_RD_BYTE				= 9,
                READ_COMPLETE				= 10;
				
   //SPI Clock Generation
   parameter   CLK_COUNT_4_4MHZ             = 5;  
   parameter   CLK_COUNT_10_2MHZ            = 3;  

   //SPI Delay Counters
   parameter   READ_SPI_DELAY_COUNT         = 8'h10;   
   
   //--------------------------------------------------
   // IO Port Declarations
   //--------------------------------------------------     
	input					CLK;
   	input					RST_N;
	//input					CLK_100;
	//input					RST_N_100;

   	output					SPI_DATA_OUT;
   	output					SPI_CLK;
   	input					SPI_DATA_IN;
   	output					SPI_CS_N;

	input	[7:0]			DIN;
	input					WE_IN;
	output					RDY_IN;

  	output	[7:0]			DOUT;
   	output					WE_OUT_N;
	input					RDY_OUT;

   //------------------------------------------------
   // Wire and Register Declarations                
   //------------------------------------------------
   	reg	[10:0] 			state, next;
  
     //SPI Signals
    wire 					   SPI_CLK;
    wire					   SPI_DATA_IN;
    reg  					   SPI_CS_N;
	wire                       SPI_RESET;

   	wire	[7:0]			DOUT;
   	reg                     RDY_IN;

	reg                     WE_OUT_N;

	//Clock Registers
	reg                     CLK_SPI;
	reg	[2:0]               clock_spi_count;


	//byte count registers
   	//reg	[15:0] 			    byte_count_read;


	//Read SPI registers
   	//reg	  [7:0]             read_byte;
   	reg 					read_spi_start, write_spi_start;
	reg					    read_spi_start_pulse;
	reg	  [4:0]			    read_spi_start_count;	
   	wire 				    read_spi_sclk;
   	wire  [7:0] 			read_spi_dout;
	
	//Write SPI Registers
	//reg                     write_spi_start_flag;
	//reg [7:0]               write_spi_start_count;
   	wire 				    write_spi_done, read_spi_done;
   	wire 				    write_spi_sclk;
	wire                    write_spi_busy;
 
    //SPI Interface FSM Registers
   	wire 					read_mode;
   	wire	[7:0] 			write_spi_din;
	reg                     end_of_data_flag;
	reg                     end_read_data_flag;


	//reg	[3:0]				SPI_STATE;

	//Miscellaneous registers
	wire						read_assert_data_out;

      
`ifdef SIM
   	reg [8*30:1] state_name;
`endif
   
   //------------------------------------------------
   // Signal Assignments  
   //------------------------------------------------
   
   assign 	SPI_CLK = read_mode ? read_spi_sclk : write_spi_sclk;

   assign 	read_mode = (state[READ_BYTE] || state[START_READ_BYTE]);
   assign 	write_spi_din = DIN;
   assign	DOUT = read_spi_done ? read_spi_dout : DOUT;
   

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
	     if (state[CHECK_BYTE_COUNT])
	       SPI_STATE <= 4'h5;
	     if (state[START_READ_BYTE])
	       SPI_STATE <= 4'h6;
	     if (state[READ_BYTE])
	       SPI_STATE <= 4'h7;
	     if (state[CHECK_RD_BYTE])
	       SPI_STATE <= 4'h8;
	     if (state[DELAY_CHECK_BYTE_COUNT])
	       SPI_STATE <= 4'h9;
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
	     if ( clock_spi_count < CLK_COUNT_4_4MHZ)
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

   //-----------------------------------------------
   // RDY_IN signal to tell the FSM to
   // write both bytes of the input word
   //-----------------------------------------------
   always @(posedge CLK or negedge RST_N)
     begin
	if (!RST_N)
	  RDY_IN <= 0;
	else 
	  begin
	     if (state[START_WRITE_BYTE] )
	       RDY_IN <= 1;
	     else if ( state[CHECK_BYTE_COUNT] ) 
	       RDY_IN <= 0;
	  end
     end // always @ (posedge CLK or negedge RST_N)   
 
   //------------------------------------------------
   // Generate the write_spi_start Signal
   //------------------------------------------------
   always @(posedge CLK or negedge RST_N)
     begin
	if (!RST_N)
	begin
	     write_spi_start <= 0;
		 //write_spi_start_flag <= 0;
		 //write_spi_start_count <= 0;
	end
	else
	  begin
	     if (state[START_WRITE_BYTE])
		 begin
	       write_spi_start <= 1;
		   //write_spi_start_flag <= 1;
		 end
	     //else if ( state[WRITE_BYTE] & CLK_SPI & !write_spi_start_flag )
	     /*else if ( write_spi_start_flag )
		 begin
		   if( write_spi_start_count < 8'h10 )
		       write_spi_start_count <= write_spi_start_count + 1;
		   else
		   begin
	           write_spi_start_flag <= 0;
	           write_spi_start <= 0;
		       write_spi_start_count <= 0;
		   end
		 end */
		 else if(write_spi_busy)
		 begin
	       write_spi_start <= 0;
		   //write_spi_start_flag <= 0;
		   //write_spi_start_count <= 0;
		 end
	     else if ( state[CHECK_BYTE_COUNT] )
		 begin
	       write_spi_start <= 0;
		   //write_spi_start_flag <= 0;
		   //write_spi_start_count <= 0;
		 end
	  end
     end // always @ (posedge CLK or negedge RST_N)

	 
   //------------------------------------------------
   // Generate the end_of_data_flag Signal
   //------------------------------------------------
   always @(posedge CLK or negedge RST_N)
     begin
	if (!RST_N)
	  end_of_data_flag <= 0;
	else
	  begin
	     if ( state[CHECK_BYTE_COUNT] )
	       end_of_data_flag <= 1;
	     else if ( !write_spi_done )
	       end_of_data_flag <= 0;
	  end
     end // always @ (posedge CLK or negedge RST_N)
	 
   //------------------------------------------------
   // Generate the read_spi_start Signal
   //------------------------------------------------
   always @(posedge CLK or negedge RST_N)
     begin
	if (!RST_N)
	begin
	  			read_spi_start <= 0;
	  			read_spi_start_pulse <= 0;
				read_spi_start_count <=  0;	
	end
	else
	  begin
	     if ( state[START_READ_BYTE] &&  !read_spi_start_pulse )
		begin
	       		read_spi_start <= 1;
		  		read_spi_start_pulse <= 1;
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
	  end
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
	     if (state[CHECK_RD_BYTE] )
	       WE_OUT_N <= 1'b1;
	     else if ( state[IDLE] ) 
	       WE_OUT_N <= 1'b0;
	  end
     end // always @ (posedge CLK or negedge RST_N)   
 	 
 
   //------------------------------------------------
   // Generate the end_read_data_flag Signal
   //------------------------------------------------
   always @(posedge CLK or negedge RST_N)
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
	     state <= 12'h000;
	     state[IDLE] <= 1'b1;
	  end
	else
	  state <= next;
     end


   always @ ( write_spi_start or read_spi_start
	      or read_spi_done or state or end_of_data_flag
	      or write_spi_done or WE_IN or
		 RDY_OUT )

     begin
	next = 12'h000;

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
			next[CHECK_BYTE_COUNT] = 1'b1;
	     else	if( !write_spi_done )
			next[WRITE_BYTE] = 1'b1;
	  end

	if (state[DELAY_CHECK_BYTE_COUNT])
		    next[CHECK_BYTE_COUNT] = 1'b1;

	if (state[CHECK_BYTE_COUNT])
	  begin
		//if ( end_of_data_flag )
		if ( !write_spi_done )
		    next[IDLE] = 1'b1;
	     else 
	       	next[CHECK_BYTE_COUNT] = 1'b1;
	  end


	if (state[START_READ_BYTE])
	  next[READ_BYTE] = 1'b1;

	if (state[READ_BYTE])
	  begin
	     if (read_spi_done)
	       next[CHECK_RD_BYTE] = 1'b1;
	     else
	       next[READ_BYTE] = 1'b1;
	  end

	if (state[CHECK_RD_BYTE])
	  begin
	  	if( end_read_data_flag )
			next[READ_COMPLETE] = 1'b1;
		else
			next[CHECK_RD_BYTE] = 1'b1;			
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
	else if (state == (1 << WAIT_FOR_START))
	  state_name = "WAIT_FOR_START";
	else if (state == (1 << CHECK_FOR_DATA))
	  state_name = "CHECK_FOR_DATA";
	else if (state == (1 << START_WRITE_BYTE))
	  state_name = "START_WRITE_BYTE";
	else if (state == (1 << WRITE_BYTE))
	  state_name = "WRITE_BYTE";
	else if (state == (1 << DELAY_CHECK_BYTE_COUNT))
	  state_name = "DELAY_CHECK_BYTE_COUNT";
	else if (state == (1 << CHECK_BYTE_COUNT))
	  state_name = "CHECK_BYTE_COUNT";
	else if (state == (1 << START_READ_BYTE))
	  state_name = "START_READ_BYTE";
	else if (state == (1 << READ_BYTE))
	  state_name = "READ_BYTE";
	else if (state == (1 << CHECK_RD_BYTE))
	  state_name = "CHECK_RD_BYTE";
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
      .SCLK                   (write_spi_sclk),

	 .PERFORM_READ			  (write_spi_busy)
      );

   read_SPI                    read_spi_inst
     (
      .CLK                    (CLK_SPI), 
      .RST_N                  (RST_N),
      
      .START                  (read_spi_start),
      .DONE                   (read_spi_done),
      
      .DOUT                   (read_spi_dout),
      .DATA_IN                (SPI_DATA_IN), //SPI_DATA_IN is an input from *top.v
      .SCLK                   (read_spi_sclk),

	 .PERFORM_READ			  (read_assert_data_out)

      );
    
	
  
endmodule // audio_SPI_fsm

   