module MUX2(S,I1,I2,op);
	input S;
	input I1,I2;
	output op;
	assign op=I2&!S | I1&S ;
	// assign op=( I1 & (S0 & S1) | I2 & (S0 & !S1) | I3 & (!S0 & S1) | I4 & (!S0 & !S1) ;
endmodule

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

module MUX16_2x1(S,I1,I2,op);
	input S;
	input [15:0]I1,I2;
	output [15:0]op;
	MUX2 a0(S,I1[15],I2[15],op[15]);
	MUX2 a1(S,I1[14],I2[14],op[14]);
	MUX2 a2(S,I1[13],I2[13],op[13]);
	MUX2 a3(S,I1[12],I2[12],op[12]);
	MUX2 a4(S,I1[11],I2[11],op[11]);
	MUX2 a5(S,I1[10],I2[10],op[10]);
	MUX2 a6(S,I1[9],I2[9],op[9]);
	MUX2 a7(S,I1[8],I2[8],op[8]);
	MUX2 a8(S,I1[7],I2[7],op[7]);
	MUX2 a9(S,I1[6],I2[6],op[6]);
	MUX2 a10(S,I1[5],I2[5],op[5]);
	MUX2 a11(S,I1[4],I2[4],op[4]);
	MUX2 a12(S,I1[3],I2[3],op[3]);
	MUX2 a13(S,I1[2],I2[2],op[2]);
	MUX2 a14(S,I1[1],I2[1],op[1]);
	MUX2 a15(S,I1[0],I2[0],op[0]);
endmodule

module MUX16_2x1_s(S,I1,op);
	input S;
	input [15:0]I1;
	output [15:0]op;
	MUX2 a0(S,I1[15],I1[0],op[15]);
	MUX2 a1(S,I1[14],I1[1],op[14]);
	MUX2 a2(S,I1[13],I1[2],op[13]);
	MUX2 a3(S,I1[12],I1[3],op[12]);
	MUX2 a4(S,I1[11],I1[4],op[11]);
	MUX2 a5(S,I1[10],I1[5],op[10]);
	MUX2 a6(S,I1[9],I1[6],op[9]);
	MUX2 a7(S,I1[8],I1[7],op[8]);
	MUX2 a8(S,I1[7],I1[8],op[7]);
	MUX2 a9(S,I1[6],I1[9],op[6]);
	MUX2 a10(S,I1[5],I1[10],op[5]);
	MUX2 a11(S,I1[4],I1[11],op[4]);
	MUX2 a12(S,I1[3],I1[12],op[3]);
	MUX2 a13(S,I1[2],I1[13],op[2]);
	MUX2 a14(S,I1[1],I1[14],op[1]);
	MUX2 a15(S,I1[0],I1[15],op[0]);
endmodule
