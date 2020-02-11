`define BAD_MUX_SEL $fatal("%0t %s %0d: Illegal mux select", $time, `__FILE__, `__LINE__)

import rv32i_types::*;

module datapath
(
    input clk,
    input rst,
    input load_pc,
    input load_ir,
    input load_regfile,
    input load_mar,
    input load_mdr,
    input load_data_out,
    input pcmux::pcmux_sel_t pcmux_sel,
    input alumux::alumux1_sel_t alumux1_sel,
    input alumux::alumux2_sel_t alumux2_sel,
    input regfilemux::regfilemux_sel_t regfilemux_sel,
    input marmux::marmux_sel_t marmux_sel,
    input cmpmux::cmpmux_sel_t cmpmux_sel,
    input alu_ops aluop,
    input branch_funct3_t cmpop,
    input rv32i_word mem_rdata,
    output rv32i_word mem_wdata, // signal used by RVFI Monitor
    output rv32i_word mem_address,
    output rv32i_opcode opcode,
    output [2:0] funct3,
    output [6:0] funct7,
    output br_en
);

/******************* Signals Needed for RVFI Monitor *************************/
rv32i_reg rs1;
rv32i_reg rs2;
rv32i_reg rd;
rv32i_word rs1_out;
rv32i_word rs2_out;
rv32i_word i_imm;
rv32i_word u_imm;
rv32i_word b_imm;
rv32i_word s_imm;
rv32i_word j_imm;
rv32i_word pcmux_out;
rv32i_word alumux1_out;
rv32i_word alumux2_out;
rv32i_word regfilemux_out;
rv32i_word marmux_out;
rv32i_word cmpmux_out;
rv32i_word alu_out;
rv32i_word pc_out;
rv32i_word pc_plus4_out;
rv32i_word mdrreg_out;
rv32i_word zext_br;

assign pc_plus4_out = pc_out+4;
assign zext_br = {31'd0, br_en};
assign alu_mod2 = {alu_out[31:1], 1'b0};
/*****************************************************************************/


/***************************** Registers *************************************/
// Keep Instruction register named `IR` for RVFI Monitor
ir IR(
    .clk(clk),
    .rst(rst),
    .load(load_ir),
    .in(mdrreg_out),
    .funct3(funct3),
    .funct7(funct7),
    .opcode(opcode),
    .i_imm(i_imm),
    .s_imm(s_imm),
    .b_imm(b_imm),
    .u_imm(u_imm),
    .j_imm(j_imm),
    .rs1(rs1),
    .rs2(rs2),
    .rd(rd)
);

register MDR(
    .clk  (clk),
    .rst (rst),
    .load (load_mdr),
    .in   (mem_rdata),
    .out  (mdrreg_out)
);

register MAR(
    .clk(clk),
    .rst(rst),
    .load(load_mar),
    .in(marmux_out),
    .out(mem_address)
);

alu ALU(
    .aluop(aluop),
    .a(alumux1_out),
    .b(alumux2_out),
    .f(alu_out)
);

pc_register PC(
    .clk(clk),
    .rst(rst),
    .load(load_pc),
    .in(pcmux_out),
    .out(pc_out)
);

regfile regfile(
    .clk(clk),
    .rst(rst),
    .load(load_regfile),
    .in(regfilemux_out),
    .src_a(rs1),
    .src_b(rs2),
    .dest(rd),
    .reg_a(rs1_out),
    .reg_b(rs2_out)
);

cmp CMP(
    .cmpop(cmpop),
    .cmpmux_o(cmpmux_out),
    .rs1_o(rs1_out),
    .br_en(br_en)
);

register MEM_DATA_OUT(
    .clk(clk),
	.rst(rst),
    .load(load_data_out),
    .in(rs2_out),
    .out(mem_wdata)
);



/*****************************************************************************/

/******************************* ALU and CMP *********************************/
/*****************************************************************************/

/******************************** Muxes **************************************/
always_comb begin : MUXES
    // We provide one (incomplete) example of a mux instantiated using
    // a case statement.  Using enumerated types rather than bit vectors
    // provides compile time type safety.  Defensive programming is extremely
    // useful in SystemVerilog.  In this case, we actually use 
    // Offensive programming --- making simulation halt with a fatal message
    // warning when an unexpected mux select value occurs
    //unique case (pcmux_sel)
    //    pcmux::pc_plus4: pcumux_out = pc_out + 4;
        // etc.
    //    default: `BAD_MUX_SEL;
    //endcase
end

fourmux pcmux(
    .select(pcmux_sel),
    .a(pc_plus4_out),
    .b(alu_out),
	.c(alu_mod2),
	.d(),
    .f(pcmux_out)
);

twomux alumux1(
    .select(alumux1_sel),
    .a(rs1_out),
    .b(pc_out),
    .f(alumux1_out)
);

eightmux alumux2(
    .select(alumux2_sel),
    .a(i_imm),
    .b(u_imm),
    .c(b_imm),
    .d(s_imm),
	.e(rs2_out),
	.f(j_imm),
	.g(),
	.h(),
    .i(alumux2_out)
);

twomux cmpmux(
    .select(cmpmux_sel),
    .a(rs2_out),
    .b(i_imm),
    .f(cmpmux_out)
);

twomux marmux(
    .select(marmux_sel),
    .a(pc_out),
    .b(alu_out),
    .f(marmux_out)
);

sixmux regfilemux(
    .select(regfilemux_sel),
    .a(alu_out),
    .b(zext_br),
    .c(u_imm),
	.d(mdrreg_out),
	.e(pc_plus4_out),
    .f({{17{mdrreg_out[15]}},mdrreg_out[14:0]}),
	.g({16'd0, mdrreg_out[15:0]}),
    .h({{25{mdrreg_out[7]}}, mdrreg_out[6:0]}),
	.i({24'd0, mdrreg_out[7:0]}),
	.j(),
	.k(),
	.l(),
	.m(),
	.n(),
	.o(),
	.p(),
	.q(regfilemux_out)
);

/*****************************************************************************/
endmodule : datapath
