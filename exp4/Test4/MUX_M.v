`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:07:07 05/08/2018 
// Design Name: 
// Module Name:    MUX_M 
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
module MUX_M(A, B, Ctrl, S);
	parameter N=32;
	input  wire[N-1:0] A, B;
	output wire[N-1:0] S;
	input wire Ctrl;
	assign S = (Ctrl == 1'b0) ? A:B ;
endmodule
