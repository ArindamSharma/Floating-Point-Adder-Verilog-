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
	$monitor("A=%d B=%d Output = %d ",A,B,op);
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

// `include "barrel.v"
// module barrel_test;
// reg [3:0] shift;
// reg [15:0]A;
// wire [15:0]op;
// barrel B0(A,shift,op);
// initial
// begin
// 	A=16'b1111001110010101;
// 	shift=4'b1110;
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
// reg I1,I2,I3,I4,S0,S1;
// wire op;
// MUX a(S0,S1,I1,I2,I3,I4,op);
// initial
// begin
// 	I1=1;I2=1;I3=0;I4=0;
// 	S0=0;
// 	S1=1;
// end
// initial
// begin
// 	$monitor("input %b%b%b%b  select %b%b :- Output %b",I1,I2,I3,I4,S0,S1,op);
// end
// endmodule