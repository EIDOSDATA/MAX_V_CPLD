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
//#			2/20/18 	1			Created
//#
//#									
//#
//#######################################################################


//************************************************************************
//* Module Declaration
//************************************************************************

// Operators Code
    module EPT_10M04_AF_S2_Top 
	( 
	
	//Inputs and Outputs for +, -, *, / Operators
	
	input wire    [7:0]        ADDITION_A,       //
	input wire    [7:0]        ADDITION_B,       //
	output wire   [7:0]        ADDITION_RESULT,  //
	
	input wire    [7:0]        SUBTRACTION_A,       //
	input wire    [7:0]        SUBTRACTION_B,       //
	output wire   [7:0]        SUBTRACTION_RESULT,  //
	
	input wire    [7:0]        MULTIPLICATION_A,       //
	input wire    [7:0]        MULTIPLICATION_B,       //
	output wire   [7:0]        MULTIPLICATION_RESULT,  //
	
	input wire    [7:0]        DIVISION_A,       //
	input wire    [7:0]        DIVISION_B,       //
	output wire   [7:0]        DIVISION_RESULT,  //
	
	//Inputs and Outputs for Logical, Relational and Equality Operators
	
	input wire    [7:0]        LOGICAL_NEGATION_A,       //
	input wire    [7:0]        LOGICAL_NEGATION_B,       //
	output wire   [7:0]        LOGICAL_NEGATION_RESULT,  //
	
	input wire    [7:0]        LOGICAL_AND_A,       //
	input wire    [7:0]        LOGICAL_AND_B,       //
	output wire   [7:0]        LOGICAL_AND_RESULT,  //
	
	input wire    [7:0]        LOGICAL_OR_A,       //
	input wire    [7:0]        LOGICAL_OR_B,       //
	output wire   [7:0]        LOGICAL_OR_RESULT,  //
	
	input wire    [7:0]        GREATER_LESSER_THAN_A,       //
	input wire    [7:0]        GREATER_LESSER_THAN_B,       //
	output wire   [7:0]        GREATER_THAN_RESULT,  //
	output wire   [7:0]        LESSER_THAN_RESULT,
	
	input wire    [7:0]        GREATER_EQUAL_THAN_A,       //
	input wire    [7:0]        GREATER_EQUAL_THAN_B,       //
	output wire   [7:0]        GREATER_EQUAL_THAN_RESULT,  //
	output wire   [7:0]        LESSER_EQUAL_THAN_RESULT,
	
	input wire    [7:0]        EQUALITY_A,       //
	input wire    [7:0]        EQUALITY_B,       //
	output wire   [7:0]        EQUALITY_RESULT,  //
	
	
	input wire    [7:0]        INEQUALITY_A,       //
	input wire    [7:0]        INEQUALITY_B,       //
	output wire   [7:0]        INEQUALITY_RESULT,  //
	
	//Inputs and Outputs for Reduction, Shift and Concatenation Operators
	
	input wire    [7:0]        BITWISE_NEGATION_A,       //
	input wire    [7:0]        BITWISE_NEGATION_B,       //
	output wire   [7:0]        BITWISE_NEGATION_RESULT,  //
	
	input wire    [7:0]        GATE_A,       //
	input wire    [7:0]        GATE_B,       //
	output wire   [7:0]        NAND_RESULT,  //
	output wire   [7:0]        OR_RESULT,  //
	output wire   [7:0]        NOR_RESULT,  //
	output wire   [7:0]        XOR_RESULT,  //
	output wire   [7:0]        XNOR_RESULT,  //
	input wire    [7:0]        SHIFT_OPERATOR, //
	output wire   [7:0]        RIGHT_SHIFT_RESULT,  //
	output wire   [7:0]        LEFT_SHIFT_RESULT,  //
	
	input wire    [7:0]        CONCATENATION_A,       //
	input wire    [7:0]        CONCATENATION_B,       //
	output wire   [7:0]        CONCATENATION_RESULT  //
	
	);

//***************************************************************************
//* Internal Signals and Registers Declarations
//***************************************************************************
       	 
//***************************************************************************
//* 	Signal Assignments	
//***************************************************************************
   //Addition Operator
   assign            ADDITION_RESULT = ADDITION_A + ADDITION_B;

   //Subtraction Operator
   assign            SUBTRACTION_RESULT = SUBTRACTION_A - SUBTRACTION_B;

   //Multiplication Operator
   assign            MULTIPLICATION_RESULT = MULTIPLICATION_A * MULTIPLICATION_B;

   //Division Operator
   assign            DIVISION_RESULT = DIVISION_A / DIVISION_B;
   
   //Logical Negation
   assign            LOGICAL_NEGATION_RESULT[0] = !LOGICAL_NEGATION_A[0];
   assign            LOGICAL_NEGATION_RESULT[1] = !LOGICAL_NEGATION_A[1];
   assign            LOGICAL_NEGATION_RESULT[2] = !LOGICAL_NEGATION_A[2];
   assign            LOGICAL_NEGATION_RESULT[3] = !LOGICAL_NEGATION_A[3];
   assign            LOGICAL_NEGATION_RESULT[4] = !LOGICAL_NEGATION_A[4];
   assign            LOGICAL_NEGATION_RESULT[5] = !LOGICAL_NEGATION_A[5];
   assign            LOGICAL_NEGATION_RESULT[6] = !LOGICAL_NEGATION_A[6];
   assign            LOGICAL_NEGATION_RESULT[7] = !LOGICAL_NEGATION_A[7];
   
   //Logical AND
   assign            LOGICAL_AND_RESULT[0] = LOGICAL_AND_A[0] && LOGICAL_AND_B[0];
   assign            LOGICAL_AND_RESULT[1] = LOGICAL_AND_A[1] && LOGICAL_AND_B[1];
   assign            LOGICAL_AND_RESULT[2] = LOGICAL_AND_A[2] && LOGICAL_AND_B[2];
   assign            LOGICAL_AND_RESULT[3] = LOGICAL_AND_A[3] && LOGICAL_AND_B[3];
   assign            LOGICAL_AND_RESULT[4] = LOGICAL_AND_A[4] && LOGICAL_AND_B[4];
   assign            LOGICAL_AND_RESULT[5] = LOGICAL_AND_A[5] && LOGICAL_AND_B[5];
   assign            LOGICAL_AND_RESULT[6] = LOGICAL_AND_A[6] && LOGICAL_AND_B[6];
   assign            LOGICAL_AND_RESULT[7] = LOGICAL_AND_A[7] && LOGICAL_AND_B[7];
   
   //Logical OR
   assign            LOGICAL_OR_RESULT[0] = LOGICAL_OR_A[0] || LOGICAL_OR_B[0];
   assign            LOGICAL_OR_RESULT[1] = LOGICAL_OR_A[1] || LOGICAL_OR_B[1];
   assign            LOGICAL_OR_RESULT[2] = LOGICAL_OR_A[2] || LOGICAL_OR_B[2];
   assign            LOGICAL_OR_RESULT[3] = LOGICAL_OR_A[3] || LOGICAL_OR_B[3];
   assign            LOGICAL_OR_RESULT[4] = LOGICAL_OR_A[4] || LOGICAL_OR_B[4];
   assign            LOGICAL_OR_RESULT[5] = LOGICAL_OR_A[5] || LOGICAL_OR_B[5];
   assign            LOGICAL_OR_RESULT[6] = LOGICAL_OR_A[6] || LOGICAL_OR_B[6];
   assign            LOGICAL_OR_RESULT[7] = LOGICAL_OR_A[7] || LOGICAL_OR_B[7];
   
   //Greater Or Lesser Than Relational
   assign           GREATER_THAN_RESULT = (GREATER_LESSER_THAN_A > GREATER_LESSER_THAN_B) ? GREATER_LESSER_THAN_A : GREATER_LESSER_THAN_B;
   assign           LESSER_THAN_RESULT = (GREATER_LESSER_THAN_A < GREATER_LESSER_THAN_B) ? GREATER_LESSER_THAN_A : GREATER_LESSER_THAN_B;
   
   //Greater/Lesser OR Equal Relational
   assign           GREATER_EQUAL_THAN_RESULT = (GREATER_EQUAL_THAN_A >= GREATER_EQUAL_THAN_B) ? 8'h00 : 8'hFF;
   assign           LESSER_EQUAL_THAN_RESULT = (GREATER_EQUAL_THAN_A <= GREATER_EQUAL_THAN_B) ? 8'h00 : 8'hFF;
   
   //Equality Relational
   assign           EQUALITY_RESULT = (EQUALITY_A == EQUALITY_B) ? 8'h00 : 8'hFF;
   assign           INEQUALITY_RESULT = (INEQUALITY_A != INEQUALITY_B) ? 8'h00 : 8'hFF;
   
   //Bitwise Negation
   assign           BITWISE_NEGATION_RESULT = ~BITWISE_NEGATION_A;
   
   //NAND Gate
   assign           NAND_RESULT = ~GATE_A & ~GATE_B;
   
   //OR Gate
   assign           OR_RESULT = GATE_A | GATE_B;
  
   //NOR Gate
   assign           NOR_RESULT = ~GATE_A | ~GATE_B;
   
   //XOR Gate
   assign           XOR_RESULT = GATE_A ^ GATE_B;
   
   //XNOR Gate
   assign           XNOR_RESULT = GATE_A ~^ GATE_B;
   
   //Right Shift
   assign           RIGHT_SHIFT_RESULT = GATE_A >> SHIFT_OPERATOR;
   
   //Left Shift
   assign           LEFT_SHIFT_RESULT = GATE_A << SHIFT_OPERATOR;
   
   //Concatenation
   assign           CONCATENATION_RESULT = {CONCATENATION_A[7:4] , CONCATENATION_B[3:0]};
   
   
   
   
    
    endmodule
