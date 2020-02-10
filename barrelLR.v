`include"barrel.v"
module barrelLR(A,shift,op,direction,val);
	input [15:0]A;
	input direction;
	input [3:0]shift;
	output [15:0]op;
	input val;
	
	wire [15:0]w1,w2;
	MUX16_2x1_s M1(direction,A[15:0],w1);
	barrel b(w1,shift,w2,val);
	MUX16_2x1_s M2(direction,w2[15:0],op);

endmodule