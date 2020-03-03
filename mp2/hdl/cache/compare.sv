module compare(
	input [23:0] tagin,
	input [23:0] tag,
	input valid,
	output logic hit
);

always_comb begin
	if(tagin==tag) hit = valid;
	else hit = 0;
end
endmodule : compare
