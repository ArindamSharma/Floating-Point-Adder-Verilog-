module cla(a,b,ci,sum,co);

input [15:0]a,b;
input ci;
output [15:0]sum;
output co;

wire [16:0] y1,y0;
wire [16:0]m,n;
wire [16:0]m1,n1;
wire [16:0]m2,n2;
wire [16:0]m3,n3;
wire [16:0]m4,n4;
wire [16:0] p,q;

assign p=a&b;
assign q=a|b;

assign y0[15]=q[14];
assign y0[14]=q[13];
assign y0[13]=q[12];
assign y0[12]=q[11];
assign y0[11]=q[10];
assign y0[10]=q[9];
assign y0[9]=q[8];
assign y0[8]=q[7];
assign y0[7]=q[6];
assign y0[6]=q[5];
assign y0[5]=q[4];
assign y0[4]=q[3];
assign y0[3]=q[2];
assign y0[2]=q[1];
assign y0[1]=q[0];
assign y0[0]=0;

assign y1[15]=p[14];
assign y1[14]=p[13];
assign y1[13]=p[12];
assign y1[12]=p[11];
assign y1[11]=p[10];
assign y1[10]=p[9];
assign y1[9]=p[8];
assign y1[8]=p[7];
assign y1[7]=p[6];
assign y1[6]=p[5];
assign y1[5]=p[4];
assign y1[4]=p[3];
assign y1[3]=p[2];
assign y1[2]=p[1];
assign y1[1]=p[0];
assign y1[0]=0;
// assign y0=q<<1;
// assign y1=p<<1;

assign m[0]=y1[0];
assign n[0]=y0[0];

assign m[1]=(y1[1] & y0[1]) | (y1[0] & y0[1]);
assign n[1]=(y1[1] & y0[1]) | (y0[0] & y0[1]);

assign m[2]=(y1[2] & y0[2]) | (y1[1] & y0[2]);
assign n[2]=(y1[2] & y0[2]) | (y0[1] & y0[2]);

assign m[3]=(y1[3] & y0[3]) | (y1[2] & y0[3]);
assign n[3]=(y1[3] & y0[3]) | (y0[2] & y0[3]);

assign m[4]=(y1[4] & y0[4]) | (y1[3] & y0[4]);
assign n[4]=(y1[4] & y0[4]) | (y0[3] & y0[4]);

assign m[5]=(y1[5] & y0[5]) | (y1[4] & y0[5]);
assign n[5]=(y1[5] & y0[5]) | (y0[4] & y0[5]);

assign m[6]=(y1[6] & y0[6]) | (y1[5] & y0[6]);
assign n[6]=(y1[6] & y0[6]) | (y0[5] & y0[6]);

assign m[7]=(y1[7] & y0[7]) | (y1[6] & y0[7]);
assign n[7]=(y1[7] & y0[7]) | (y0[6] & y0[7]);

assign m[8]=(y1[8] & y0[8]) | (y1[7] & y0[8]);
assign n[8]=(y1[8] & y0[8]) | (y0[7] & y0[8]);

assign m[9]=(y1[9] & y0[9]) | (y1[8] & y0[9]);
assign n[9]=(y1[9] & y0[9]) | (y0[8] & y0[9]);

assign m[10]=(y1[10] & y0[10]) | (y1[9] & y0[10]);
assign n[10]=(y1[10] & y0[10]) | (y0[9] & y0[10]);

assign m[11]=(y1[11] & y0[11]) | (y1[10] & y0[11]);
assign n[11]=(y1[11] & y0[11]) | (y0[10] & y0[11]);

assign m[12]=(y1[12] & y0[12]) | (y1[11] & y0[12]);
assign n[12]=(y1[12] & y0[12]) | (y0[11] & y0[12]);

assign m[13]=(y1[13] & y0[13]) | (y1[12] & y0[13]);
assign n[13]=(y1[14] & y0[13]) | (y0[12] & y0[13]);

assign m[14]=(y1[14] & y0[14]) | (y1[13] & y0[14]);
assign n[14]=(y1[14] & y0[14]) | (y0[13] & y0[14]);

assign m[15]=(y1[15] & y0[15]) | (y1[14] & y0[15]);
assign n[15]=(y1[15] & y0[15]) | (y0[14] & y0[15]);

assign m[16]=(y1[16] & y0[16]) | (y1[15] & y0[16]);
assign n[16]=(y1[16] & y0[16]) | (y0[15] & y0[16]);

assign m1[0]=m[0];
assign n1[0]=n[0];
assign m1[1]=m[1];
assign n1[1]=n[1];

assign m1[2] = (m[2] & n[2]) | (m[0] & n[2]);
assign n1[2] = (m[2] & n[2]) | (n[0] & n[2]);
assign m1[3] = (m[3] & n[3]) | (m[1] & n[3]);
assign n1[3] = (m[3] & n[3]) | (n[1] & n[3]);
assign m1[4] = (m[4] & n[4]) | (m[2] & n[4]);
assign n1[4] = (m[4] & n[4]) | (n[2] & n[4]);
assign m1[5] = (m[5] & n[5]) | (m[3] & n[5]);
assign n1[5] = (m[5] & n[5]) | (n[3] & n[5]);
assign m1[6] = (m[6] & n[6]) | (m[4] & n[6]);
assign n1[6] = (m[6] & n[6]) | (n[4] & n[6]);
assign m1[7] = (m[7] & n[7]) | (m[5] & n[7]);
assign n1[7] = (m[7] & n[7]) | (n[5] & n[7]);
assign m1[8] = (m[8] & n[8]) | (m[6] & n[8]);
assign n1[8] = (m[8] & n[8]) | (n[6] & n[8]);
assign m1[9] = (m[9] & n[9]) | (m[7] & n[9]);
assign n1[9] = (m[9] & n[9]) | (n[7] & n[9]);
assign m1[10] = (m[10] & n[10]) | (m[8] & n[10]);
assign n1[10] = (m[10] & n[10]) | (n[8] & n[10]);
assign m1[11] = (m[11] & n[11]) | (m[9] & n[11]);
assign n1[11] = (m[11] & n[11]) | (n[9] & n[11]);
assign m1[12] = (m[12] & n[12]) | (m[10] & n[12]);
assign n1[12] = (m[12] & n[12]) | (n[10] & n[12]);
assign m1[13] = (m[13] & n[13]) | (m[11] & n[13]);
assign n1[13] = (m[13] & n[13]) | (n[11] & n[13]);
assign m1[14] = (m[14] & n[14]) | (m[12] & n[14]);
assign n1[14] = (m[14] & n[14]) | (n[12] & n[14]);
assign m1[15] = (m[15] & n[15]) | (m[13] & n[15]);
assign n1[15] = (m[15] & n[15]) | (n[13] & n[15]);
assign m1[16] = (m[16] & n[16]) | (m[14] & n[16]);
assign n1[16] = (m[16] & n[16]) | (n[14] & n[16]);

assign m2[0]=m1[0];
assign n2[0]=n1[0];
assign m2[1]=m1[1];
assign n2[1]=n1[2];
assign m2[2]=m1[2];
assign n2[2]=n1[2];
assign m2[3]=m1[3];
assign n2[3]=n1[3];
assign m2[4] = (m1[4] & n1[4]) | (m1[0] & n1[4]);
assign n2[4] = (m1[4] & n1[4]) | (n1[0] & n1[4]);
assign m2[5] = (m1[5] & n1[5]) | (m1[1] & n1[5]);
assign n2[5] = (m1[5] & n1[5]) | (n1[1] & n1[5]);
assign m2[6] = (m1[6] & n1[6]) | (m1[2] & n1[6]);
assign n2[6] = (m1[6] & n1[6]) | (n1[2] & n1[6]);
assign m2[7] = (m1[7] & n1[7]) | (m1[3] & n1[7]);
assign n2[7] = (m1[7] & n1[7]) | (n1[3] & n1[7]);
assign m2[8] = (m1[8] & n1[8]) | (m1[4] & n1[8]);
assign n2[8] = (m1[8] & n1[8]) | (n1[4] & n1[8]);
assign m2[9] = (m1[9] & n1[9]) | (m1[5] & n1[9]);
assign n2[9] = (m1[9] & n1[9]) | (n1[5] & n1[9]);
assign m2[10] = (m1[10] & n1[10]) | (m1[6] & n1[10]);
assign n2[10] = (m1[10] & n1[10]) | (n1[6] & n1[10]);
assign m2[11] = (m1[11] & n1[11]) | (m1[7] & n1[11]);
assign n2[11] = (m1[11] & n1[11]) | (n1[7] & n1[11]);
assign m2[12] = (m1[12] & n1[12]) | (m1[8] & n1[12]);
assign n2[12] = (m1[12] & n1[12]) | (n1[8] & n1[12]);
assign m2[13] = (m1[13] & n1[13]) | (m1[9] & n1[13]);
assign n2[13] = (m1[13] & n1[13]) | (n1[9] & n1[13]);
assign m2[14] = (m1[14] & n1[14]) | (m1[10] & n1[14]);
assign n2[14] = (m1[14] & n1[14]) | (n1[10] & n1[14]);
assign m2[15] = (m1[15] & n1[15]) | (m1[11] & n1[15]);
assign n2[15] = (m1[15] & n1[15]) | (n1[11] & n1[15]);
assign m2[16] = (m1[16] & n1[16]) | (m1[12] & n1[16]);
assign n2[16] = (m1[16] & n1[16]) | (n1[12] & n1[16]);

assign m3[0]=m2[0];
assign n3[0]=n2[0];
assign m3[1]=m2[1];
assign n3[1]=n2[1];
assign m3[2]=m2[2];
assign n3[2]=n2[2];
assign m3[3]=m2[3];
assign n3[3]=n2[3];
assign m3[4]=m2[4];
assign n3[4]=n2[4];
assign m3[5]=m2[5];
assign n3[5]=n2[5];
assign m3[6]=m2[6];
assign n3[6]=n2[6];
assign m3[7]=m2[7];
assign n3[7]=n2[7];


assign m3[8] = (m2[8] & n2[8]) | (m2[0] & n2[8]);
assign n3[8] = (m2[8] & n2[8]) | (n2[0] & n2[8]);
assign m3[9] = (m2[9] & n2[9]) | (m2[1] & n2[9]);
assign n3[9] = (m2[9] & n2[9]) | (n2[1] & n2[9]);
assign m3[10] = (m2[10] & n2[10]) | (m2[2] & n2[10]);
assign n3[10] = (m2[10] & n2[10]) | (n2[2] & n2[10]);
assign m3[11] = (m2[11] & n2[11]) | (m2[3] & n2[11]);
assign n3[11] = (m2[11] & n2[11]) | (n2[3] & n2[11]);
assign m3[12] = (m2[12] & n2[12]) | (m2[4] & n2[12]);
assign n3[12] = (m2[12] & n2[12]) | (n2[4] & n2[12]);
assign m3[13] = (m2[13] & n2[13]) | (m2[5] & n2[13]);
assign n3[13] = (m2[13] & n2[13]) | (n2[5] & n2[13]);
assign m3[14] = (m2[14] & n2[14]) | (m2[6] & n2[14]);
assign n3[14] = (m2[14] & n2[14]) | (n2[6] & n2[14]);
assign m3[15] = (m2[15] & n2[15]) | (m2[7] & n2[15]);
assign n3[15] = (m2[15] & n2[15]) | (n2[7] & n2[15]);
assign m3[16] = (m2[16] & n2[16]) | (m2[8] & n2[16]);
assign n3[16] = (m2[16] & n2[16]) | (n2[8] & n2[16]);

assign m4[0]=m3[0];
assign n4[0]=n3[0];
assign m4[1]=m3[1];
assign n4[1]=n3[1];
assign m4[2]=m3[2];
assign n4[2]=n3[2];
assign m4[3]=m3[3];
assign n4[3]=n3[3];
assign m4[4]=m3[4];
assign n4[4]=n3[4];
assign m4[5]=m3[5];
assign n4[5]=n3[5];
assign m4[6]=m3[6];
assign n4[6]=n3[6];
assign m4[7]=m3[7];
assign n4[7]=n3[7];
assign m4[8]=m3[8];
assign n4[8]=n3[8];
assign m4[9]=m3[9];
assign n4[9]=n3[9];
assign m4[10]=m3[10];
assign n4[10]=n3[10];
assign m4[11]=m3[11];
assign n4[11]=n3[11];
assign m4[12]=m3[12];
assign n4[12]=n3[12];
assign m4[13]=m3[13];
assign n4[13]=n3[13];
assign m4[14]=m3[14];
assign n4[14]=n3[14];
assign m4[15]=m3[15];
assign n4[15]=n3[15];
assign m4[16] = (m3[16] & n3[16]) | (m3[0] & n3[16]);
assign n4[16] = (m3[16] & n3[16]) | (n3[8] & n3[16]);

assign sum = a^b^(n4 & m4);
assign co = n4[16]&m4[16];
endmodule
