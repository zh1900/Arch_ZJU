`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:13:03 05/10/2018 
// Design Name: 
// Module Name:    Single 
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
module Single(
	input clk,
	input rst,
	input [4:0] reg_addr,  //����ģ���ȡ�ļĴ������
	output [31:0] reg_data,  //��������ģ��ļĴ�����ֵ
	output [8:0] PC,
	output [31:0] instr,
	output [31:0] sim  //���ڷ���
    );
reg  [8:0] cur_PC;  //���浱ǰPCֵ�����ڲ���
wire [8:0] i_pc;  //д���PCֵ
wire [8:0] o_pc;  //�����ǰ��PCֵ
wire [8:0] next_pc;  //��һPCֵ��PC+4
wire [31:0] I;  //��ǰPCָ���ָ��
////9�������ź�////
wire [1:0] ALUop;
wire RegDst;
wire RegWrite;
wire Branch;
wire Jump;
wire MemToReg;
wire MemRead;
wire MemWrite;
wire ALUsrc;
/////////////////
wire [4:0] reg_wirte_addr;  //д��ļĴ�����ַ
wire [31:0] ra_data;  //�Ĵ���A������
wire [31:0] rb_data;  //�Ĵ���B������
wire [31:0] sign_extend_data;  //������չ�������
wire [31:0] ALU_B_src;  //ALU�ĵڶ���������
wire [2:0] ALU_oper;  //����ALU�Ŀ�����
wire [31:0] ALU_res;  //ALU������
wire zero;  //ALU���Ϊ0��־λ
wire overflow;  //ALU�����־λ
wire [31:0] mem_data;  //�ڴ��������
wire [31:0] r_write_data;  //�Ĵ���д������
wire [31:0] branch_pc;  //��ָ֧��Ӧ����ת��PCֵ,��23λ��Ч
wire [8:0] branch_out_pc;  //��ָ֧��Ƚ�֮���PCֵ

assign instr = I;
assign PC = cur_PC;
assign sim = ALU_res;  //���ڷ���

initial cur_PC = 9'b111111111;
always@(posedge clk) cur_PC <= o_pc;
//PC�Ĵ���
PC_reg #(.N(9)) pc_reg(
	.clk(~clk),  //�ڸ�����д�룬ʹ���¸�������ʱ����ȷ����ָ���ڴ���е�����
	.rst(rst), 
	.i_pc(i_pc), 
	.o_pc(o_pc));
//PC+4 ALU
PC_plus_4 #(.N(9)) pc_plus_4(
	.i_pc(o_pc), 
	.o_pc(next_pc));
//ָ���ڴ��
instr_block iblock(
	.clka(clk),
	.addra(o_pc),
	.douta(I));
//RegDst�źſ��Ƶ�MUX
MUX_M #(.N(5)) RegDstMUX(
	.A(I[20:16]), 
	.B(I[15:11]), 
	.Ctrl(RegDst), 
	.S(reg_wirte_addr));
//�Ĵ�����
Regs regs(
	.clk(clk), 
	.rst(rst), 
	.reg_R_addr_A(I[25:21]), 
	.reg_R_addr_B(I[20:16]), 
	.reg_R_addr_C(reg_addr),  //���ڲ���
	.reg_W_addr(reg_wirte_addr), 
	.wdata(r_write_data), 
	.reg_we(RegWrite),
   .rdata_A(ra_data),
	.rdata_B(rb_data),
	.rdata_C(reg_data));  //���ڲ���
//������
SingleCtrl control(
    .OP(I[31:26]),
    .ALUop(ALUop),
    .RegDst(RegDst),
    .RegWrite(RegWrite),
    .Branch(Branch),
    .Jump(Jump),
    .MemToReg(MemToReg),
    .MemRead(MemRead),
    .MemWrite(MemWrite),
    .ALUsrc(ALUsrc));
//������չ
SignExt signextend(
	.i_16(I[15:0]), 
	.o_32(sign_extend_data));
//ALUsrc�źſ��Ƶ�MUX
MUX_M ALUsrcMUX(
	.A(rb_data), 
	.B(sign_extend_data), 
	.Ctrl(ALUsrc), 
	.S(ALU_B_src));
//ALU������
ALUctr ALUcontrol(
   .ALUop(ALUop),
   .Func(I[5:0]),
   .ALUoper(ALU_oper));
//��ALU
alu ALU(
	.A(ra_data), 
	.B(ALU_B_src), 
	.ALU_operation(ALU_oper), 
	.res(ALU_res), 
	.zero(zero), 
	.overflow(overflow));
//�����ڴ��
dat_block dblock(
	.clka(~clk),  //Ϊ����һ�������ڶ������ݣ���Ϊ�����ش���
	.wea(MemWrite),  //��д����
	.addra(ALU_res[8:0]),  //���������ڴ�飨Data Memory������ַ�ǰ��ַ��䣬����ֱ��ȡ��9λ����Ҫ��֤LWָ����SWָ���ƫ������ȷ��
	.dina(rb_data),
	.douta(mem_data));
//MemToReg�źſ��Ƶ�MUX
MUX_M MemToRegMUX(
	.A(ALU_res), 
	.B(mem_data), 
	.Ctrl(MemToReg), 
	.S(r_write_data));
//beq��֧ALU
Adder adder(
	.i_op1({23'b0,next_pc}), 
	.i_op2(sign_extend_data),  //����������λ����Ϊָ���ڴ�飨Instruction Memory������ַ�ǰ��ַ���
	.o_out(branch_pc));
//Branch�źſ��Ƶ�MUX
MUX_M #(.N(9)) BranchMUX(
	.A(next_pc), 
	.B(branch_pc[8:0]), 
	.Ctrl(Branch&zero), 
	.S(branch_out_pc));	
//Jump�źſ��Ƶ�MUX
MUX_M #(.N(9)) JumpMUX(
	.A(branch_out_pc), 
	.B(I[8:0]),  //����ָ���ڴ�飨Instruction Memory������ַ�ǰ��ַ��䣬����ֱ��ȡ��תָ���9λ��Ҳ���ó�4 ����Ҫ��֤Jָ���addr������ȷ��
	.Ctrl(Jump), 
	.S(i_pc));	
endmodule
