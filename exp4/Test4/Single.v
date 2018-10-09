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
	input [4:0] reg_addr,  //调试模块读取的寄存器编号
	output [31:0] reg_data,  //传给调试模块的寄存器的值
	output [8:0] PC,
	output [31:0] instr,
	output [31:0] sim  //用于仿真
    );
reg  [8:0] cur_PC;  //保存当前PC值，用于测试
wire [8:0] i_pc;  //写入的PC值
wire [8:0] o_pc;  //输出当前的PC值
wire [8:0] next_pc;  //下一PC值，PC+4
wire [31:0] I;  //当前PC指向的指令
////9个控制信号////
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
wire [4:0] reg_wirte_addr;  //写入的寄存器地址
wire [31:0] ra_data;  //寄存器A的数据
wire [31:0] rb_data;  //寄存器B的数据
wire [31:0] sign_extend_data;  //符号扩展后的数据
wire [31:0] ALU_B_src;  //ALU的第二个运算数
wire [2:0] ALU_oper;  //传给ALU的控制码
wire [31:0] ALU_res;  //ALU计算结果
wire zero;  //ALU结果为0标志位
wire overflow;  //ALU溢出标志位
wire [31:0] mem_data;  //内存读出数据
wire [31:0] r_write_data;  //寄存器写入数据
wire [31:0] branch_pc;  //分支指令应该跳转的PC值,高23位无效
wire [8:0] branch_out_pc;  //分支指令比较之后的PC值

assign instr = I;
assign PC = cur_PC;
assign sim = ALU_res;  //用于仿真

initial cur_PC = 9'b111111111;
always@(posedge clk) cur_PC <= o_pc;
//PC寄存器
PC_reg #(.N(9)) pc_reg(
	.clk(~clk),  //在负边沿写入，使得下个正边沿时能正确读出指令内存块中的数据
	.rst(rst), 
	.i_pc(i_pc), 
	.o_pc(o_pc));
//PC+4 ALU
PC_plus_4 #(.N(9)) pc_plus_4(
	.i_pc(o_pc), 
	.o_pc(next_pc));
//指令内存块
instr_block iblock(
	.clka(clk),
	.addra(o_pc),
	.douta(I));
//RegDst信号控制的MUX
MUX_M #(.N(5)) RegDstMUX(
	.A(I[20:16]), 
	.B(I[15:11]), 
	.Ctrl(RegDst), 
	.S(reg_wirte_addr));
//寄存器堆
Regs regs(
	.clk(clk), 
	.rst(rst), 
	.reg_R_addr_A(I[25:21]), 
	.reg_R_addr_B(I[20:16]), 
	.reg_R_addr_C(reg_addr),  //用于测试
	.reg_W_addr(reg_wirte_addr), 
	.wdata(r_write_data), 
	.reg_we(RegWrite),
   .rdata_A(ra_data),
	.rdata_B(rb_data),
	.rdata_C(reg_data));  //用于测试
//控制器
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
//符号扩展
SignExt signextend(
	.i_16(I[15:0]), 
	.o_32(sign_extend_data));
//ALUsrc信号控制的MUX
MUX_M ALUsrcMUX(
	.A(rb_data), 
	.B(sign_extend_data), 
	.Ctrl(ALUsrc), 
	.S(ALU_B_src));
//ALU控制器
ALUctr ALUcontrol(
   .ALUop(ALUop),
   .Func(I[5:0]),
   .ALUoper(ALU_oper));
//主ALU
alu ALU(
	.A(ra_data), 
	.B(ALU_B_src), 
	.ALU_operation(ALU_oper), 
	.res(ALU_res), 
	.zero(zero), 
	.overflow(overflow));
//数据内存块
dat_block dblock(
	.clka(~clk),  //为了在一个周期内读出数据，改为负边沿触发
	.wea(MemWrite),  //不写即读
	.addra(ALU_res[8:0]),  //由于数据内存块（Data Memory）读地址是按字分配，所以直接取后9位（需要保证LW指令与SW指令的偏移量正确）
	.dina(rb_data),
	.douta(mem_data));
//MemToReg信号控制的MUX
MUX_M MemToRegMUX(
	.A(ALU_res), 
	.B(mem_data), 
	.Ctrl(MemToReg), 
	.S(r_write_data));
//beq分支ALU
Adder adder(
	.i_op1({23'b0,next_pc}), 
	.i_op2(sign_extend_data),  //不再左移两位，因为指令内存块（Instruction Memory）读地址是按字分配
	.o_out(branch_pc));
//Branch信号控制的MUX
MUX_M #(.N(9)) BranchMUX(
	.A(next_pc), 
	.B(branch_pc[8:0]), 
	.Ctrl(Branch&zero), 
	.S(branch_out_pc));	
//Jump信号控制的MUX
MUX_M #(.N(9)) JumpMUX(
	.A(branch_out_pc), 
	.B(I[8:0]),  //由于指令内存块（Instruction Memory）读地址是按字分配，所以直接取跳转指令后9位，也不用乘4 （需要保证J指令的addr参数正确）
	.Ctrl(Jump), 
	.S(i_pc));	
endmodule
