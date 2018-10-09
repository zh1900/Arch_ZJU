`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:53:37 04/17/2018 
// Design Name: 
// Module Name:    SingleCtrl 
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
module SingleCtrl(
    input [5:0] OP,
    output [1:0] ALUop,
    output RegDst,
    output RegWrite,
    output Branch,
    output Jump,
    output MemToReg,
    output MemRead,
    output MemWrite,
    output ALUsrc
    );

	wire R, LW, SW, BEQ;
	assign R = ~OP[0]&~OP[1]&~OP[2]&~OP[3]&~OP[4]&~OP[5];
	assign LW = OP[0]& OP[1]&~OP[2]&~OP[3]&~OP[4]& OP[5];
	assign SW = OP[0]& OP[1]&~OP[2]& OP[3]&~OP[4]& OP[5];
	assign BEQ = ~OP[0]&~OP[1]& OP[2]&~OP[3]&~OP[4]&~OP[5];
	assign Jump = ~OP[0]& OP[1]&~OP[2]&~OP[3]&~OP[4]&~OP[5];
	assign ALUop = {R, BEQ};
	assign RegDst = R;
	assign RegWrite = R | LW;
	assign Branch = BEQ;
	assign MemToReg = LW;
	assign MemRead = LW;
	assign MemWrite = SW;
	assign ALUsrc = LW | SW;

endmodule
