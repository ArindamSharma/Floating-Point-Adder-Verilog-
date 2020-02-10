`include "barrel.v"
`include "rca.v"
module f_adder(A,B,op);
	input [15:0] A,B;
	output [15:0] op;

// module top;
// 	reg [15:0] A,B;
// 	wire [15:0] op;

	wire signA,signB;
	wire [4:0] expA,expB;
	wire [10:0] manA,manB;

	assign signA=A[15];
	assign signB=B[15];
	assign expA=A[14:10]-15;
	assign expB=B[14:10]-15;
	assign manA[9:0]=A[9:0];
	assign manB[9:0]=B[9:0];

	assign manA[10]=1'b1;
	assign manB[10]=1'b1;
	reg [3:0] shift,f_shift;
	reg [10:0] localX,localY,local_op;

	always@(*)begin
		if(expA>expB)begin
			shift=expA-expB;
			f_shift=expA;
			localX[10:0]=manB;
			localY[10:0]=manA;
		end
		else begin
			shift=expB-expA;
			f_shift=expB;
			localX[10:0]=manA;
			localY[10:0]=manB;
		end
	end
	wire [15:0] tmpX,tmpY,tmp_op,tmp_op2;
	assign tmpX[15:11]=0;
	assign tmpX[10:0]=localX;
	assign tmpY[15:11]=0;
	assign tmpY[10:0]=localY;

	barrelLR b0(tmpX,shift,tmp_op,1'b1,1'b0);
	sixteenbitadder A0(tmp_op,tmpY,1'b0,tmp_op2);

	assign op[15]=signA|signB;
	assign op[14:10]=f_shift;
	assign op[9:0]=tmp_op2;

	// initial
	// begin
	// 	// #0 A=16'b0100101000111001; B=16'b0101000101100111;
	// 	A=16'b0011111110110001;
	// 	B=16'b0101011100110011;
	// 	$monitor("A=%b\n%b %d %b\n\nB=%b\n%b %d %b\n\nop=%b\n%b %b\n%b\n%b\n%b",A,signA,expA,manA,B,signB,expB,manB,op,tmpX,shift,tmpY,tmp_op,tmp_op2);
	// end

endmodule