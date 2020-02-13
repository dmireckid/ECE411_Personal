import rv32i_types::*; /* Import types defined in rv32i_types.sv */

module control
(
    input clk,
    input rst,
    input rv32i_opcode opcode,
    input logic [2:0] funct3,
    input logic [6:0] funct7,
    input br_en,
    //input logic [4:0] rs1,
    //input logic [4:0] rs2,
	input mem_resp,
    output pcmux::pcmux_sel_t pcmux_sel,
    output alumux::alumux1_sel_t alumux1_sel,
    output alumux::alumux2_sel_t alumux2_sel,
    output regfilemux::regfilemux_sel_t regfilemux_sel,
    output marmux::marmux_sel_t marmux_sel,
    output cmpmux::cmpmux_sel_t cmpmux_sel,
    output alu_ops aluop,
    output logic load_pc,
    output logic load_ir,
    output logic load_regfile,
    output logic load_mar,
    output logic load_mdr,
    output logic load_data_out,
    output logic mem_read,
    output logic mem_write,
    output rv32i_mem_wmask mem_byte_enable,
	output branch_funct3_t cmpop
);

/***************** USED BY RVFIMON --- ONLY MODIFY WHEN TOLD *****************/
logic trap;
logic [4:0] rs1_addr, rs2_addr;
logic [3:0] rmask, wmask;
logic [4:0] rs1;
logic [4:0] rs2;

branch_funct3_t branch_funct3;
store_funct3_t store_funct3;
load_funct3_t load_funct3;
arith_funct3_t arith_funct3;

assign arith_funct3 = arith_funct3_t'(funct3);
assign branch_funct3 = branch_funct3_t'(funct3);
assign load_funct3 = load_funct3_t'(funct3);
assign store_funct3 = store_funct3_t'(funct3);
assign rs1_addr = rs1;
assign rs2_addr = rs2;

always_comb
begin : trap_check
    trap = 0;
    rmask = '0;
    wmask = '0;

    case (opcode)
        op_lui, op_auipc, op_imm, op_reg, op_jal, op_jalr:;

        op_br: begin
            case (branch_funct3)
                beq, bne, blt, bge, bltu, bgeu:;
                default: trap = 1;
            endcase
        end

        op_load: begin
            case (load_funct3)
                lw: rmask = 4'b1111;
                lh, lhu: rmask = 4'b0011 /* Modify for MP1 Final */ ;
                lb, lbu: rmask = 4'b0001 /* Modify for MP1 Final */ ;
                default: trap = 1;
            endcase
        end

        op_store: begin
            case (store_funct3)
                sw: wmask = 4'b1111;
                sh: wmask = 4'b0011 /* Modify for MP1 Final */ ;
                sb: wmask = 4'b0001 /* Modify for MP1 Final */ ;
                default: trap = 1;
            endcase
        end

        default: trap = 1;
    endcase
end
/*****************************************************************************/

enum int unsigned {
    /* List of states */
    fetch1,
    fetch2,
    fetch3,
    decode,
    imm,
    regreg,
    lui,
    calc_addr,
    ld1,
    ld2,
    st1,
    st2,
    auipc,
    br,
	jal,
	jalr
} state, next_state;

/************************* Function Definitions *******************************/
/**
 *  You do not need to use these functions, but it can be nice to encapsulate
 *  behavior in such a way.  For example, if you use the `loadRegfile`
 *  function, then you only need to ensure that you set the load_regfile bit
 *  to 1'b1 in one place, rather than in many.
 *
 *  SystemVerilog functions must take zero "simulation time" (as opposed to 
 *  tasks).  Thus, they are generally synthesizable, and appropraite
 *  for design code.  Arguments to functions are, by default, input.  But
 *  may be passed as outputs, inouts, or by reference using the `ref` keyword.
**/

/**
 *  Rather than filling up an always_block with a whole bunch of default values,
 *  set the default values for controller output signals in this function,
 *   and then call it at the beginning of your always_comb block.
**/
function void set_defaults();
    load_pc = 1'b0;
    load_ir = 1'b0;
    load_regfile = 1'b0;
    load_mar = 1'b0;
    load_mdr = 1'b0;
    load_data_out = 1'b0;
    pcmux_sel = pcmux::pc_plus4;
    alumux1_sel = alumux::rs1_out;
    alumux2_sel = alumux::i_imm;
    regfilemux_sel = regfilemux::alu_out;
    marmux_sel = marmux::pc_out;
    cmpmux_sel = cmpmux::rs2_out;
    cmpop = branch_funct3_t'(funct3);
    aluop = alu_ops'(funct3);
    mem_read = 1'b0;
    mem_write = 1'b0;
    mem_byte_enable = 4'b1111;
	rs1 = 5'b0;
	rs2 = 5'b0;

endfunction

/**
 *  Use the next several functions to set the signals needed to
 *  load various registers
**/
function void loadPC(pcmux::pcmux_sel_t sel);
    load_pc = 1'b1;
    pcmux_sel = sel;
endfunction

function void loadRegfile(regfilemux::regfilemux_sel_t sel);
endfunction

function void loadMAR(marmux::marmux_sel_t sel);
endfunction

function void loadMDR();
endfunction

/**
 * SystemVerilog allows for default argument values in a way similar to
 *   C++.
**/
function void setALU(alumux::alumux1_sel_t sel1,
                               alumux::alumux2_sel_t sel2,
                               logic setop = 1'b0, alu_ops op = alu_add);
    /* Student code here */


    if (setop)
        aluop = op; // else default value
endfunction

function automatic void setCMP(cmpmux::cmpmux_sel_t sel, branch_funct3_t op);
endfunction

/*****************************************************************************/

    /* Remember to deal with rst signal */

always_comb
begin : state_actions
    /* Default output assignments */
    set_defaults();
    /* Actions for each state */
    case(state)
        fetch1:
            begin
            load_mar = 1;
            end
        fetch2:
            begin
            load_mdr = 1;
            mem_read = 1;
            end
        fetch3:
            begin
            load_ir = 1;
            end
        decode:
        auipc:
            begin
            load_regfile = 1;
            alumux1_sel = alumux::pc_out;
            alumux2_sel = alumux::u_imm;
            aluop = alu_add;
            load_pc = 1;
            end
        imm:
            begin
            if(arith_funct3 == slt)
                begin
                load_regfile = 1;
                load_pc = 1;
                cmpop = blt;
                regfilemux_sel = regfilemux::br_en;
                cmpmux_sel = cmpmux::i_imm;
                //rs1_addr = rs1;
                end

            else if(arith_funct3 == sltu)
                begin
                load_regfile = 1;
                load_pc = 1;
                cmpop = bltu;
                regfilemux_sel = regfilemux::br_en;
                cmpmux_sel = cmpmux::i_imm;
                //rs1_addr = rs1;
                end

            else if((arith_funct3 == sr) && (funct7 == 7'b0100000))
                begin
                load_regfile = 1;
                load_pc = 1;
                aluop = alu_sra;
                //rs1_addr = rs1;
                end

            else
                begin
                load_regfile = 1;
                load_pc = 1;
                aluop = alu_ops'(funct3);
                //rs1_addr = rs1;
                end
            end
        br:
            begin
            pcmux_sel = pcmux::pcmux_sel_t'(br_en);
            load_pc = 1;
            alumux1_sel = alumux::pc_out;
            alumux2_sel = alumux::b_imm;
            aluop = alu_add;
            //rs1_addr = rs1;
            //rs2_addr = rs2;
            end
        lui:
            begin
            load_regfile = 1;
            load_pc = 1;
            regfilemux_sel = regfilemux::u_imm;
            //rs1_addr = rs1;
            end
        calc_addr:
            begin
            
            if(opcode == op_load)
                begin
                aluop = alu_add;
                load_mar = 1;
                marmux_sel = marmux::alu_out;
                end

            else if(opcode == op_store)
                begin
                alumux2_sel = alumux::s_imm;
                aluop = alu_add;
                load_mar = 1;
                load_data_out = 1;
                marmux_sel = marmux::alu_out;
                end
            end
        ld1:
            begin
            load_mdr = 1;
            mem_read = 1;
            end
        ld2:
            begin
			if(load_funct3 == lw) regfilemux_sel = regfilemux::lw;
			else if(load_funct3 == lh) regfilemux_sel = regfilemux::lh;
			else if(load_funct3 == lhu) regfilemux_sel = regfilemux::lhu;
			else if(load_funct3 == lb) regfilemux_sel = regfilemux::lb;
			else if(load_funct3 == lbu) regfilemux_sel = regfilemux::lbu;
            load_regfile = 1;
            load_pc = 1;
            //rs1_addr = rs1;
            end
        st1:
            begin
			if(store_funct3 == sb) mem_byte_enable = 4'b0001;
			else if(store_funct3 == sh) mem_byte_enable = 4'b0011;
			else mem_byte_enable = 4'b1111;
            mem_write = 1;
            end
        st2:
            begin
            load_pc = 1;
            //rs1_addr = rs1;
            //rs2_addr = rs2;
            end
        regreg:
            begin
            if(arith_funct3 == slt)
                begin
                load_regfile = 1;
                load_pc = 1;
                cmpop = blt;
                regfilemux_sel = regfilemux::br_en;
                cmpmux_sel = cmpmux::rs2_out;
                alumux2_sel = alumux::j_imm;
                //rs1_addr = rs1;
                end

            else if(arith_funct3 == sltu)
                begin
                load_regfile = 1;
                load_pc = 1;
                cmpop = bltu;
                regfilemux_sel = regfilemux::br_en;
                cmpmux_sel = cmpmux::i_imm;
                alumux2_sel = alumux::j_imm;
                //rs1_addr = rs1;
                end

            else if(arith_funct3 == sr)
                begin
                load_regfile = 1;
                load_pc = 1;
                if(funct7 == 7'b0100000)
                    aluop = alu_sra;
                else
                    aluop = alu_srl;
                //rs1_addr = rs1;
                end

            else if(arith_funct3 == add)
                begin
                load_regfile = 1;
                load_pc = 1;
                if(funct7 == 7'b0100000)
                    aluop = alu_sub;
                else
                    aluop = alu_add;
                end

            else
                begin
                load_regfile = 1;
                load_pc = 1;
                aluop = alu_ops'(funct3);
                //rs1_addr = rs1;
                end
            end
		jal:
			begin
			load_pc = 1;
			load_regfile = 1;
			regfilemux_sel = regfilemux::pc_plus4;
			alumux1_sel = alumux::pc_out;
			alumux2_sel = alumux::j_imm;
			pcmux_sel = pcmux::alu_out;
			aluop = alu_add;
			end
		jalr:
			begin
			load_pc = 1;
			load_regfile = 1;
			regfilemux_sel = regfilemux::pc_plus4;
			alumux1_sel = alumux::rs1_out;
			alumux2_sel = alumux::i_imm;
			pcmux_sel = pcmux::alu_mod2;
			aluop = alu_add;
			end
        default: ;
    endcase

end

always_comb
begin : next_state_logic
    /* Next state information and conditions (if any)
     * for transitioning between states */
     next_state = state;
     case(state)
        fetch1: 
            next_state = fetch2;
        fetch2: 
			if(mem_resp) next_state = fetch3;
        fetch3:
            next_state = decode;
        decode:
            begin
            case(opcode)
                op_lui: next_state = lui;
                op_auipc: next_state = auipc;

                op_br: next_state = br;
                op_load: next_state = calc_addr;
                op_store: next_state = calc_addr;
                op_imm: next_state = imm;
                op_reg: next_state = regreg;
				op_jal : next_state = jal;
				op_jalr : next_state = jalr;
                default:
                    begin
                    end
            endcase
            end
        lui:
            next_state = fetch1;
        auipc:
            next_state = fetch1;
        br:
            next_state = fetch1;
        ld1:
            if(mem_resp) next_state = ld2;
        ld2:
            next_state = fetch1;
        st1:
            if(mem_resp) next_state = st2;
        st2:
            next_state = fetch1;
        imm:
            next_state = fetch1;
        regreg:
            next_state = fetch1;
		jal:
			next_state = fetch1;
		jalr:
			next_state = fetch1;
        default:
            next_state = fetch1;

     endcase
end

always_ff @(posedge clk)
begin: next_state_assignment
    /* Assignment of next state on clock edge */
    state <= next_state;
end

endmodule : control
