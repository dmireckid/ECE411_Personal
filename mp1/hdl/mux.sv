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

module eightmux #(parameter width=32)(
	input [2:0] select,
	input [width-1:0] a,b,c,d,e,f,g,h,
	output logic [width-1:0] i
);

always_comb
begin
	if(select==0) i=a;
	else if(select==1) i=b;
	else if(select==2) i=c;
	else if(select==4) i=d;
	else if(select==5) i=e;
	else if(select==6) i=f;
	else if(select==7) i=g;
	else i=h;
end
endmodule : eightmux

module sixmux #(parameter width=32)(
	input [3:0] select,
	input [width-1:0] a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,
	output logic [width-1:0] q
);

always_comb
begin
	if(select==0) q=a;
	else if(select==1) q=b;
	else if(select==2) q=c;
	else if(select==3) q=d;
	else if(select==4) q=e;
	else if(select==5) q=f;
	else if(select==6) q=g;
	else if(select==7) q=h;
	else if(select==8) q=i;
	else if(select==9) q=j;
	else if(select==10) q=k;
	else if(select==11) q=l;
	else if(select==12) q=m;
	else if(select==13) q=n;
	else if(select==14) q=o;
	else q=h;
end
endmodule : sixmux
