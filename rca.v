module fulladder(a,b,cin,sum,carry);
input a,b,cin;
output sum,carry;
	assign sum = (a ^ b ^ cin);
	assign carry = (a & b)|(cin & a)|(b & cin);
endmodule

module sixteenbitadder(A,B,cin,Sum);
	input [15:0] A,B;
	output [15:0] Sum;
	input cin;
	wire [15:0] c;
	fulladder f_1_0(A[0],B[0],cin,Sum[0],c[0]);
	fulladder f_1_1(A[1],B[1],c[0],Sum[1],c[1]);
	fulladder f_1_2(A[2],B[2],c[1],Sum[2],c[2]);
	fulladder f_1_3(A[3],B[3],c[2],Sum[3],c[3]);
	fulladder f_1_4(A[4],B[4],c[3],Sum[4],c[4]);
	fulladder f_1_5(A[5],B[5],c[4],Sum[5],c[5]);
	fulladder f_1_6(A[6],B[6],c[5],Sum[6],c[6]);
	fulladder f_1_7(A[7],B[7],c[6],Sum[7],c[7]);
	fulladder f_2_0(A[8],B[8],c[7],Sum[8],c[8]);
	fulladder f_2_1(A[9],B[9],c[8],Sum[9],c[9]);
	fulladder f_2_2(A[10],B[10],c[9],Sum[10],c[10]);
	fulladder f_2_3(A[11],B[11],c[10],Sum[11],c[11]);
	fulladder f_2_4(A[12],B[12],c[11],Sum[12],c[12]);
	fulladder f_2_5(A[13],B[13],c[12],Sum[13],c[13]);
	fulladder f_2_6(A[14],B[14],c[13],Sum[14],c[14]);
	fulladder f_2_7(A[15],B[15],c[14],Sum[15],c[15]);
endmodule

module onefourbitadder(A,B,cin,Sum);
	input [10:0] A,B;
	output [10:0] Sum;
	input cin;

	wire [15:0] A_1,B_1;
	wire [15:0] Sum_1;
	assign A_1[15:11]=0;
	assign A_1[10:0]=A;
	assign B_1[15:11]=0;
	assign B_1[10:0]=B;
	sixteenbitadder F0(A_1,B_1,1'b0,Sum_1);
	assign Sum=Sum_1[10:0];
endmodule
