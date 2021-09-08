/******************************************************************************
 * $Workfile::                                                                $
 * $Author: mcorbett $
 * $Date: 2003-06-25 13:59:23-04 $
 * $Revision: 1.0 $
 *
 * Copyright Commonwealth Technology, Inc. 2003
 *
 * This header files defines the input/output lines being used.
 *****************************************************************************/
`ifndef _TB_DEFINE
 `define _TB_DEFINE



 `define CIS_REGISTERS                   100
 `define READ_CONTROL_WORD               8'h80
 `define REG_BASE_ADDRESS                8'h40
 `define NUMBER_RSB_REG                  8'h0f

  // EPT TestBench Commands
 `define TRIGGER_OUT_CMD_TB              3'h1
 `define TRANSFER_OUT_CMD_TB             3'h2
 `define BLOCK_OUT_CMD_TB                3'h4
 `define TRIGGER_IN_CMD_TB               3'h1
 `define TRANSFER_IN_CMD_TB              3'h2
 `define BLOCK_IN_CMD_TB                 3'h4

  // EPT vector parameters
 `define ADDRESS_000_TB                  3'h0
 `define ADDRESS_001_TB                  3'h1
 `define ADDRESS_002_TB                  3'h2
 `define ADDRESS_004_TB                  3'h4

  // Block Transfer Options
  `define START_BLOCK_TRANSFER_OUT       8'hea
  `define START_BLOCK_TRANSFER_IN        8'hea
  

 // Loop control values for TestBench
 `define TEST_10_REPS                    8'h0a
 `define TEST_2_REPS                     8'h03
 `define TEST_1_REPS                     8'h01
 
// Simulation Clocks
 `define CYCLE                           10
 `define CYCLE_10                        50
 `define CYCLE_20                        50
 `define CYCLE_33                        30
 `define CYCLE_66                        7.5
 `define CYCLE_50                        20
 `define CYCLE_96                        5.2
 `define CYCLE_100                       5
 `define CYCLE_150                       3.33
 `define CYCLE_300                       1.66
 `define HALF_CYCLE `CYCLE/2

   //Header Bytes for the Transfer Loopback detection
 `define TRANSFER_CONTROL_BYTE1          8'h5A
 `define TRANSFER_CONTROL_BYTE2          8'hC3
 `define TRANSFER_CONTROL_BYTE3          8'h7E

   // Set and Mask bits for the LED Blinky
   `define SET_RANDOM_BLINKY_BIT        8'h10
   `define CLEAR_RANDOM_BLINKY_BIT      8'hef
   `define SET_SHIFT_LEFT_BLINKY_BIT    8'h20
   `define CLEAR_SHIFT_LEFT_BLINKY_BIT  8'hdf
   `define SET_SHIFT_RIGHT_BLINKY_BIT   8'h30
   `define CLEAR_SHIFT_RIGHT_BLINKY_BIT 8'hcf

   //Load Timer, Seed and Shift Count
   `define LOAD_TIMER_VALUE_LOW         8'h10
   `define LOAD_TIMER_VALUE_HIGH        8'h20
   `define LOAD_SEED_VALUE              8'h40
   `define LOAD_SHIFT_COUNT_VALUE       8'h80
`endif //  `ifndef _TB_DEFINE

