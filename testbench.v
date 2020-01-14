`include "mux.v"

module muxtestbench;
reg I1,I2,I3,I4,S0,S1;
wire op;
MUX a(S0,S1,I1,I2,I3,I4,op);
initial
begin
	I1=1;I2=1;I3=0;I4=0;
	S0=0;
	S1=1;
end
initial
begin
	$monitor("input %b%b%b%b  select %b%b :- Output %b",I1,I2,I3,I4,S0,S1,op);
end
endmodule