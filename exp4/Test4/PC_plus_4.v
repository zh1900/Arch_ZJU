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
	assign o_pc = i_pc + 1'b1;  //Ӧ����+1����ΪIP�����ɵ�ָ���ڴ���ַ���ַ���
endmodule

