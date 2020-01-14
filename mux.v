module MUX(S0,S1,I1,I2,I3,I4,op);
	input S0,S1;
	input I1,I2,I3,I4;
	output op;
	assign op=I4&S0&S1 | I3&S0&!S1 | I2&!S0&S1 | I1&!S0&!S1 ;
	// assign op=( I1 & (S0 & S1) | I2 & (S0 & !S1) | I3 & (!S0 & S1) | I4 & (!S0 & !S1) ;
endmodule