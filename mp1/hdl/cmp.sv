import rv32i_types::*;

module cmp(
	input branch_funct3_t cmpop,
	input rv32i_word cmpmux_o,
	input rv32i_word rs1_o,
	output logic br_en
);

logic eql;
logic less;
logic uless;
logic[2:0] cmd;
logic cmp_o;

assign cmd = cmpop;
assign eql = (rs1_o==cmpmux_o);
assign less = ($signed(rs1_o) < $signed(cmpmux_o));
assign uless = (rs1_o < cmpmux_o);

fourmux #(width (1)) cmpmux(
	.select(cmd[2:1]),
	.a(equal),
	.b(1'bx),
	.c(less),
	.d(uless),
	.f(cmp_o)
);

assign br_en = cmd[0]^cmp_o;

endmodule : cmp