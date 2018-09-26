`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:48:41 04/17/2018 
// Design Name: 
// Module Name:    ALUctr 
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
module ALUctr(
    input [1:0] ALUop,
    input [5:0] Func,
    output reg [2:0] ALUoper
    );

	always@*
	begin
		case(ALUop)
		2'b11:
			begin
				case(Func)
				6'd36:ALUoper=3'b000; //and
				6'd37:ALUoper=3'b001; //or
				6'd39:ALUoper=3'b100; //nor
				6'd32:ALUoper=3'b010; //add
				6'd34:ALUoper=3'b110; //sub
				6'd42:ALUoper=3'b111; //slt
				6'd02:ALUoper=3'b101; //srl
				6'd38:ALUoper=3'b011; //xor
				default: ALUoper=3'b000;
				endcase
			end
		2'b10:
			begin
				case(Func)
				6'd36:ALUoper=3'b000; //and
				6'd37:ALUoper=3'b001; //or
				6'd39:ALUoper=3'b100; //nor
				6'd32:ALUoper=3'b010; //add
				6'd34:ALUoper=3'b110; //sub
				6'd42:ALUoper=3'b111; //slt
				6'd02:ALUoper=3'b101; //srl
				6'd38:ALUoper=3'b011; //xor
				default: ALUoper=3'b000;
				endcase
			end
		2'b01:
			ALUoper = 3'b110;  //beq£¬×ösub
		2'b00:
			ALUoper = 3'b010;  //sw/lw£¬×öadd
		default: ALUoper=3'b000;  
		endcase
	end
endmodule
