`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:12:20 05/08/2018 
// Design Name: 
// Module Name:    PC_reg 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module PC_reg(clk, rst, i_pc, o_pc);
parameter N = 32;
	initial t_pc = 0;
	input wire clk, rst;
	input  wire[N-1:0] i_pc;
	output wire[N-1:0] o_pc;
	        reg[N-1:0] t_pc;
	assign o_pc = rst ? {N{1'b1}}:t_pc;
	always @(posedge clk)
	t_pc <= i_pc; 
endmodule
