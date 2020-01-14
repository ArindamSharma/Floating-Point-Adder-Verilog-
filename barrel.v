`include "mux.v"
module barrel(A,shift,op);
input [3:0] shift;
input [15:0] A;
output [15:0] op;
wire [15:0] w[15:0];

assign w[0]=A;

assign w[1][14:0]=w[0][15:1];
assign w[1][15]=w[0][0];

assign w[2][14:0]=w[1][15:1];
assign w[2][15]=w[1][0];

assign w[3][14:0]=w[2][15:1];
assign w[3][15]=w[2][0];

assign w[4][14:0]=w[3][15:1];
assign w[4][15]=w[3][0];

assign w[5][14:0]=w[4][15:1];
assign w[5][15]=w[4][0];

assign w[6][14:0]=w[5][15:1];
assign w[6][15]=w[5][0];

assign w[7][14:0]=w[6][15:1];
assign w[7][15]=w[6][0];

assign w[8][14:0]=w[7][15:1];
assign w[8][15]=w[7][0];

// --------------------------

assign w[9][14:0]=w[8][15:1];
assign w[9][15]=w[8][0];

assign w[10][14:0]=w[9][15:1];
assign w[10][15]=w[9][0];

assign w[11][14:0]=w[10][15:1];
assign w[11][15]=w[10][0];

assign w[12][14:0]=w[11][15:1];
assign w[12][15]=w[11][0];

assign w[13][14:0]=w[12][15:1];
assign w[13][15]=w[12][0];

assign w[14][14:0]=w[13][15:1];
assign w[14][15]=w[13][0];

assign w[15][14:0]=w[14][15:1];
assign w[15][15]=w[14][0];

MUX16 M0(shift,w[0],op[0]);
MUX16 M1(shift,w[1],op[1]);
MUX16 M2(shift,w[2],op[2]);
MUX16 M3(shift,w[3],op[3]);
MUX16 M4(shift,w[4],op[4]);
MUX16 M5(shift,w[5],op[5]);
MUX16 M6(shift,w[6],op[6]);
MUX16 M7(shift,w[7],op[7]);
MUX16 M8(shift,w[8],op[8]);
MUX16 M9(shift,w[9],op[9]);
MUX16 M10(shift,w[10],op[10]);
MUX16 M11(shift,w[11],op[11]);
MUX16 M12(shift,w[12],op[12]);
MUX16 M13(shift,w[13],op[13]);
MUX16 M14(shift,w[14],op[14]);
MUX16 M15(shift,w[15],op[15]);
endmodule