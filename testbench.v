`include "fadd.v"
module fadd_test;
reg [15:0]A,B;
wire [15:0]op;
f_adder B0(A,B,op);
initial
begin
	A=16'b0011111110110001;
	B=16'b0101011100110011;
end 
initial
begin
	$monitor("A=%b %b %b \nB=%b %b %b\nOutput = %b %b %b",A[15],A[14:10],A[9:0],B[15],B[14:10],B[9:0],op[15],op[14:10],op[9:0]);
end
endmodule

// `include "rca.v"
// module rca_test;
// reg [15:0]A,B;
// reg cin;
// wire [15:0]sum;
// sixteenbitadder B0(A,B,cin,sum);
// initial
// begin
// 	A=34;
// 	B=54;
// 	cin=0;
// end 
// initial
// begin
// 	$monitor("A=%d B=%d Output = %d ",A,B,sum);
// end
// endmodule

// `include "barrelLR.v"
// module barrel_test;
// reg [3:0] shift;
// reg [15:0]A;
// reg d,val;
// wire [15:0]op;
// barrelLR B0(A,shift,op,d,val);
// initial
// begin
// 	// d=0;//left
// 	d=1;//right
// 	val=0;// value placed after shift
// 	// A=16'b1111001110010101;
// 	A=16'b0101010001011001;
// 	// shift=4'b0110;
// 	shift=2;
// end 
// initial
// begin
// 	$monitor("A=%b Shift=%d Output = %b ",A,shift,op);
// end
// endmodule

// `include "cla.v"
// module cla_test;
// reg [15:0]a,b;
// reg cin;
// wire [15:0]sum;
// wire cout;
// cla C1(a,b,cin,sum,cout);
// initial
// begin
//     a=23444;b=54433;cin=0;
// end
// initial
// begin
// 	$monitor($time, " a = %d, b = %d,ci = %d sum = %d, cout = %d",a,b,cin,sum, cout);
// end
// endmodule

// `include "mux.v"
// module muxtestbench;
// // reg I1,I2,I3,I4,S0,S1;
// reg I1,I2,S;
// wire op;
// MUX2 a(S,I1,I2,op);
// initial
// begin
// 	I1=1;I2=0;
// 	S=0;
// end
// initial
// begin
// 	$monitor("input %b%b  select %b :- Output %b",I1,I2,S,op);
// end
// endmodule