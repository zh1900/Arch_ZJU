`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:10:37 05/11/2018 
// Design Name: 
// Module Name:    TestModule 
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
module TestModule(
	input [6:0] SW_in,  //开关
	input clk_btn,  //作为单周期CPU的时钟信号
	input rst_btn,  //作为单周期CPU的重置信号
	input [8:0] PC,  //9位的PC值，由于内存按字分配，因此只有9位
	input [31:0] instr,  //32位指令的值
	input [31:0] reg_data,  //读取的寄存器的值
	output [4:0] reg_addr,  //读取的寄存器的编号
	output reg [31:0] Seg_HEX,  //7段数码管显示的内容
	output [7:0] Seg_points,  //小数点显示内容
	output [7:0] Seg_LES,  //7段数码管使能
	output reg [31:0] LED,  //LED显示内容
	output clk_out,  //CPU时钟信号
	output rst_out  //CPU重置信号
    );
	
	reg [31:0] clk_count;  //时钟计数
	initial clk_count = 32'b0;
	
	always@(posedge clk_btn)
	begin
		clk_count <= clk_count + 1;
	end
	
	always@*
	begin
		case(SW_in[6:5])
			2'b00: Seg_HEX = reg_data;  //显示寄存器的值
			2'b01: Seg_HEX = reg_data;  //显示寄存器的值
			2'b10: Seg_HEX = {23'b0,PC};  //显示PC值
			2'b11: Seg_HEX = clk_count;  //显示时钟计数
		endcase
		//5盏LED从左到右依次是：R，LW，SW，BEQ，J
		case(instr[31:26])
			6'b000000: LED = 1'b1 << 6;  //R
			6'b100011: LED = 1'b1 << 5;  //LW
			6'b101011: LED = 1'b1 << 4;  //SW
			6'b000100: LED = 1'b1 << 3;  //BEQ
			6'b000010: LED = 1'b1 << 2;  //J
			default: LED = 32'b0;
		endcase
	end
	
	assign reg_addr = SW_in[4:0];
	assign Seg_points = 8'b0;
	assign Seg_LES = 8'b0;
	assign clk_out = clk_btn;
	assign rst_out = rst_btn;
	
endmodule
