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
	input [6:0] SW_in,  //����
	input clk_btn,  //��Ϊ������CPU��ʱ���ź�
	input rst_btn,  //��Ϊ������CPU�������ź�
	input [8:0] PC,  //9λ��PCֵ�������ڴ水�ַ��䣬���ֻ��9λ
	input [31:0] instr,  //32λָ���ֵ
	input [31:0] reg_data,  //��ȡ�ļĴ�����ֵ
	output [4:0] reg_addr,  //��ȡ�ļĴ����ı��
	output reg [31:0] Seg_HEX,  //7���������ʾ������
	output [7:0] Seg_points,  //С������ʾ����
	output [7:0] Seg_LES,  //7�������ʹ��
	output reg [31:0] LED,  //LED��ʾ����
	output clk_out,  //CPUʱ���ź�
	output rst_out  //CPU�����ź�
    );
	
	reg [31:0] clk_count;  //ʱ�Ӽ���
	initial clk_count = 32'b0;
	
	always@(posedge clk_btn)
	begin
		clk_count <= clk_count + 1;
	end
	
	always@*
	begin
		case(SW_in[6:5])
			2'b00: Seg_HEX = reg_data;  //��ʾ�Ĵ�����ֵ
			2'b01: Seg_HEX = reg_data;  //��ʾ�Ĵ�����ֵ
			2'b10: Seg_HEX = {23'b0,PC};  //��ʾPCֵ
			2'b11: Seg_HEX = clk_count;  //��ʾʱ�Ӽ���
		endcase
		//5յLED�����������ǣ�R��LW��SW��BEQ��J
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
