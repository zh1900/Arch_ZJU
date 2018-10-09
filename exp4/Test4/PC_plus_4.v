`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:10:54 05/08/2018 
// Design Name: 
// Module Name:    PC_plus_4 
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
module PC_plus_4(i_pc, o_pc);
	parameter N = 32;
	input  wire[N-1:0] i_pc;
	output wire[N-1:0] o_pc;
	assign o_pc = i_pc + 1'b1;  //应该是+1，因为IP核生成的指令内存块地址按字分配
endmodule

