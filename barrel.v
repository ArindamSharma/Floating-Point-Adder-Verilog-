`include "mux.v"

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

module barrel(A,shift,op,val);
	input [0:15] A;
	input [3:0] shift;
	input val;
	output [0:15] op;

	wire [15:0] w,x,y;
	MUX2 a0_0(shift[0],val,A[0],w[0]);
	MUX2 a0_1(shift[0],A[0],A[1],w[1]);
	MUX2 a0_2(shift[0],A[1],A[2],w[2]);
	MUX2 a0_3(shift[0],A[2],A[3],w[3]);
	MUX2 a0_4(shift[0],A[3],A[4],w[4]);
	MUX2 a0_5(shift[0],A[4],A[5],w[5]);
	MUX2 a0_6(shift[0],A[5],A[6],w[6]);
	MUX2 a0_7(shift[0],A[6],A[7],w[7]);
	MUX2 a0_8(shift[0],A[7],A[8],w[8]);
	MUX2 a0_9(shift[0],A[8],A[9],w[9]);
	MUX2 a0_10(shift[0],A[9],A[10],w[10]);
	MUX2 a0_11(shift[0],A[10],A[11],w[11]);
	MUX2 a0_12(shift[0],A[11],A[12],w[12]);
	MUX2 a0_13(shift[0],A[12],A[13],w[13]);
	MUX2 a0_14(shift[0],A[13],A[14],w[14]);
	MUX2 a0_15(shift[0],A[14],A[15],w[15]);

	MUX2 a1_0(shift[1],val,w[0],x[0]);
	MUX2 a1_1(shift[1],val,w[1],x[1]);
	MUX2 a1_2(shift[1],w[0],w[2],x[2]);
	MUX2 a1_3(shift[1],w[1],w[3],x[3]);
	MUX2 a1_4(shift[1],w[2],w[4],x[4]);
	MUX2 a1_5(shift[1],w[3],w[5],x[5]);
	MUX2 a1_6(shift[1],w[4],w[6],x[6]);
	MUX2 a1_7(shift[1],w[5],w[7],x[7]);
	MUX2 a1_8(shift[1],w[6],w[8],x[8]);
	MUX2 a1_9(shift[1],w[7],w[9],x[9]);
	MUX2 a1_10(shift[1],w[8],w[10],x[10]);
	MUX2 a1_11(shift[1],w[9],w[11],x[11]);
	MUX2 a1_12(shift[1],w[10],w[12],x[12]);
	MUX2 a1_13(shift[1],w[11],w[13],x[13]);
	MUX2 a1_14(shift[1],w[12],w[14],x[14]);
	MUX2 a1_15(shift[1],w[13],w[15],x[15]);

	MUX2 a2_0(shift[2],val,x[0],y[0]);
	MUX2 a2_1(shift[2],val,x[1],y[1]);
	MUX2 a2_2(shift[2],val,x[2],y[2]);
	MUX2 a2_3(shift[2],val,x[3],y[3]);
	MUX2 a2_4(shift[2],x[0],x[4],y[4]);
	MUX2 a2_5(shift[2],x[1],x[5],y[5]);
	MUX2 a2_6(shift[2],x[2],x[6],y[6]);
	MUX2 a2_7(shift[2],x[3],x[7],y[7]);
	MUX2 a2_8(shift[2],x[4],x[8],y[8]);
	MUX2 a2_9(shift[2],x[5],x[9],y[9]);
	MUX2 a2_10(shift[2],x[6],x[10],y[10]);
	MUX2 a2_11(shift[2],x[7],x[11],y[11]);
	MUX2 a2_12(shift[2],x[8],x[12],y[12]);
	MUX2 a2_13(shift[2],x[9],x[13],y[13]);
	MUX2 a2_14(shift[2],x[10],x[14],y[14]);
	MUX2 a2_15(shift[2],x[11],x[15],y[15]);

	MUX2 a3_0(shift[3],val,y[0],op[0]);
	MUX2 a3_1(shift[3],val,y[1],op[1]);
	MUX2 a3_2(shift[3],val,y[2],op[2]);
	MUX2 a3_3(shift[3],val,y[3],op[3]);
	MUX2 a3_4(shift[3],val,y[4],op[4]);
	MUX2 a3_5(shift[3],val,y[5],op[5]);
	MUX2 a3_6(shift[3],val,y[6],op[6]);
	MUX2 a3_7(shift[3],val,y[7],op[7]);
	MUX2 a3_8(shift[3],y[0],y[8],op[8]);
	MUX2 a3_9(shift[3],y[1],y[9],op[9]);
	MUX2 a3_10(shift[3],y[2],y[10],op[10]);
	MUX2 a3_11(shift[3],y[3],y[11],op[11]);
	MUX2 a3_12(shift[3],y[4],y[12],op[12]);
	MUX2 a3_13(shift[3],y[5],y[13],op[13]);
	MUX2 a3_14(shift[3],y[6],y[14],op[14]);
	MUX2 a3_15(shift[3],y[7],y[15],op[15]);

endmodule