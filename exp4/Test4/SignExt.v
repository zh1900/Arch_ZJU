`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:14:05 05/08/2018 
// Design Name: 
// Module Name:    SignExt 
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
module SignExt(i_16, o_32);
	input  wire[15:0] i_16;
	output reg [31:0] o_32;
	always @(i_16)
		o_32 <= {{16{i_16[15]}}, i_16[15:0]}; 
endmodule
