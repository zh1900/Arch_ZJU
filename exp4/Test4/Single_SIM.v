`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:49:23 05/15/2018
// Design Name:   Single
// Module Name:   E:/CS Homework/Computer Organization and Design/Test4/Single_SIM.v
// Project Name:  Test4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Single
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Single_SIM;

	// Inputs
	reg clk;
	reg rst;
	reg [4:0] reg_addr;

	// Outputs
	wire [31:0] reg_data;
	wire [8:0] PC;
	wire [31:0] instr;
	wire [31:0] sim;
	// Instantiate the Unit Under Test (UUT)
	Single uut (
		.clk(clk), 
		.rst(rst), 
		.reg_addr(reg_addr), 
		.reg_data(reg_data), 
		.PC(PC), 
		.instr(instr),
		.sim(sim)
	);

	initial begin
		clk = 0;
		rst = 0;
		reg_addr = 0;
	end
	always
	begin
		#10
		clk=~clk;
	end
      
endmodule

