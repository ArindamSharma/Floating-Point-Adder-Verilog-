module MUX4(S0,S1,I1,I2,I3,I4,op);
	input S0,S1;
	input I1,I2,I3,I4;
	output op;
	assign op=I4&S0&S1 | I3&S0&!S1 | I2&!S0&S1 | I1&!S0&!S1 ;
	// assign op=( I1 & (S0 & S1) | I2 & (S0 & !S1) | I3 & (!S0 & S1) | I4 & (!S0 & !S1) ;
endmodule

module MUX16(S,I,op);
	input[3:0] S;
	input[15:0] I;
	output op;
	wire[3:0] w;
	MUX4 M0(S[1],S[0],I[0],I[1],I[2],I[3],w[0]);
	MUX4 M1(S[1],S[0],I[4],I[5],I[6],I[7],w[1]);
	MUX4 M2(S[1],S[0],I[8],I[9],I[10],I[11],w[2]);
	MUX4 M3(S[1],S[0],I[12],I[13],I[14],I[15],w[3]);

	MUX4 M4(S[3],S[2],w[0],w[1],w[2],w[3],op);
	
endmodule