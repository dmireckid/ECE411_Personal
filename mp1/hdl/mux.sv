module twomux #(parameter width=32)(
	input select,
	input [width-1:0] a,
	input [width-1:0] b,
	output logic [width-1:0] f
);

always_comb
begin
	if(select==0) f=a;
	else f=b;
end
endmodule : twomux

module fourmux #(parameter width=32)(
	input [1:0] select,
	input [width-1:0] a,
	input [width-1:0] b,
	input [width-1:0] c,
	input [width-1:0] d,
	output logic [width-1:0] f
);

always_comb
begin
	if(select==0) f=a;
	else if(select==1) f=b;
	else if(select==2) f=c;
	else f=d;
end
endmodule : fourmux
