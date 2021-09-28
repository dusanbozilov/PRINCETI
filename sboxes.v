//First 8 modules are output shares for 1st order d+1 PRINCE S-box
//Next 27 modules are output shares for 2nd order d+1 PRINCE S-box
//Next 4 modules are output shares for 1st order td+1 PRINCE S-box
//Last 17 modules are output shares for 2nd order td+1 PRINCE S-box

//1st order d+1 sbox of PRINCE S-box with 2 input shares and 8 output shares
//Following 8 modules represent one output share of the sbox
//4-bit inputs are MSB to LSB x,y,z and w
module s_sh1 (
    input y1,
    input w1,
    input z1,
    input x1,
  out
);

    input wire y1;
    input wire w1;
    input wire z1;
    input wire x1;
    output wire [3:0] out;


    assign out1[0] = y1 ^ x1 ^ z1 & w1 ^ y1 & z1 ^ x1 & w1 ^ x1 & y1 ^ y1 & z1 & w1 ;
    assign out1[1] = y1 & w1 ^ y1 & z1 ^ x1 & z1 ^ y1 & z1 & w1 ^ x1 & y1 & z1 ;
    assign out1[2] = w1 ^ x1 ^ z1 & w1 ^ x1 & w1 ^ x1 & z1 ^ x1 & z1 & w1 ^ x1 & y1 & z1 ;
    assign out1[3] = z1 ^ x1 ^ y1 & z1 ^ x1 & y1 ^ y1 & z1 & w1 ^ x1 & z1 & w1 ^ x1 & y1 & w1 ;
endmodule

module s_sh2 (
    input w2,
    input z2,
    input y1,
    input x1,
  out
);

    input wire w2;
    input wire z2;
    input wire y1;
    input wire x1;
    output wire [3:0] out;


    assign out2[0] = z2 & w2 ^ y1 & z2 ^ x1 & w2 ^ y1 & z2 & w2 ;
    assign out2[1] = y1 & w2 ^ y1 & z2 ^ x1 & z2 ^ y1 & z2 & w2 ^ x1 & y1 & z2 ;
    assign out2[2] = w2 ^ z2 & w2 ^ x1 & w2 ^ x1 & z2 ^ x1 & z2 & w2 ^ x1 & y1 & z2 ;
    assign out2[3] = z2 ^ y1 & z2 ^ y1 & z2 & w2 ^ x1 & z2 & w2 ^ x1 & y1 & w2 ;
endmodule

module s_sh3 (
    input y2,
    input w2,
    input z1,
    input x1,
  out
);

    input wire y2;
    input wire w2;
    input wire z1;
    input wire x1;
    output wire [3:0] out;


    assign out3[0] = y2 ^ z1 & w2 ^ y2 & z1 ^ x1 & y2 ^ y2 & z1 & w2 ;
    assign out3[1] = y2 & w2 ^ y2 & z1 ^ y2 & z1 & w2 ^ x1 & y2 & z1 ;
    assign out3[2] = z1 & w2 ^ x1 & z1 & w2 ^ x1 & y2 & z1 ;
    assign out3[3] = y2 & z1 ^ x1 & y2 ^ y2 & z1 & w2 ^ x1 & z1 & w2 ^ x1 & y2 & w2 ;
endmodule

module s_sh4 (
    input y2,
    input z2,
    input w1,
    input x1,
  out
);

    input wire y2;
    input wire z2;
    input wire w1;
    input wire x1;
    output wire [3:0] out;


    assign out4[0] = z2 & w1 ^ y2 & z2 ^ y2 & z2 & w1 ;
    assign out4[1] = y2 & w1 ^ y2 & z2 ^ y2 & z2 & w1 ^ x1 & y2 & z2 ;
    assign out4[2] = z2 & w1 ^ x1 & z2 & w1 ^ x1 & y2 & z2 ;
    assign out4[3] = y2 & z2 ^ y2 & z2 & w1 ^ x1 & z2 & w1 ^ x1 & y2 & w1 ;
endmodule

module s_sh5 (
    input w2,
    input x2,
    input y1,
    input z1,
  out
);

    input wire w2;
    input wire x2;
    input wire y1;
    input wire z1;
    output wire [3:0] out;


    assign out5[0] = x2 ^ x2 & w2 ^ x2 & y1 ^ y1 & z1 & w2 ;
    assign out5[1] = x2 & z1 ^ y1 & z1 & w2 ^ x2 & y1 & z1 ;
    assign out5[2] = x2 ^ x2 & w2 ^ x2 & z1 ^ x2 & z1 & w2 ^ x2 & y1 & z1 ;
    assign out5[3] = x2 ^ x2 & y1 ^ y1 & z1 & w2 ^ x2 & z1 & w2 ^ x2 & y1 & w2 ;
endmodule

module s_sh6 (
    input x2,
    input z2,
    input y1,
    input w1,
  out
);

    input wire x2;
    input wire z2;
    input wire y1;
    input wire w1;
    output wire [3:0] out;


    assign out6[0] = x2 & w1 ^ y1 & z2 & w1 ;
    assign out6[1] = x2 & z2 ^ y1 & z2 & w1 ^ x2 & y1 & z2 ;
    assign out6[2] = x2 & w1 ^ x2 & z2 ^ x2 & z2 & w1 ^ x2 & y1 & z2 ;
    assign out6[3] = y1 & z2 & w1 ^ x2 & z2 & w1 ^ x2 & y1 & w1 ;
endmodule

module s_sh7 (
    input y2,
    input x2,
    input w1,
    input z1,
  out
);

    input wire y2;
    input wire x2;
    input wire w1;
    input wire z1;
    output wire [3:0] out;


    assign out7[0] = x2 & y2 ^ y2 & z1 & w1 ;
    assign out7[1] = y2 & z1 & w1 ^ x2 & y2 & z1 ;
    assign out7[2] = x2 & z1 & w1 ^ x2 & y2 & z1 ;
    assign out7[3] = x2 & y2 ^ y2 & z1 & w1 ^ x2 & z1 & w1 ^ x2 & y2 & w1 ;
endmodule

module s_sh8 (
    input y2,
    input w2,
    input x2,
    input z2,
  out
);

    input wire y2;
    input wire w2;
    input wire x2;
    input wire z2;
    output wire [3:0] out;


    assign out8[0] = y2 & z2 & w2 ;
    assign out8[1] = y2 & z2 & w2 ^ x2 & y2 & z2 ;
    assign out8[2] = x2 & z2 & w2 ^ x2 & y2 & z2 ;
    assign out8[3] = y2 & z2 & w2 ^ x2 & z2 & w2 ^ x2 & y2 & w2 ;
endmodule

//2nd order d+1 sbox of PRINCE S-box with 3 input shares and 27 output shares
//Following 27 modules represent one output share of the sbox
//4-bit inputs are MSB to LSB x,y,z and w
module s_d2_sh1 (
    input y1,
    input x1,
    input w1,
    input z1,
  out
);

    input wire y1;
    input wire x1;
    input wire w1;
    input wire z1;
    output wire [3:0] out;


    assign out1[0] = y1 ^ x1 ^ z1 & w1 ^ y1 & z1 ^ x1 & w1 ^ x1 & y1 ^ y1 & z1 & w1 ;
    assign out1[1] = y1 & w1 ^ y1 & z1 ^ x1 & z1 ^ y1 & z1 & w1 ^ x1 & y1 & z1 ;
    assign out1[2] = w1 ^ x1 ^ z1 & w1 ^ x1 & w1 ^ x1 & z1 ^ x1 & z1 & w1 ^ x1 & y1 & z1 ;
    assign out1[3] = z1 ^ x1 ^ y1 & z1 ^ x1 & y1 ^ y1 & z1 & w1 ^ x1 & z1 & w1 ^ x1 & y1 & w1 ;
endmodule

module s_d2_sh2 (
    input y1,
    input w2,
    input x1,
    input z2,
  out
);

    input wire y1;
    input wire w2;
    input wire x1;
    input wire z2;
    output wire [3:0] out;


    assign out2[0] = z2 & w2 ^ y1 & z2 ^ x1 & w2 ^ y1 & z2 & w2 ;
    assign out2[1] = y1 & w2 ^ y1 & z2 ^ x1 & z2 ^ y1 & z2 & w2 ^ x1 & y1 & z2 ;
    assign out2[2] = w2 ^ z2 & w2 ^ x1 & w2 ^ x1 & z2 ^ x1 & z2 & w2 ^ x1 & y1 & z2 ;
    assign out2[3] = z2 ^ y1 & z2 ^ y1 & z2 & w2 ^ x1 & z2 & w2 ^ x1 & y1 & w2 ;
endmodule

module s_d2_sh3 (
    input y1,
    input x1,
    input z3,
    input w3,
  out
);

    input wire y1;
    input wire x1;
    input wire z3;
    input wire w3;
    output wire [3:0] out;


    assign out3[0] = z3 & w3 ^ y1 & z3 ^ x1 & w3 ^ y1 & z3 & w3 ;
    assign out3[1] = y1 & w3 ^ y1 & z3 ^ x1 & z3 ^ y1 & z3 & w3 ^ x1 & y1 & z3 ;
    assign out3[2] = w3 ^ z3 & w3 ^ x1 & w3 ^ x1 & z3 ^ x1 & z3 & w3 ^ x1 & y1 & z3 ;
    assign out3[3] = z3 ^ y1 & z3 ^ y1 & z3 & w3 ^ x1 & z3 & w3 ^ x1 & y1 & w3 ;
endmodule

module s_d2_sh4 (
    input x1,
    input y2,
    input w3,
    input z1,
  out
);

    input wire x1;
    input wire y2;
    input wire w3;
    input wire z1;
    output wire [3:0] out;


    assign out4[0] = y2 ^ z1 & w3 ^ y2 & z1 ^ x1 & y2 ^ y2 & z1 & w3 ;
    assign out4[1] = y2 & w3 ^ y2 & z1 ^ y2 & z1 & w3 ^ x1 & y2 & z1 ;
    assign out4[2] = z1 & w3 ^ x1 & z1 & w3 ^ x1 & y2 & z1 ;
    assign out4[3] = y2 & z1 ^ x1 & y2 ^ y2 & z1 & w3 ^ x1 & z1 & w3 ^ x1 & y2 & w3 ;
endmodule

module s_d2_sh5 (
    input w1,
    input x1,
    input y2,
    input z2,
  out
);

    input wire w1;
    input wire x1;
    input wire y2;
    input wire z2;
    output wire [3:0] out;


    assign out5[0] = z2 & w1 ^ y2 & z2 ^ y2 & z2 & w1 ;
    assign out5[1] = y2 & w1 ^ y2 & z2 ^ y2 & z2 & w1 ^ x1 & y2 & z2 ;
    assign out5[2] = z2 & w1 ^ x1 & z2 & w1 ^ x1 & y2 & z2 ;
    assign out5[3] = y2 & z2 ^ y2 & z2 & w1 ^ x1 & z2 & w1 ^ x1 & y2 & w1 ;
endmodule

module s_d2_sh6 (
    input w2,
    input y2,
    input x1,
    input z3,
  out
);

    input wire w2;
    input wire y2;
    input wire x1;
    input wire z3;
    output wire [3:0] out;


    assign out6[0] = z3 & w2 ^ y2 & z3 ^ y2 & z3 & w2 ;
    assign out6[1] = y2 & w2 ^ y2 & z3 ^ y2 & z3 & w2 ^ x1 & y2 & z3 ;
    assign out6[2] = z3 & w2 ^ x1 & z3 & w2 ^ x1 & y2 & z3 ;
    assign out6[3] = y2 & z3 ^ y2 & z3 & w2 ^ x1 & z3 & w2 ^ x1 & y2 & w2 ;
endmodule

module s_d2_sh7 (
    input w2,
    input x1,
    input y3,
    input z1,
  out
);

    input wire w2;
    input wire x1;
    input wire y3;
    input wire z1;
    output wire [3:0] out;


    assign out7[0] = y3 ^ z1 & w2 ^ y3 & z1 ^ x1 & y3 ^ y3 & z1 & w2 ;
    assign out7[1] = y3 & w2 ^ y3 & z1 ^ y3 & z1 & w2 ^ x1 & y3 & z1 ;
    assign out7[2] = z1 & w2 ^ x1 & z1 & w2 ^ x1 & y3 & z1 ;
    assign out7[3] = y3 & z1 ^ x1 & y3 ^ y3 & z1 & w2 ^ x1 & z1 & w2 ^ x1 & y3 & w2 ;
endmodule

module s_d2_sh8 (
    input x1,
    input z2,
    input w3,
    input y3,
  out
);

    input wire x1;
    input wire z2;
    input wire w3;
    input wire y3;
    output wire [3:0] out;


    assign out8[0] = z2 & w3 ^ y3 & z2 ^ y3 & z2 & w3 ;
    assign out8[1] = y3 & w3 ^ y3 & z2 ^ y3 & z2 & w3 ^ x1 & y3 & z2 ;
    assign out8[2] = z2 & w3 ^ x1 & z2 & w3 ^ x1 & y3 & z2 ;
    assign out8[3] = y3 & z2 ^ y3 & z2 & w3 ^ x1 & z2 & w3 ^ x1 & y3 & w3 ;
endmodule

module s_d2_sh9 (
    input w1,
    input x1,
    input z3,
    input y3,
  out
);

    input wire w1;
    input wire x1;
    input wire z3;
    input wire y3;
    output wire [3:0] out;


    assign out9[0] = z3 & w1 ^ y3 & z3 ^ y3 & z3 & w1 ;
    assign out9[1] = y3 & w1 ^ y3 & z3 ^ y3 & z3 & w1 ^ x1 & y3 & z3 ;
    assign out9[2] = z3 & w1 ^ x1 & z3 & w1 ^ x1 & y3 & z3 ;
    assign out9[3] = y3 & z3 ^ y3 & z3 & w1 ^ x1 & z3 & w1 ^ x1 & y3 & w1 ;
endmodule

module s_d2_sh10 (
    input y1,
    input w2,
    input x2,
    input z1,
  out
);

    input wire y1;
    input wire w2;
    input wire x2;
    input wire z1;
    output wire [3:0] out;


    assign out10[0] = x2 ^ x2 & w2 ^ x2 & y1 ^ y1 & z1 & w2 ;
    assign out10[1] = x2 & z1 ^ y1 & z1 & w2 ^ x2 & y1 & z1 ;
    assign out10[2] = x2 ^ x2 & w2 ^ x2 & z1 ^ x2 & z1 & w2 ^ x2 & y1 & z1 ;
    assign out10[3] = x2 ^ x2 & y1 ^ y1 & z1 & w2 ^ x2 & z1 & w2 ^ x2 & y1 & w2 ;
endmodule

module s_d2_sh11 (
    input y1,
    input z2,
    input w3,
    input x2,
  out
);

    input wire y1;
    input wire z2;
    input wire w3;
    input wire x2;
    output wire [3:0] out;


    assign out11[0] = x2 & w3 ^ y1 & z2 & w3 ;
    assign out11[1] = x2 & z2 ^ y1 & z2 & w3 ^ x2 & y1 & z2 ;
    assign out11[2] = x2 & w3 ^ x2 & z2 ^ x2 & z2 & w3 ^ x2 & y1 & z2 ;
    assign out11[3] = y1 & z2 & w3 ^ x2 & z2 & w3 ^ x2 & y1 & w3 ;
endmodule

module s_d2_sh12 (
    input w1,
    input y1,
    input z3,
    input x2,
  out
);

    input wire w1;
    input wire y1;
    input wire z3;
    input wire x2;
    output wire [3:0] out;


    assign out12[0] = x2 & w1 ^ y1 & z3 & w1 ;
    assign out12[1] = x2 & z3 ^ y1 & z3 & w1 ^ x2 & y1 & z3 ;
    assign out12[2] = x2 & w1 ^ x2 & z3 ^ x2 & z3 & w1 ^ x2 & y1 & z3 ;
    assign out12[3] = y1 & z3 & w1 ^ x2 & z3 & w1 ^ x2 & y1 & w1 ;
endmodule

module s_d2_sh13 (
    input w1,
    input y2,
    input x2,
    input z1,
  out
);

    input wire w1;
    input wire y2;
    input wire x2;
    input wire z1;
    output wire [3:0] out;


    assign out13[0] = x2 & y2 ^ y2 & z1 & w1 ;
    assign out13[1] = y2 & z1 & w1 ^ x2 & y2 & z1 ;
    assign out13[2] = x2 & z1 & w1 ^ x2 & y2 & z1 ;
    assign out13[3] = x2 & y2 ^ y2 & z1 & w1 ^ x2 & z1 & w1 ^ x2 & y2 & w1 ;
endmodule

module s_d2_sh14 (
    input w2,
    input y2,
    input z2,
    input x2,
  out
);

    input wire w2;
    input wire y2;
    input wire z2;
    input wire x2;
    output wire [3:0] out;


    assign out14[0] = y2 & z2 & w2 ;
    assign out14[1] = y2 & z2 & w2 ^ x2 & y2 & z2 ;
    assign out14[2] = x2 & z2 & w2 ^ x2 & y2 & z2 ;
    assign out14[3] = y2 & z2 & w2 ^ x2 & z2 & w2 ^ x2 & y2 & w2 ;
endmodule

module s_d2_sh15 (
    input y2,
    input z3,
    input w3,
    input x2,
  out
);

    input wire y2;
    input wire z3;
    input wire w3;
    input wire x2;
    output wire [3:0] out;


    assign out15[0] = y2 & z3 & w3 ;
    assign out15[1] = y2 & z3 & w3 ^ x2 & y2 & z3 ;
    assign out15[2] = x2 & z3 & w3 ^ x2 & y2 & z3 ;
    assign out15[3] = y2 & z3 & w3 ^ x2 & z3 & w3 ^ x2 & y2 & w3 ;
endmodule

module s_d2_sh16 (
    input w3,
    input x2,
    input y3,
    input z1,
  out
);

    input wire w3;
    input wire x2;
    input wire y3;
    input wire z1;
    output wire [3:0] out;


    assign out16[0] = x2 & y3 ^ y3 & z1 & w3 ;
    assign out16[1] = y3 & z1 & w3 ^ x2 & y3 & z1 ;
    assign out16[2] = x2 & z1 & w3 ^ x2 & y3 & z1 ;
    assign out16[3] = x2 & y3 ^ y3 & z1 & w3 ^ x2 & z1 & w3 ^ x2 & y3 & w3 ;
endmodule

module s_d2_sh17 (
    input w1,
    input z2,
    input x2,
    input y3,
  out
);

    input wire w1;
    input wire z2;
    input wire x2;
    input wire y3;
    output wire [3:0] out;


    assign out17[0] = y3 & z2 & w1 ;
    assign out17[1] = y3 & z2 & w1 ^ x2 & y3 & z2 ;
    assign out17[2] = x2 & z2 & w1 ^ x2 & y3 & z2 ;
    assign out17[3] = y3 & z2 & w1 ^ x2 & z2 & w1 ^ x2 & y3 & w1 ;
endmodule

module s_d2_sh18 (
    input w2,
    input z3,
    input x2,
    input y3,
  out
);

    input wire w2;
    input wire z3;
    input wire x2;
    input wire y3;
    output wire [3:0] out;


    assign out18[0] = y3 & z3 & w2 ;
    assign out18[1] = y3 & z3 & w2 ^ x2 & y3 & z3 ;
    assign out18[2] = x2 & z3 & w2 ^ x2 & y3 & z3 ;
    assign out18[3] = y3 & z3 & w2 ^ x2 & z3 & w2 ^ x2 & y3 & w2 ;
endmodule

module s_d2_sh19 (
    input y1,
    input w3,
    input z1,
    input x3,
  out
);

    input wire y1;
    input wire w3;
    input wire z1;
    input wire x3;
    output wire [3:0] out;


    assign out19[0] = x3 ^ x3 & w3 ^ x3 & y1 ^ y1 & z1 & w3 ;
    assign out19[1] = x3 & z1 ^ y1 & z1 & w3 ^ x3 & y1 & z1 ;
    assign out19[2] = x3 ^ x3 & w3 ^ x3 & z1 ^ x3 & z1 & w3 ^ x3 & y1 & z1 ;
    assign out19[3] = x3 ^ x3 & y1 ^ y1 & z1 & w3 ^ x3 & z1 & w3 ^ x3 & y1 & w3 ;
endmodule

module s_d2_sh20 (
    input w1,
    input y1,
    input z2,
    input x3,
  out
);

    input wire w1;
    input wire y1;
    input wire z2;
    input wire x3;
    output wire [3:0] out;


    assign out20[0] = x3 & w1 ^ y1 & z2 & w1 ;
    assign out20[1] = x3 & z2 ^ y1 & z2 & w1 ^ x3 & y1 & z2 ;
    assign out20[2] = x3 & w1 ^ x3 & z2 ^ x3 & z2 & w1 ^ x3 & y1 & z2 ;
    assign out20[3] = y1 & z2 & w1 ^ x3 & z2 & w1 ^ x3 & y1 & w1 ;
endmodule

module s_d2_sh21 (
    input y1,
    input w2,
    input z3,
    input x3,
  out
);

    input wire y1;
    input wire w2;
    input wire z3;
    input wire x3;
    output wire [3:0] out;


    assign out21[0] = x3 & w2 ^ y1 & z3 & w2 ;
    assign out21[1] = x3 & z3 ^ y1 & z3 & w2 ^ x3 & y1 & z3 ;
    assign out21[2] = x3 & w2 ^ x3 & z3 ^ x3 & z3 & w2 ^ x3 & y1 & z3 ;
    assign out21[3] = y1 & z3 & w2 ^ x3 & z3 & w2 ^ x3 & y1 & w2 ;
endmodule

module s_d2_sh22 (
    input w2,
    input y2,
    input z1,
    input x3,
  out
);

    input wire w2;
    input wire y2;
    input wire z1;
    input wire x3;
    output wire [3:0] out;


    assign out22[0] = x3 & y2 ^ y2 & z1 & w2 ;
    assign out22[1] = y2 & z1 & w2 ^ x3 & y2 & z1 ;
    assign out22[2] = x3 & z1 & w2 ^ x3 & y2 & z1 ;
    assign out22[3] = x3 & y2 ^ y2 & z1 & w2 ^ x3 & z1 & w2 ^ x3 & y2 & w2 ;
endmodule

module s_d2_sh23 (
    input y2,
    input z2,
    input w3,
    input x3,
  out
);

    input wire y2;
    input wire z2;
    input wire w3;
    input wire x3;
    output wire [3:0] out;


    assign out23[0] = y2 & z2 & w3 ;
    assign out23[1] = y2 & z2 & w3 ^ x3 & y2 & z2 ;
    assign out23[2] = x3 & z2 & w3 ^ x3 & y2 & z2 ;
    assign out23[3] = y2 & z2 & w3 ^ x3 & z2 & w3 ^ x3 & y2 & w3 ;
endmodule

module s_d2_sh24 (
    input w1,
    input y2,
    input z3,
    input x3,
  out
);

    input wire w1;
    input wire y2;
    input wire z3;
    input wire x3;
    output wire [3:0] out;


    assign out24[0] = y2 & z3 & w1 ;
    assign out24[1] = y2 & z3 & w1 ^ x3 & y2 & z3 ;
    assign out24[2] = x3 & z3 & w1 ^ x3 & y2 & z3 ;
    assign out24[3] = y2 & z3 & w1 ^ x3 & z3 & w1 ^ x3 & y2 & w1 ;
endmodule

module s_d2_sh25 (
    input w1,
    input y3,
    input z1,
    input x3,
  out
);

    input wire w1;
    input wire y3;
    input wire z1;
    input wire x3;
    output wire [3:0] out;


    assign out25[0] = x3 & y3 ^ y3 & z1 & w1 ;
    assign out25[1] = y3 & z1 & w1 ^ x3 & y3 & z1 ;
    assign out25[2] = x3 & z1 & w1 ^ x3 & y3 & z1 ;
    assign out25[3] = x3 & y3 ^ y3 & z1 & w1 ^ x3 & z1 & w1 ^ x3 & y3 & w1 ;
endmodule

module s_d2_sh26 (
    input w2,
    input z2,
    input y3,
    input x3,
  out
);

    input wire w2;
    input wire z2;
    input wire y3;
    input wire x3;
    output wire [3:0] out;


    assign out26[0] = y3 & z2 & w2 ;
    assign out26[1] = y3 & z2 & w2 ^ x3 & y3 & z2 ;
    assign out26[2] = x3 & z2 & w2 ^ x3 & y3 & z2 ;
    assign out26[3] = y3 & z2 & w2 ^ x3 & z2 & w2 ^ x3 & y3 & w2 ;
endmodule

module s_d2_sh27 (
    input z3,
    input w3,
    input y3,
    input x3,
  out
);

    input wire z3;
    input wire w3;
    input wire y3;
    input wire x3;
    output wire [3:0] out;


    assign out27[0] = y3 & z3 & w3 ;
    assign out27[1] = y3 & z3 & w3 ^ x3 & y3 & z3 ;
    assign out27[2] = x3 & z3 & w3 ^ x3 & y3 & z3 ;
    assign out27[3] = y3 & z3 & w3 ^ x3 & z3 & w3 ^ x3 & y3 & w3 ;
endmodule

//1st order td+1 ti sbox of PRINCE S-box with 4 input and output shares
//Following 4 modules represent one output share of the sbox
module sbox_sh3(
    in3,
    in4,
    in1,
    out3
);

input wire [3 : 0] in3;
input wire [3 : 0] in4;
input wire [3 : 0] in1;
output wire [3 : 0] out3;

assign out3[3] =  in3[1] ^ in3[3] ^ (in3[1] & in3[2]) ^ (in3[0] & in3[1] & in3[2]) ^ (in3[0] & in3[1] & in3[3]) ^ (in3[2] & in3[3]) ^ (in3[0] & in3[2] & in3[3]) ^ (in3[1] & in3[2] & in4[0]) ^ (in3[1] & in3[3] & in4[0]) ^ (in3[2] & in3[3] & in4[0]) ^ (in3[2] & in4[1]) ^ (in3[0] & in3[2] & in4[1]) ^ (in3[0] & in3[3] & in4[1]) ^ (in3[2] & in4[0] & in4[1]) ^ (in3[3] & in4[0] & in4[1]) ^ (in3[1] & in4[2]) ^ (in3[0] & in3[1] & in4[2]) ^ (in3[3] & in4[2]) ^ (in3[0] & in3[3] & in4[2]) ^ (in3[1] & in4[0] & in4[2]) ^ (in3[3] & in4[0] & in4[2]) ^ (in3[0] & in4[1] & in4[2]) ^ (in3[0] & in3[1] & in4[3]) ^ (in3[2] & in4[3]) ^ (in3[0] & in3[2] & in4[3]) ^ (in3[1] & in4[0] & in4[3]) ^ (in3[2] & in4[0] & in4[3]) ^ (in3[0] & in4[1] & in4[3]) ^ (in3[0] & in4[2] & in4[3]) ^ (in3[1] & in3[2] & in1[0]) ^ (in3[1] & in3[3] & in1[0]) ^ (in3[2] & in3[3] & in1[0]) ^ (in3[2] & in4[1] & in1[0]) ^ (in3[3] & in4[1] & in1[0]) ^ (in3[1] & in4[2] & in1[0]) ^ (in3[3] & in4[2] & in1[0]) ^ (in3[1] & in4[3] & in1[0]) ^ (in3[2] & in4[3] & in1[0]) ^ (in3[0] & in3[2] & in1[1]) ^ (in3[0] & in3[3] & in1[1]) ^ (in3[2] & in4[0] & in1[1]) ^ (in3[3] & in4[0] & in1[1]) ^ (in3[0] & in4[2] & in1[1]) ^ (in3[0] & in4[3] & in1[1]) ^ (in3[1] & in1[2]) ^ (in3[0] & in3[1] & in1[2]) ^ (in3[0] & in3[3] & in1[2]) ^ (in3[1] & in4[0] & in1[2]) ^ (in3[3] & in4[0] & in1[2]) ^ (in3[0] & in4[1] & in1[2]) ^ (in3[0] & in4[3] & in1[2]) ^ (in3[0] & in3[1] & in1[3]) ^ (in3[2] & in1[3]) ^ (in3[0] & in3[2] & in1[3]) ^ (in3[1] & in4[0] & in1[3]) ^ (in3[2] & in4[0] & in1[3]) ^ (in3[0] & in4[1] & in1[3]) ^ (in3[0] & in4[2] & in1[3]);
assign out3[2] =  in3[0] ^ in3[3] ^ (in3[0] & in3[1]) ^ (in3[0] & in3[3]) ^ (in3[1] & in3[3]) ^ (in3[0] & in3[1] & in3[3]) ^ (in3[1] & in3[2] & in3[3]) ^ (in3[1] & in4[0]) ^ (in3[3] & in4[0]) ^ (in3[1] & in3[3] & in4[0]) ^ (in3[0] & in4[1]) ^ (in3[3] & in4[1]) ^ (in3[0] & in3[3] & in4[1]) ^ (in3[2] & in3[3] & in4[1]) ^ (in3[3] & in4[0] & in4[1]) ^ (in3[1] & in3[3] & in4[2]) ^ (in3[3] & in4[1] & in4[2]) ^ (in3[0] & in4[3]) ^ (in3[1] & in4[3]) ^ (in3[0] & in3[1] & in4[3]) ^ (in3[1] & in3[2] & in4[3]) ^ (in3[1] & in4[0] & in4[3]) ^ (in3[0] & in4[1] & in4[3]) ^ (in3[2] & in4[1] & in4[3]) ^ (in3[1] & in4[2] & in4[3]) ^ (in3[1] & in3[3] & in1[0]) ^ (in3[3] & in4[1] & in1[0]) ^ (in3[1] & in4[3] & in1[0]) ^ (in3[0] & in1[1]) ^ (in3[0] & in3[3] & in1[1]) ^ (in3[2] & in3[3] & in1[1]) ^ (in3[3] & in4[0] & in1[1]) ^ (in3[3] & in4[2] & in1[1]) ^ (in3[0] & in4[3] & in1[1]) ^ (in3[2] & in4[3] & in1[1]) ^ (in3[1] & in3[3] & in1[2]) ^ (in3[3] & in4[1] & in1[2]) ^ (in3[1] & in4[3] & in1[2]) ^ (in3[0] & in1[3]) ^ (in3[1] & in1[3]) ^ (in3[0] & in3[1] & in1[3]) ^ (in3[1] & in3[2] & in1[3]) ^ (in3[1] & in4[0] & in1[3]) ^ (in3[0] & in4[1] & in1[3]) ^ (in3[2] & in4[1] & in1[3]) ^ (in3[1] & in4[2] & in1[3]);
assign out3[1] =  (in3[0] & in3[2]) ^ (in3[1] & in3[2]) ^ (in3[0] & in3[1] & in3[2]) ^ (in3[1] & in3[3]) ^ (in3[1] & in3[2] & in3[3]) ^ (in3[2] & in4[0]) ^ (in3[1] & in3[2] & in4[0]) ^ (in3[2] & in4[1]) ^ (in3[0] & in3[2] & in4[1]) ^ (in3[3] & in4[1]) ^ (in3[2] & in3[3] & in4[1]) ^ (in3[2] & in4[0] & in4[1]) ^ (in3[0] & in4[2]) ^ (in3[1] & in4[2]) ^ (in3[0] & in3[1] & in4[2]) ^ (in3[1] & in3[3] & in4[2]) ^ (in3[1] & in4[0] & in4[2]) ^ (in3[0] & in4[1] & in4[2]) ^ (in3[3] & in4[1] & in4[2]) ^ (in3[1] & in4[3]) ^ (in3[1] & in3[2] & in4[3]) ^ (in3[2] & in4[1] & in4[3]) ^ (in3[1] & in4[2] & in4[3]) ^ (in3[1] & in3[2] & in1[0]) ^ (in3[2] & in4[1] & in1[0]) ^ (in3[1] & in4[2] & in1[0]) ^ (in3[0] & in3[2] & in1[1]) ^ (in3[2] & in3[3] & in1[1]) ^ (in3[2] & in4[0] & in1[1]) ^ (in3[0] & in4[2] & in1[1]) ^ (in3[3] & in4[2] & in1[1]) ^ (in3[2] & in4[3] & in1[1]) ^ (in3[0] & in1[2]) ^ (in3[1] & in1[2]) ^ (in3[0] & in3[1] & in1[2]) ^ (in3[1] & in3[3] & in1[2]) ^ (in3[1] & in4[0] & in1[2]) ^ (in3[0] & in4[1] & in1[2]) ^ (in3[3] & in4[1] & in1[2]) ^ (in3[1] & in4[3] & in1[2]) ^ (in3[1] & in1[3]) ^ (in3[1] & in3[2] & in1[3]) ^ (in3[2] & in4[1] & in1[3]) ^ (in3[1] & in4[2] & in1[3]);
assign out3[0] =  in3[2] ^ in3[3] ^ (in3[0] & in3[1]) ^ (in3[1] & in3[2]) ^ (in3[0] & in3[1] & in3[2]) ^ (in3[0] & in3[3]) ^ (in3[2] & in3[3]) ^ (in3[1] & in4[0]) ^ (in3[1] & in3[2] & in4[0]) ^ (in3[3] & in4[0]) ^ (in3[0] & in4[1]) ^ (in3[2] & in4[1]) ^ (in3[0] & in3[2] & in4[1]) ^ (in3[2] & in4[0] & in4[1]) ^ (in3[1] & in4[2]) ^ (in3[0] & in3[1] & in4[2]) ^ (in3[3] & in4[2]) ^ (in3[1] & in4[0] & in4[2]) ^ (in3[0] & in4[1] & in4[2]) ^ (in3[0] & in4[3]) ^ (in3[2] & in4[3]) ^ (in3[1] & in3[2] & in1[0]) ^ (in3[2] & in4[1] & in1[0]) ^ (in3[1] & in4[2] & in1[0]) ^ (in3[0] & in1[1]) ^ (in3[0] & in3[2] & in1[1]) ^ (in3[2] & in4[0] & in1[1]) ^ (in3[0] & in4[2] & in1[1]) ^ (in3[1] & in1[2]) ^ (in3[0] & in3[1] & in1[2]) ^ (in3[1] & in4[0] & in1[2]) ^ (in3[0] & in4[1] & in1[2]) ^ (in3[0] & in1[3]) ^ (in3[2] & in1[3]);

endmodule
module sbox_sh2(
    in2,
    in3,
    in4,
    out2
);

input wire [3 : 0] in2;
input wire [3 : 0] in3;
input wire [3 : 0] in4;
output wire [3 : 0] out2;

assign out2[3] =  in2[1] ^ in2[3] ^ (in2[1] & in2[2]) ^ (in2[0] & in2[1] & in2[2]) ^ (in2[0] & in2[1] & in2[3]) ^ (in2[2] & in2[3]) ^ (in2[0] & in2[2] & in2[3]) ^ (in2[1] & in2[2] & in3[0]) ^ (in2[1] & in2[3] & in3[0]) ^ (in2[2] & in2[3] & in3[0]) ^ (in2[2] & in3[1]) ^ (in2[0] & in2[2] & in3[1]) ^ (in2[0] & in2[3] & in3[1]) ^ (in2[2] & in3[0] & in3[1]) ^ (in2[3] & in3[0] & in3[1]) ^ (in2[1] & in3[2]) ^ (in2[0] & in2[1] & in3[2]) ^ (in2[3] & in3[2]) ^ (in2[0] & in2[3] & in3[2]) ^ (in2[1] & in3[0] & in3[2]) ^ (in2[3] & in3[0] & in3[2]) ^ (in2[0] & in3[1] & in3[2]) ^ (in2[0] & in2[1] & in3[3]) ^ (in2[2] & in3[3]) ^ (in2[0] & in2[2] & in3[3]) ^ (in2[1] & in3[0] & in3[3]) ^ (in2[2] & in3[0] & in3[3]) ^ (in2[0] & in3[1] & in3[3]) ^ (in2[0] & in3[2] & in3[3]) ^ (in2[1] & in2[2] & in4[0]) ^ (in2[1] & in2[3] & in4[0]) ^ (in2[2] & in2[3] & in4[0]) ^ (in2[2] & in3[1] & in4[0]) ^ (in2[3] & in3[1] & in4[0]) ^ (in2[1] & in3[2] & in4[0]) ^ (in2[3] & in3[2] & in4[0]) ^ (in2[1] & in3[3] & in4[0]) ^ (in2[2] & in3[3] & in4[0]) ^ (in2[0] & in2[2] & in4[1]) ^ (in2[0] & in2[3] & in4[1]) ^ (in2[2] & in3[0] & in4[1]) ^ (in2[3] & in3[0] & in4[1]) ^ (in2[0] & in3[2] & in4[1]) ^ (in2[0] & in3[3] & in4[1]) ^ (in2[1] & in4[2]) ^ (in2[0] & in2[1] & in4[2]) ^ (in2[0] & in2[3] & in4[2]) ^ (in2[1] & in3[0] & in4[2]) ^ (in2[3] & in3[0] & in4[2]) ^ (in2[0] & in3[1] & in4[2]) ^ (in2[0] & in3[3] & in4[2]) ^ (in2[0] & in2[1] & in4[3]) ^ (in2[2] & in4[3]) ^ (in2[0] & in2[2] & in4[3]) ^ (in2[1] & in3[0] & in4[3]) ^ (in2[2] & in3[0] & in4[3]) ^ (in2[0] & in3[1] & in4[3]) ^ (in2[0] & in3[2] & in4[3]);
assign out2[2] =  in2[0] ^ in2[3] ^ (in2[0] & in2[1]) ^ (in2[0] & in2[3]) ^ (in2[1] & in2[3]) ^ (in2[0] & in2[1] & in2[3]) ^ (in2[1] & in2[2] & in2[3]) ^ (in2[1] & in3[0]) ^ (in2[3] & in3[0]) ^ (in2[1] & in2[3] & in3[0]) ^ (in2[0] & in3[1]) ^ (in2[3] & in3[1]) ^ (in2[0] & in2[3] & in3[1]) ^ (in2[2] & in2[3] & in3[1]) ^ (in2[3] & in3[0] & in3[1]) ^ (in2[1] & in2[3] & in3[2]) ^ (in2[3] & in3[1] & in3[2]) ^ (in2[0] & in3[3]) ^ (in2[1] & in3[3]) ^ (in2[0] & in2[1] & in3[3]) ^ (in2[1] & in2[2] & in3[3]) ^ (in2[1] & in3[0] & in3[3]) ^ (in2[0] & in3[1] & in3[3]) ^ (in2[2] & in3[1] & in3[3]) ^ (in2[1] & in3[2] & in3[3]) ^ (in2[1] & in2[3] & in4[0]) ^ (in2[3] & in3[1] & in4[0]) ^ (in2[1] & in3[3] & in4[0]) ^ (in2[0] & in4[1]) ^ (in2[0] & in2[3] & in4[1]) ^ (in2[2] & in2[3] & in4[1]) ^ (in2[3] & in3[0] & in4[1]) ^ (in2[3] & in3[2] & in4[1]) ^ (in2[0] & in3[3] & in4[1]) ^ (in2[2] & in3[3] & in4[1]) ^ (in2[1] & in2[3] & in4[2]) ^ (in2[3] & in3[1] & in4[2]) ^ (in2[1] & in3[3] & in4[2]) ^ (in2[0] & in4[3]) ^ (in2[1] & in4[3]) ^ (in2[0] & in2[1] & in4[3]) ^ (in2[1] & in2[2] & in4[3]) ^ (in2[1] & in3[0] & in4[3]) ^ (in2[0] & in3[1] & in4[3]) ^ (in2[2] & in3[1] & in4[3]) ^ (in2[1] & in3[2] & in4[3]);
assign out2[1] =  (in2[0] & in2[2]) ^ (in2[1] & in2[2]) ^ (in2[0] & in2[1] & in2[2]) ^ (in2[1] & in2[3]) ^ (in2[1] & in2[2] & in2[3]) ^ (in2[2] & in3[0]) ^ (in2[1] & in2[2] & in3[0]) ^ (in2[2] & in3[1]) ^ (in2[0] & in2[2] & in3[1]) ^ (in2[3] & in3[1]) ^ (in2[2] & in2[3] & in3[1]) ^ (in2[2] & in3[0] & in3[1]) ^ (in2[0] & in3[2]) ^ (in2[1] & in3[2]) ^ (in2[0] & in2[1] & in3[2]) ^ (in2[1] & in2[3] & in3[2]) ^ (in2[1] & in3[0] & in3[2]) ^ (in2[0] & in3[1] & in3[2]) ^ (in2[3] & in3[1] & in3[2]) ^ (in2[1] & in3[3]) ^ (in2[1] & in2[2] & in3[3]) ^ (in2[2] & in3[1] & in3[3]) ^ (in2[1] & in3[2] & in3[3]) ^ (in2[1] & in2[2] & in4[0]) ^ (in2[2] & in3[1] & in4[0]) ^ (in2[1] & in3[2] & in4[0]) ^ (in2[0] & in2[2] & in4[1]) ^ (in2[2] & in2[3] & in4[1]) ^ (in2[2] & in3[0] & in4[1]) ^ (in2[0] & in3[2] & in4[1]) ^ (in2[3] & in3[2] & in4[1]) ^ (in2[2] & in3[3] & in4[1]) ^ (in2[0] & in4[2]) ^ (in2[1] & in4[2]) ^ (in2[0] & in2[1] & in4[2]) ^ (in2[1] & in2[3] & in4[2]) ^ (in2[1] & in3[0] & in4[2]) ^ (in2[0] & in3[1] & in4[2]) ^ (in2[3] & in3[1] & in4[2]) ^ (in2[1] & in3[3] & in4[2]) ^ (in2[1] & in4[3]) ^ (in2[1] & in2[2] & in4[3]) ^ (in2[2] & in3[1] & in4[3]) ^ (in2[1] & in3[2] & in4[3]);
assign out2[0] =  in2[2] ^ in2[3] ^ (in2[0] & in2[1]) ^ (in2[1] & in2[2]) ^ (in2[0] & in2[1] & in2[2]) ^ (in2[0] & in2[3]) ^ (in2[2] & in2[3]) ^ (in2[1] & in3[0]) ^ (in2[1] & in2[2] & in3[0]) ^ (in2[3] & in3[0]) ^ (in2[0] & in3[1]) ^ (in2[2] & in3[1]) ^ (in2[0] & in2[2] & in3[1]) ^ (in2[2] & in3[0] & in3[1]) ^ (in2[1] & in3[2]) ^ (in2[0] & in2[1] & in3[2]) ^ (in2[3] & in3[2]) ^ (in2[1] & in3[0] & in3[2]) ^ (in2[0] & in3[1] & in3[2]) ^ (in2[0] & in3[3]) ^ (in2[2] & in3[3]) ^ (in2[1] & in2[2] & in4[0]) ^ (in2[2] & in3[1] & in4[0]) ^ (in2[1] & in3[2] & in4[0]) ^ (in2[0] & in4[1]) ^ (in2[0] & in2[2] & in4[1]) ^ (in2[2] & in3[0] & in4[1]) ^ (in2[0] & in3[2] & in4[1]) ^ (in2[1] & in4[2]) ^ (in2[0] & in2[1] & in4[2]) ^ (in2[1] & in3[0] & in4[2]) ^ (in2[0] & in3[1] & in4[2]) ^ (in2[0] & in4[3]) ^ (in2[2] & in4[3]);

endmodule
module sbox_sh1(
    in1,
    in2,
    in3,
    out1
);

input wire [3 : 0] in1;
input wire [3 : 0] in2;
input wire [3 : 0] in3;
output wire [3 : 0] out1;

assign out1[3] = 1'b1 ^ in1[1] ^ in1[3] ^ (in1[1] & in1[2]) ^ (in1[0] & in1[1] & in1[2]) ^ (in1[0] & in1[1] & in1[3]) ^ (in1[2] & in1[3]) ^ (in1[0] & in1[2] & in1[3]) ^ (in1[1] & in1[2] & in2[0]) ^ (in1[1] & in1[3] & in2[0]) ^ (in1[2] & in1[3] & in2[0]) ^ (in1[2] & in2[1]) ^ (in1[0] & in1[2] & in2[1]) ^ (in1[0] & in1[3] & in2[1]) ^ (in1[2] & in2[0] & in2[1]) ^ (in1[3] & in2[0] & in2[1]) ^ (in1[1] & in2[2]) ^ (in1[0] & in1[1] & in2[2]) ^ (in1[3] & in2[2]) ^ (in1[0] & in1[3] & in2[2]) ^ (in1[1] & in2[0] & in2[2]) ^ (in1[3] & in2[0] & in2[2]) ^ (in1[0] & in2[1] & in2[2]) ^ (in1[0] & in1[1] & in2[3]) ^ (in1[2] & in2[3]) ^ (in1[0] & in1[2] & in2[3]) ^ (in1[1] & in2[0] & in2[3]) ^ (in1[2] & in2[0] & in2[3]) ^ (in1[0] & in2[1] & in2[3]) ^ (in1[0] & in2[2] & in2[3]) ^ (in1[1] & in1[2] & in3[0]) ^ (in1[1] & in1[3] & in3[0]) ^ (in1[2] & in1[3] & in3[0]) ^ (in1[2] & in2[1] & in3[0]) ^ (in1[3] & in2[1] & in3[0]) ^ (in1[1] & in2[2] & in3[0]) ^ (in1[3] & in2[2] & in3[0]) ^ (in1[1] & in2[3] & in3[0]) ^ (in1[2] & in2[3] & in3[0]) ^ (in1[0] & in1[2] & in3[1]) ^ (in1[0] & in1[3] & in3[1]) ^ (in1[2] & in2[0] & in3[1]) ^ (in1[3] & in2[0] & in3[1]) ^ (in1[0] & in2[2] & in3[1]) ^ (in1[0] & in2[3] & in3[1]) ^ (in1[1] & in3[2]) ^ (in1[0] & in1[1] & in3[2]) ^ (in1[0] & in1[3] & in3[2]) ^ (in1[1] & in2[0] & in3[2]) ^ (in1[3] & in2[0] & in3[2]) ^ (in1[0] & in2[1] & in3[2]) ^ (in1[0] & in2[3] & in3[2]) ^ (in1[0] & in1[1] & in3[3]) ^ (in1[2] & in3[3]) ^ (in1[0] & in1[2] & in3[3]) ^ (in1[1] & in2[0] & in3[3]) ^ (in1[2] & in2[0] & in3[3]) ^ (in1[0] & in2[1] & in3[3]) ^ (in1[0] & in2[2] & in3[3]);
assign out1[2] =  in1[0] ^ in1[3] ^ (in1[0] & in1[1]) ^ (in1[0] & in1[3]) ^ (in1[1] & in1[3]) ^ (in1[0] & in1[1] & in1[3]) ^ (in1[1] & in1[2] & in1[3]) ^ (in1[1] & in2[0]) ^ (in1[3] & in2[0]) ^ (in1[1] & in1[3] & in2[0]) ^ (in1[0] & in2[1]) ^ (in1[3] & in2[1]) ^ (in1[0] & in1[3] & in2[1]) ^ (in1[2] & in1[3] & in2[1]) ^ (in1[3] & in2[0] & in2[1]) ^ (in1[1] & in1[3] & in2[2]) ^ (in1[3] & in2[1] & in2[2]) ^ (in1[0] & in2[3]) ^ (in1[1] & in2[3]) ^ (in1[0] & in1[1] & in2[3]) ^ (in1[1] & in1[2] & in2[3]) ^ (in1[1] & in2[0] & in2[3]) ^ (in1[0] & in2[1] & in2[3]) ^ (in1[2] & in2[1] & in2[3]) ^ (in1[1] & in2[2] & in2[3]) ^ (in1[1] & in1[3] & in3[0]) ^ (in1[3] & in2[1] & in3[0]) ^ (in1[1] & in2[3] & in3[0]) ^ (in1[0] & in3[1]) ^ (in1[0] & in1[3] & in3[1]) ^ (in1[2] & in1[3] & in3[1]) ^ (in1[3] & in2[0] & in3[1]) ^ (in1[3] & in2[2] & in3[1]) ^ (in1[0] & in2[3] & in3[1]) ^ (in1[2] & in2[3] & in3[1]) ^ (in1[1] & in1[3] & in3[2]) ^ (in1[3] & in2[1] & in3[2]) ^ (in1[1] & in2[3] & in3[2]) ^ (in1[0] & in3[3]) ^ (in1[1] & in3[3]) ^ (in1[0] & in1[1] & in3[3]) ^ (in1[1] & in1[2] & in3[3]) ^ (in1[1] & in2[0] & in3[3]) ^ (in1[0] & in2[1] & in3[3]) ^ (in1[2] & in2[1] & in3[3]) ^ (in1[1] & in2[2] & in3[3]);
assign out1[1] = 1'b1 ^ (in1[0] & in1[2]) ^ (in1[1] & in1[2]) ^ (in1[0] & in1[1] & in1[2]) ^ (in1[1] & in1[3]) ^ (in1[1] & in1[2] & in1[3]) ^ (in1[2] & in2[0]) ^ (in1[1] & in1[2] & in2[0]) ^ (in1[2] & in2[1]) ^ (in1[0] & in1[2] & in2[1]) ^ (in1[3] & in2[1]) ^ (in1[2] & in1[3] & in2[1]) ^ (in1[2] & in2[0] & in2[1]) ^ (in1[0] & in2[2]) ^ (in1[1] & in2[2]) ^ (in1[0] & in1[1] & in2[2]) ^ (in1[1] & in1[3] & in2[2]) ^ (in1[1] & in2[0] & in2[2]) ^ (in1[0] & in2[1] & in2[2]) ^ (in1[3] & in2[1] & in2[2]) ^ (in1[1] & in2[3]) ^ (in1[1] & in1[2] & in2[3]) ^ (in1[2] & in2[1] & in2[3]) ^ (in1[1] & in2[2] & in2[3]) ^ (in1[1] & in1[2] & in3[0]) ^ (in1[2] & in2[1] & in3[0]) ^ (in1[1] & in2[2] & in3[0]) ^ (in1[0] & in1[2] & in3[1]) ^ (in1[2] & in1[3] & in3[1]) ^ (in1[2] & in2[0] & in3[1]) ^ (in1[0] & in2[2] & in3[1]) ^ (in1[3] & in2[2] & in3[1]) ^ (in1[2] & in2[3] & in3[1]) ^ (in1[0] & in3[2]) ^ (in1[1] & in3[2]) ^ (in1[0] & in1[1] & in3[2]) ^ (in1[1] & in1[3] & in3[2]) ^ (in1[1] & in2[0] & in3[2]) ^ (in1[0] & in2[1] & in3[2]) ^ (in1[3] & in2[1] & in3[2]) ^ (in1[1] & in2[3] & in3[2]) ^ (in1[1] & in3[3]) ^ (in1[1] & in1[2] & in3[3]) ^ (in1[2] & in2[1] & in3[3]) ^ (in1[1] & in2[2] & in3[3]);
assign out1[0] = 1'b1 ^ in1[2] ^ in1[3] ^ (in1[0] & in1[1]) ^ (in1[1] & in1[2]) ^ (in1[0] & in1[1] & in1[2]) ^ (in1[0] & in1[3]) ^ (in1[2] & in1[3]) ^ (in1[1] & in2[0]) ^ (in1[1] & in1[2] & in2[0]) ^ (in1[3] & in2[0]) ^ (in1[0] & in2[1]) ^ (in1[2] & in2[1]) ^ (in1[0] & in1[2] & in2[1]) ^ (in1[2] & in2[0] & in2[1]) ^ (in1[1] & in2[2]) ^ (in1[0] & in1[1] & in2[2]) ^ (in1[3] & in2[2]) ^ (in1[1] & in2[0] & in2[2]) ^ (in1[0] & in2[1] & in2[2]) ^ (in1[0] & in2[3]) ^ (in1[2] & in2[3]) ^ (in1[1] & in1[2] & in3[0]) ^ (in1[2] & in2[1] & in3[0]) ^ (in1[1] & in2[2] & in3[0]) ^ (in1[0] & in3[1]) ^ (in1[0] & in1[2] & in3[1]) ^ (in1[2] & in2[0] & in3[1]) ^ (in1[0] & in2[2] & in3[1]) ^ (in1[1] & in3[2]) ^ (in1[0] & in1[1] & in3[2]) ^ (in1[1] & in2[0] & in3[2]) ^ (in1[0] & in2[1] & in3[2]) ^ (in1[0] & in3[3]) ^ (in1[2] & in3[3]);

endmodule
module sbox_sh4(
    in4,
    in1,
    in2,
    out4
);

input wire [3 : 0] in4;
input wire [3 : 0] in1;
input wire [3 : 0] in2;
output wire [3 : 0] out4;

assign out4[3] =  in4[1] ^ in4[3] ^ (in4[1] & in4[2]) ^ (in4[0] & in4[1] & in4[2]) ^ (in4[0] & in4[1] & in4[3]) ^ (in4[2] & in4[3]) ^ (in4[0] & in4[2] & in4[3]) ^ (in4[1] & in4[2] & in1[0]) ^ (in4[1] & in4[3] & in1[0]) ^ (in4[2] & in4[3] & in1[0]) ^ (in4[2] & in1[1]) ^ (in4[0] & in4[2] & in1[1]) ^ (in4[0] & in4[3] & in1[1]) ^ (in4[2] & in1[0] & in1[1]) ^ (in4[3] & in1[0] & in1[1]) ^ (in4[1] & in1[2]) ^ (in4[0] & in4[1] & in1[2]) ^ (in4[3] & in1[2]) ^ (in4[0] & in4[3] & in1[2]) ^ (in4[1] & in1[0] & in1[2]) ^ (in4[3] & in1[0] & in1[2]) ^ (in4[0] & in1[1] & in1[2]) ^ (in4[0] & in4[1] & in1[3]) ^ (in4[2] & in1[3]) ^ (in4[0] & in4[2] & in1[3]) ^ (in4[1] & in1[0] & in1[3]) ^ (in4[2] & in1[0] & in1[3]) ^ (in4[0] & in1[1] & in1[3]) ^ (in4[0] & in1[2] & in1[3]) ^ (in4[1] & in4[2] & in2[0]) ^ (in4[1] & in4[3] & in2[0]) ^ (in4[2] & in4[3] & in2[0]) ^ (in4[2] & in1[1] & in2[0]) ^ (in4[3] & in1[1] & in2[0]) ^ (in4[1] & in1[2] & in2[0]) ^ (in4[3] & in1[2] & in2[0]) ^ (in4[1] & in1[3] & in2[0]) ^ (in4[2] & in1[3] & in2[0]) ^ (in4[0] & in4[2] & in2[1]) ^ (in4[0] & in4[3] & in2[1]) ^ (in4[2] & in1[0] & in2[1]) ^ (in4[3] & in1[0] & in2[1]) ^ (in4[0] & in1[2] & in2[1]) ^ (in4[0] & in1[3] & in2[1]) ^ (in4[1] & in2[2]) ^ (in4[0] & in4[1] & in2[2]) ^ (in4[0] & in4[3] & in2[2]) ^ (in4[1] & in1[0] & in2[2]) ^ (in4[3] & in1[0] & in2[2]) ^ (in4[0] & in1[1] & in2[2]) ^ (in4[0] & in1[3] & in2[2]) ^ (in4[0] & in4[1] & in2[3]) ^ (in4[2] & in2[3]) ^ (in4[0] & in4[2] & in2[3]) ^ (in4[1] & in1[0] & in2[3]) ^ (in4[2] & in1[0] & in2[3]) ^ (in4[0] & in1[1] & in2[3]) ^ (in4[0] & in1[2] & in2[3]);
assign out4[2] =  in4[0] ^ in4[3] ^ (in4[0] & in4[1]) ^ (in4[0] & in4[3]) ^ (in4[1] & in4[3]) ^ (in4[0] & in4[1] & in4[3]) ^ (in4[1] & in4[2] & in4[3]) ^ (in4[1] & in1[0]) ^ (in4[3] & in1[0]) ^ (in4[1] & in4[3] & in1[0]) ^ (in4[0] & in1[1]) ^ (in4[3] & in1[1]) ^ (in4[0] & in4[3] & in1[1]) ^ (in4[2] & in4[3] & in1[1]) ^ (in4[3] & in1[0] & in1[1]) ^ (in4[1] & in4[3] & in1[2]) ^ (in4[3] & in1[1] & in1[2]) ^ (in4[0] & in1[3]) ^ (in4[1] & in1[3]) ^ (in4[0] & in4[1] & in1[3]) ^ (in4[1] & in4[2] & in1[3]) ^ (in4[1] & in1[0] & in1[3]) ^ (in4[0] & in1[1] & in1[3]) ^ (in4[2] & in1[1] & in1[3]) ^ (in4[1] & in1[2] & in1[3]) ^ (in4[1] & in4[3] & in2[0]) ^ (in4[3] & in1[1] & in2[0]) ^ (in4[1] & in1[3] & in2[0]) ^ (in4[0] & in2[1]) ^ (in4[0] & in4[3] & in2[1]) ^ (in4[2] & in4[3] & in2[1]) ^ (in4[3] & in1[0] & in2[1]) ^ (in4[3] & in1[2] & in2[1]) ^ (in4[0] & in1[3] & in2[1]) ^ (in4[2] & in1[3] & in2[1]) ^ (in4[1] & in4[3] & in2[2]) ^ (in4[3] & in1[1] & in2[2]) ^ (in4[1] & in1[3] & in2[2]) ^ (in4[0] & in2[3]) ^ (in4[1] & in2[3]) ^ (in4[0] & in4[1] & in2[3]) ^ (in4[1] & in4[2] & in2[3]) ^ (in4[1] & in1[0] & in2[3]) ^ (in4[0] & in1[1] & in2[3]) ^ (in4[2] & in1[1] & in2[3]) ^ (in4[1] & in1[2] & in2[3]);
assign out4[1] =  (in4[0] & in4[2]) ^ (in4[1] & in4[2]) ^ (in4[0] & in4[1] & in4[2]) ^ (in4[1] & in4[3]) ^ (in4[1] & in4[2] & in4[3]) ^ (in4[2] & in1[0]) ^ (in4[1] & in4[2] & in1[0]) ^ (in4[2] & in1[1]) ^ (in4[0] & in4[2] & in1[1]) ^ (in4[3] & in1[1]) ^ (in4[2] & in4[3] & in1[1]) ^ (in4[2] & in1[0] & in1[1]) ^ (in4[0] & in1[2]) ^ (in4[1] & in1[2]) ^ (in4[0] & in4[1] & in1[2]) ^ (in4[1] & in4[3] & in1[2]) ^ (in4[1] & in1[0] & in1[2]) ^ (in4[0] & in1[1] & in1[2]) ^ (in4[3] & in1[1] & in1[2]) ^ (in4[1] & in1[3]) ^ (in4[1] & in4[2] & in1[3]) ^ (in4[2] & in1[1] & in1[3]) ^ (in4[1] & in1[2] & in1[3]) ^ (in4[1] & in4[2] & in2[0]) ^ (in4[2] & in1[1] & in2[0]) ^ (in4[1] & in1[2] & in2[0]) ^ (in4[0] & in4[2] & in2[1]) ^ (in4[2] & in4[3] & in2[1]) ^ (in4[2] & in1[0] & in2[1]) ^ (in4[0] & in1[2] & in2[1]) ^ (in4[3] & in1[2] & in2[1]) ^ (in4[2] & in1[3] & in2[1]) ^ (in4[0] & in2[2]) ^ (in4[1] & in2[2]) ^ (in4[0] & in4[1] & in2[2]) ^ (in4[1] & in4[3] & in2[2]) ^ (in4[1] & in1[0] & in2[2]) ^ (in4[0] & in1[1] & in2[2]) ^ (in4[3] & in1[1] & in2[2]) ^ (in4[1] & in1[3] & in2[2]) ^ (in4[1] & in2[3]) ^ (in4[1] & in4[2] & in2[3]) ^ (in4[2] & in1[1] & in2[3]) ^ (in4[1] & in1[2] & in2[3]);
assign out4[0] =  in4[2] ^ in4[3] ^ (in4[0] & in4[1]) ^ (in4[1] & in4[2]) ^ (in4[0] & in4[1] & in4[2]) ^ (in4[0] & in4[3]) ^ (in4[2] & in4[3]) ^ (in4[1] & in1[0]) ^ (in4[1] & in4[2] & in1[0]) ^ (in4[3] & in1[0]) ^ (in4[0] & in1[1]) ^ (in4[2] & in1[1]) ^ (in4[0] & in4[2] & in1[1]) ^ (in4[2] & in1[0] & in1[1]) ^ (in4[1] & in1[2]) ^ (in4[0] & in4[1] & in1[2]) ^ (in4[3] & in1[2]) ^ (in4[1] & in1[0] & in1[2]) ^ (in4[0] & in1[1] & in1[2]) ^ (in4[0] & in1[3]) ^ (in4[2] & in1[3]) ^ (in4[1] & in4[2] & in2[0]) ^ (in4[2] & in1[1] & in2[0]) ^ (in4[1] & in1[2] & in2[0]) ^ (in4[0] & in2[1]) ^ (in4[0] & in4[2] & in2[1]) ^ (in4[2] & in1[0] & in2[1]) ^ (in4[0] & in1[2] & in2[1]) ^ (in4[1] & in2[2]) ^ (in4[0] & in4[1] & in2[2]) ^ (in4[1] & in1[0] & in2[2]) ^ (in4[0] & in1[1] & in2[2]) ^ (in4[0] & in2[3]) ^ (in4[2] & in2[3]);

endmodule

//2nd order td+1 ti sbox of PRINCE S-box with 8 input shares and 17 output shares
//Following 17 modules represent one output share of the sbox
module td12_share1(
    in1,
    in2,
    in3,
    in4,
    out1
);


    input wire [3:0] in1;
    input wire [3:0] in2;
    input wire [3:0] in3;
    input wire [3:0] in4;
    output wire [3 : 0] out1;

    wire x1, x2, x3, x4;
    wire y1, y2, y3, y4;
    wire z1, z2, z3, z4;
    wire w1, w2, w3, w4;

    assign x1 = in1[3];
    assign x2 = in2[3];
    assign x3 = in3[3];
    assign x4 = in4[3];

    assign y1 = in1[2];
    assign y2 = in2[2];
    assign y3 = in3[2];
    assign y4 = in4[2];

    assign z1 = in1[1];
    assign z2 = in2[1];
    assign z3 = in3[1];
    assign z4 = in4[1];

    assign w1 = in1[0];
    assign w2 = in2[0];
    assign w3 = in3[0];
    assign w4 = in4[0];

    assign out1[3] = 1'b1 ^ z1 ^ (z1 & y1) ^ (z1 & y2) ^ (z3 & y4) ^ (y1 & x1) ^ (y1 & x2) ^ (y2 & x1) ^ (y4 & x3) ^ (w1 & z1 & y1) ^ (w1 & z2 & y1) ^ (w3 & z1 & y1) ^ (w3 & z4 & y3) ^ (w4 & z3 & y3) ^ (w1 & z2 & y2) ^ (w2 & z1 & y2) ^ (w1 & z3 & y3) ^ (w4 & z3 & y4) ^ (w1 & z3 & y2) ^ (w3 & z2 & y1) ^ (w1 & z2 & y3) ^ (w2 & z3 & y1) ^ (w3 & z1 & y2) ^ (w2 & z1 & y3) ^ (w2 & z1 & y4) ^ (w4 & z2 & y1) ^ (w1 & z2 & y4) ^ (w1 & z4 & y2) ^ (w2 & z4 & y1) ^ (w4 & z1 & y2) ^ (w4 & z1 & y3) ^ (w4 & z3 & y1) ^ (w3 & z1 & y4) ^ (w3 & z4 & y1) ^ (w1 & z3 & y4) ^ (w1 & z4 & y3) ^ (w1 & z1 & x1) ^ (w1 & z2 & x1) ^ (w2 & z1 & x1) ^ (w1 & z3 & x1) ^ (w4 & z1 & x1) ^ (w3 & z4 & x3) ^ (w4 & z3 & x3) ^ (w1 & z2 & x2) ^ (w2 & z1 & x2) ^ (w3 & z3 & x1) ^ (w3 & z1 & x3) ^ (w4 & z3 & x4) ^ (w1 & z3 & x2) ^ (w3 & z2 & x1) ^ (w1 & z2 & x3) ^ (w2 & z3 & x1) ^ (w3 & z1 & x2) ^ (w2 & z1 & x3) ^ (w2 & z1 & x4) ^ (w4 & z2 & x1) ^ (w1 & z2 & x4) ^ (w1 & z4 & x2) ^ (w2 & z4 & x1) ^ (w4 & z1 & x2) ^ (w4 & z1 & x3) ^ (w4 & z3 & x1) ^ (w3 & z1 & x4) ^ (w3 & z4 & x1) ^ (w1 & z3 & x4) ^ (w1 & z4 & x3) ^ (w1 & y1 & x1) ^ (w1 & y2 & x1) ^ (w2 & y1 & x1) ^ (w1 & y3 & x1) ^ (w1 & y1 & x4) ^ (w3 & y4 & x3) ^ (w4 & y3 & x3) ^ (w1 & y2 & x2) ^ (w2 & y2 & x1) ^ (w3 & y3 & x1) ^ (w3 & y1 & x3) ^ (w4 & y3 & x4) ^ (w1 & y3 & x2) ^ (w3 & y2 & x1) ^ (w1 & y2 & x3) ^ (w2 & y3 & x1) ^ (w3 & y1 & x2) ^ (w2 & y1 & x3) ^ (w2 & y1 & x4) ^ (w4 & y2 & x1) ^ (w1 & y2 & x4) ^ (w1 & y4 & x2) ^ (w2 & y4 & x1) ^ (w4 & y1 & x2) ^ (w4 & y1 & x3) ^ (w4 & y3 & x1) ^ (w3 & y1 & x4) ^ (w3 & y4 & x1) ^ (w1 & y3 & x4) ^ (w1 & y4 & x3);                                                                   
    assign out1[2] = w1 ^ (w1 & z1) ^ (w1 & z2) ^ (w3 & z4) ^ (w1 & x1) ^ (w1 & x2) ^ (w2 & x1) ^ (w4 & x3) ^ (z1 & x1) ^ (z1 & x2) ^ (z3 & x4) ^ (w1 & z1 & x1) ^ (w4 & z4 & x4) ^ (w1 & z2 & x1) ^ (w3 & z1 & x1) ^ (w3 & z4 & x3) ^ (w1 & z2 & x2) ^ (w2 & z2 & x1) ^ (w3 & z3 & x1) ^ (w3 & z1 & x3) ^ (w4 & z3 & x4) ^ (w1 & z3 & x2) ^ (w3 & z2 & x1) ^ (w1 & z2 & x3) ^ (w2 & z3 & x1) ^ (w3 & z1 & x2) ^ (w2 & z1 & x3) ^ (w2 & z1 & x4) ^ (w4 & z2 & x1) ^ (w1 & z2 & x4) ^ (w1 & z4 & x2) ^ (w2 & z4 & x1) ^ (w4 & z1 & x2) ^ (w4 & z1 & x3) ^ (w4 & z3 & x1) ^ (w3 & z1 & x4) ^ (w3 & z4 & x1) ^ (w1 & z3 & x4) ^ (w1 & z4 & x3) ^ (z1 & y1 & x1) ^ (z1 & y2 & x1) ^ (z1 & y1 & x2) ^ (z1 & y3 & x1) ^ (z4 & y1 & x1) ^ (z3 & y3 & x4) ^ (z1 & y2 & x2) ^ (z2 & y2 & x1) ^ (z3 & y3 & x1) ^ (z3 & y1 & x3) ^ (z4 & y1 & x4) ^ (z4 & y3 & x4) ^ (z1 & y3 & x2) ^ (z3 & y2 & x1) ^ (z1 & y2 & x3) ^ (z2 & y3 & x1) ^ (z3 & y1 & x2) ^ (z2 & y1 & x3) ^ (z2 & y1 & x4) ^ (z4 & y2 & x1) ^ (z1 & y2 & x4) ^ (z1 & y4 & x2) ^ (z2 & y4 & x1) ^ (z4 & y1 & x2) ^ (z4 & y1 & x3) ^ (z4 & y3 & x1) ^ (z3 & y1 & x4) ^ (z3 & y4 & x1) ^ (z1 & y3 & x4) ^ (z1 & y4 & x3);                                                       
    assign out1[1] = 1'b1 ^ (w1 & y1) ^ (w1 & y2) ^ (w3 & y4) ^ (z1 & y1) ^ (z1 & y2) ^ (z2 & y1) ^ (z4 & y3) ^ (z1 & x1) ^ (z1 & x2) ^ (z3 & x4) ^ (w1 & z1 & y1) ^ (w4 & z4 & y4) ^ (w1 & z2 & y1) ^ (w3 & z1 & y1) ^ (w3 & z4 & y3) ^ (w4 & z3 & y3) ^ (w1 & z2 & y2) ^ (w2 & z1 & y2) ^ (w1 & z3 & y3) ^ (w4 & z3 & y4) ^ (w1 & z3 & y2) ^ (w3 & z2 & y1) ^ (w1 & z2 & y3) ^ (w2 & z3 & y1) ^ (w3 & z1 & y2) ^ (w2 & z1 & y3) ^ (w2 & z1 & y4) ^ (w4 & z2 & y1) ^ (w1 & z2 & y4) ^ (w1 & z4 & y2) ^ (w2 & z4 & y1) ^ (w4 & z1 & y2) ^ (w4 & z1 & y3) ^ (w4 & z3 & y1) ^ (w3 & z1 & y4) ^ (w3 & z4 & y1) ^ (w1 & z3 & y4) ^ (w1 & z4 & y3) ^ (z1 & y1 & x1) ^ (z1 & y2 & x1) ^ (z1 & y1 & x2) ^ (z1 & y3 & x1) ^ (z4 & y1 & x1) ^ (z3 & y3 & x4) ^ (z1 & y2 & x2) ^ (z2 & y2 & x1) ^ (z3 & y3 & x1) ^ (z3 & y1 & x3) ^ (z4 & y1 & x4) ^ (z4 & y3 & x4) ^ (z1 & y3 & x2) ^ (z3 & y2 & x1) ^ (z1 & y2 & x3) ^ (z2 & y3 & x1) ^ (z3 & y1 & x2) ^ (z2 & y1 & x3) ^ (z2 & y1 & x4) ^ (z4 & y2 & x1) ^ (z1 & y2 & x4) ^ (z1 & y4 & x2) ^ (z2 & y4 & x1) ^ (z4 & y1 & x2) ^ (z4 & y1 & x3) ^ (z4 & y3 & x1) ^ (z3 & y1 & x4) ^ (z3 & y4 & x1) ^ (z1 & y3 & x4) ^ (z1 & y4 & x3);                                                            
    assign out1[0] = 1'b1 ^ y1 ^ (w1 & z1) ^ (w1 & z2) ^ (w3 & z4) ^ (z1 & y1) ^ (z1 & y2) ^ (z2 & y1) ^ (z4 & y3) ^ (w1 & x1) ^ (w1 & x2) ^ (w3 & x4) ^ (y1 & x1) ^ (y4 & x4) ^ (y1 & x2) ^ (y3 & x4) ^ (w1 & z1 & y1) ^ (w1 & z2 & y1) ^ (w2 & z1 & y1) ^ (w3 & z1 & y1) ^ (w3 & z3 & y4) ^ (w1 & z2 & y2) ^ (w2 & z2 & y1) ^ (w1 & z3 & y3) ^ (w4 & z4 & y1) ^ (w3 & z4 & y4) ^ (w1 & z3 & y2) ^ (w3 & z2 & y1) ^ (w1 & z2 & y3) ^ (w2 & z3 & y1) ^ (w3 & z1 & y2) ^ (w2 & z1 & y3) ^ (w2 & z1 & y4) ^ (w4 & z2 & y1) ^ (w1 & z2 & y4) ^ (w1 & z4 & y2) ^ (w2 & z4 & y1) ^ (w4 & z1 & y2) ^ (w4 & z1 & y3) ^ (w4 & z3 & y1) ^ (w3 & z1 & y4) ^ (w3 & z4 & y1) ^ (w1 & z3 & y4) ^ (w1 & z4 & y3);                                           

endmodule

module td12_share2(
    in1,
    in2,
    in5,
    in6,
    out2
);


    input wire [3:0] in1;
    input wire [3:0] in2;
    input wire [3:0] in5;
    input wire [3 : 0] in6;
    output wire [3 : 0] out2;

    wire x1, x2, x5, x6;
    wire y1, y2, y5, y6;
    wire z1, z2, z5, z6;
    wire w1, w2, w5, w6;

    assign x1 = in1[3];
    assign x2 = in2[3];
    assign x5 = in5[3];
    assign x6 = in6[3];

    assign y1 = in1[2];
    assign y2 = in2[2];
    assign y5 = in5[2];
    assign y6 = in6[2];

    assign z1 = in1[1];
    assign z2 = in2[1];
    assign z5 = in5[1];
    assign z6 = in6[1];

    assign w1 = in1[0];
    assign w2 = in2[0];
    assign w5 = in5[0];
    assign w6 = in6[0];

    assign out2[3] = z2 ^ (z2 & y2) ^ (z2 & y1) ^ (z1 & y5) ^ (y2 & x2) ^ (y6 & x6) ^ (y1 & x5) ^ (y5 & x6) ^ (w5 & z5 & y5) ^ (w2 & z1 & y1) ^ (w5 & z1 & y1) ^ (w1 & z5 & y1) ^ (w5 & z5 & y6) ^ (w2 & z2 & y1) ^ (w1 & z5 & y5) ^ (w5 & z1 & y5) ^ (w5 & z5 & y1) ^ (w6 & z6 & y5) ^ (w5 & z1 & y2) ^ (w1 & z5 & y2) ^ (w2 & z5 & y1) ^ (w2 & z1 & y5) ^ (w5 & z2 & y1) ^ (w1 & z2 & y5) ^ (w1 & z2 & y6) ^ (w1 & z6 & y2) ^ (w6 & z1 & y2) ^ (w2 & z6 & y1) ^ (w2 & z1 & y6) ^ (w6 & z2 & y1) ^ (w1 & z6 & y5) ^ (w5 & z1 & y6) ^ (w1 & z5 & y6) ^ (w5 & z6 & y1) ^ (w6 & z1 & y5) ^ (w6 & z5 & y1) ^ (w6 & z6 & x6) ^ (w1 & z1 & x2) ^ (w5 & z1 & x1) ^ (w1 & z1 & x5) ^ (w1 & z6 & x1) ^ (w5 & z5 & x6) ^ (w2 & z2 & x1) ^ (w1 & z5 & x5) ^ (w5 & z1 & x5) ^ (w5 & z5 & x1) ^ (w1 & z6 & x6) ^ (w6 & z6 & x5) ^ (w5 & z1 & x2) ^ (w1 & z5 & x2) ^ (w2 & z5 & x1) ^ (w2 & z1 & x5) ^ (w5 & z2 & x1) ^ (w1 & z2 & x5) ^ (w1 & z2 & x6) ^ (w1 & z6 & x2) ^ (w6 & z1 & x2) ^ (w2 & z6 & x1) ^ (w2 & z1 & x6) ^ (w6 & z2 & x1) ^ (w1 & z6 & x5) ^ (w5 & z1 & x6) ^ (w1 & z5 & x6) ^ (w5 & z6 & x1) ^ (w6 & z1 & x5) ^ (w6 & z5 & x1) ^ (w6 & y6 & x6) ^ (w1 & y1 & x2) ^ (w5 & y1 & x1) ^ (w1 & y1 & x5) ^ (w1 & y1 & x6) ^ (w6 & y1 & x1) ^ (w6 & y5 & x5) ^ (w2 & y1 & x2) ^ (w1 & y5 & x5) ^ (w5 & y1 & x5) ^ (w1 & y6 & x6) ^ (w5 & y6 & x6) ^ (w5 & y1 & x2) ^ (w1 & y5 & x2) ^ (w2 & y5 & x1) ^ (w2 & y1 & x5) ^ (w5 & y2 & x1) ^ (w1 & y2 & x5) ^ (w1 & y2 & x6) ^ (w1 & y6 & x2) ^ (w6 & y1 & x2) ^ (w2 & y6 & x1) ^ (w2 & y1 & x6) ^ (w6 & y2 & x1) ^ (w1 & y6 & x5) ^ (w5 & y1 & x6) ^ (w1 & y5 & x6) ^ (w5 & y6 & x1) ^ (w6 & y1 & x5) ^ (w6 & y5 & x1);                                                       
    assign out2[2] = w2 ^ (w2 & z2) ^ (w2 & z1) ^ (w1 & z5) ^ (w2 & x2) ^ (w6 & x6) ^ (w1 & x5) ^ (w5 & x6) ^ (z5 & x5) ^ (z2 & x1) ^ (z1 & x5) ^ (z5 & x6) ^ (w5 & z5 & x5) ^ (w2 & z1 & x1) ^ (w5 & z1 & x1) ^ (w1 & z5 & x1) ^ (w5 & z5 & x6) ^ (w2 & z1 & x2) ^ (w1 & z5 & x5) ^ (w5 & z1 & x5) ^ (w6 & z6 & x1) ^ (w6 & z6 & x5) ^ (w5 & z1 & x2) ^ (w1 & z5 & x2) ^ (w2 & z5 & x1) ^ (w2 & z1 & x5) ^ (w5 & z2 & x1) ^ (w1 & z2 & x5) ^ (w1 & z2 & x6) ^ (w1 & z6 & x2) ^ (w6 & z1 & x2) ^ (w2 & z6 & x1) ^ (w2 & z1 & x6) ^ (w6 & z2 & x1) ^ (w1 & z6 & x5) ^ (w5 & z1 & x6) ^ (w1 & z5 & x6) ^ (w5 & z6 & x1) ^ (w6 & z1 & x5) ^ (w6 & z5 & x1) ^ (z2 & y1 & x1) ^ (z5 & y1 & x1) ^ (z1 & y1 & x5) ^ (z1 & y5 & x1) ^ (z1 & y6 & x1) ^ (z5 & y6 & x5) ^ (z2 & y1 & x2) ^ (z1 & y5 & x5) ^ (z5 & y1 & x5) ^ (z1 & y6 & x6) ^ (z6 & y1 & x6) ^ (z6 & y6 & x5) ^ (z5 & y1 & x2) ^ (z1 & y5 & x2) ^ (z2 & y5 & x1) ^ (z2 & y1 & x5) ^ (z5 & y2 & x1) ^ (z1 & y2 & x5) ^ (z1 & y2 & x6) ^ (z1 & y6 & x2) ^ (z6 & y1 & x2) ^ (z2 & y6 & x1) ^ (z2 & y1 & x6) ^ (z6 & y2 & x1) ^ (z1 & y6 & x5) ^ (z5 & y1 & x6) ^ (z1 & y5 & x6) ^ (z5 & y6 & x1) ^ (z6 & y1 & x5) ^ (z6 & y5 & x1);                                           
    assign out2[1] = (w2 & y2) ^ (w2 & y1) ^ (w1 & y5) ^ (z2 & y2) ^ (z6 & y6) ^ (z1 & y5) ^ (z5 & y6) ^ (z5 & x5) ^ (z2 & x1) ^ (z1 & x5) ^ (z5 & x6) ^ (w5 & z5 & y5) ^ (w2 & z1 & y1) ^ (w5 & z1 & y1) ^ (w1 & z5 & y1) ^ (w5 & z5 & y6) ^ (w2 & z2 & y1) ^ (w1 & z5 & y5) ^ (w5 & z1 & y5) ^ (w5 & z5 & y1) ^ (w6 & z6 & y5) ^ (w5 & z1 & y2) ^ (w1 & z5 & y2) ^ (w2 & z5 & y1) ^ (w2 & z1 & y5) ^ (w5 & z2 & y1) ^ (w1 & z2 & y5) ^ (w1 & z2 & y6) ^ (w1 & z6 & y2) ^ (w6 & z1 & y2) ^ (w2 & z6 & y1) ^ (w2 & z1 & y6) ^ (w6 & z2 & y1) ^ (w1 & z6 & y5) ^ (w5 & z1 & y6) ^ (w1 & z5 & y6) ^ (w5 & z6 & y1) ^ (w6 & z1 & y5) ^ (w6 & z5 & y1) ^ (z2 & y1 & x1) ^ (z5 & y1 & x1) ^ (z1 & y1 & x5) ^ (z1 & y5 & x1) ^ (z1 & y6 & x1) ^ (z5 & y5 & x6) ^ (z2 & y1 & x2) ^ (z1 & y5 & x5) ^ (z5 & y1 & x5) ^ (z1 & y6 & x6) ^ (z6 & y1 & x6) ^ (z6 & y6 & x5) ^ (z5 & y1 & x2) ^ (z1 & y5 & x2) ^ (z2 & y5 & x1) ^ (z2 & y1 & x5) ^ (z5 & y2 & x1) ^ (z1 & y2 & x5) ^ (z1 & y2 & x6) ^ (z1 & y6 & x2) ^ (z6 & y1 & x2) ^ (z2 & y6 & x1) ^ (z2 & y1 & x6) ^ (z6 & y2 & x1) ^ (z1 & y6 & x5) ^ (z5 & y1 & x6) ^ (z1 & y5 & x6) ^ (z5 & y6 & x1) ^ (z6 & y1 & x5) ^ (z6 & y5 & x1);                                                
    assign out2[0] = y2 ^ (w2 & z2) ^ (w2 & z1) ^ (w1 & z5) ^ (z2 & y2) ^ (z6 & y6) ^ (z1 & y5) ^ (z5 & y6) ^ (w5 & x5) ^ (w2 & x1) ^ (w1 & x5) ^ (w5 & x6) ^ (y5 & x5) ^ (y2 & x1) ^ (y1 & x5) ^ (y6 & x5) ^ (w6 & z6 & y6) ^ (w1 & z1 & y2) ^ (w5 & z1 & y1) ^ (w6 & z1 & y1) ^ (w5 & z6 & y5) ^ (w2 & z1 & y2) ^ (w1 & z5 & y5) ^ (w5 & z1 & y5) ^ (w6 & z1 & y6) ^ (w5 & z1 & y2) ^ (w1 & z5 & y2) ^ (w2 & z5 & y1) ^ (w2 & z1 & y5) ^ (w5 & z2 & y1) ^ (w1 & z2 & y5) ^ (w1 & z2 & y6) ^ (w1 & z6 & y2) ^ (w6 & z1 & y2) ^ (w2 & z6 & y1) ^ (w2 & z1 & y6) ^ (w6 & z2 & y1) ^ (w1 & z6 & y5) ^ (w5 & z1 & y6) ^ (w1 & z5 & y6) ^ (w5 & z6 & y1) ^ (w6 & z1 & y5) ^ (w6 & z5 & y1);

endmodule

module td12_share3(
    in1,
    in2,
    in7,
    in8,
    out3
);


    input wire [3:0] in1;
    input wire [3:0] in2;
    input wire [3:0] in7;
    input wire [3 : 0] in8;
    output wire [3 : 0] out3;

    wire x1, x2, x7, x8;
    wire y1, y2, y7, y8;
    wire z1, z2, z7, z8;
    wire w1, w2, w7, w8;

    assign x1 = in1[3];
    assign x2 = in2[3];
    assign x7 = in7[3];
    assign x8 = in8[3];

    assign y1 = in1[2];
    assign y2 = in2[2];
    assign y7 = in7[2];
    assign y8 = in8[2];

    assign z1 = in1[1];
    assign z2 = in2[1];
    assign z7 = in7[1];
    assign z8 = in8[1];

    assign w1 = in1[0];
    assign w2 = in2[0];
    assign w7 = in7[0];
    assign w8 = in8[0];

    assign out3[3] = z7 ^ (z7 & y7) ^ (z7 & y1) ^ (z1 & y7) ^ (z1 & y8) ^ (z7 & y8) ^ (y7 & x1) ^ (y1 & x7) ^ (y7 & x8) ^ (w1 & z1 & y2) ^ (w1 & z7 & y1) ^ (w7 & z1 & y1) ^ (w8 & z1 & y1) ^ (w7 & z7 & y8) ^ (w8 & z7 & y7) ^ (w7 & z7 & y1) ^ (w1 & z7 & y7) ^ (w8 & z1 & y8) ^ (w8 & z8 & y7) ^ (w8 & z7 & y8) ^ (w1 & z7 & y2) ^ (w2 & z1 & y7) ^ (w2 & z7 & y1) ^ (w1 & z2 & y7) ^ (w7 & z1 & y2) ^ (w7 & z2 & y1) ^ (w8 & z1 & y2) ^ (w1 & z2 & y8) ^ (w1 & z8 & y2) ^ (w2 & z1 & y8) ^ (w8 & z2 & y1) ^ (w2 & z8 & y1) ^ (w8 & z1 & y7) ^ (w8 & z7 & y1) ^ (w1 & z8 & y7) ^ (w7 & z1 & y8) ^ (w7 & z8 & y1) ^ (w1 & z7 & y8) ^ (w2 & z7 & y8) ^ (w8 & z7 & y2) ^ (w2 & z8 & y7) ^ (w7 & z2 & y8) ^ (w7 & z8 & y2) ^ (w8 & z2 & y7) ^ (w8 & z1 & x1) ^ (w8 & z7 & x7) ^ (w1 & z7 & x7) ^ (w8 & z1 & x8) ^ (w8 & z8 & x7) ^ (w8 & z7 & x8) ^ (w1 & z7 & x2) ^ (w2 & z1 & x7) ^ (w2 & z7 & x1) ^ (w1 & z2 & x7) ^ (w7 & z1 & x2) ^ (w7 & z2 & x1) ^ (w8 & z1 & x2) ^ (w1 & z2 & x8) ^ (w1 & z8 & x2) ^ (w2 & z1 & x8) ^ (w8 & z2 & x1) ^ (w2 & z8 & x1) ^ (w8 & z1 & x7) ^ (w8 & z7 & x1) ^ (w1 & z8 & x7) ^ (w7 & z1 & x8) ^ (w7 & z8 & x1) ^ (w1 & z7 & x8) ^ (w2 & z7 & x8) ^ (w8 & z7 & x2) ^ (w2 & z8 & x7) ^ (w7 & z2 & x8) ^ (w7 & z8 & x2) ^ (w8 & z2 & x7) ^ (w8 & y1 & x1) ^ (w8 & y7 & x7) ^ (w7 & y7 & x1) ^ (w7 & y1 & x7) ^ (w8 & y8 & x7) ^ (w8 & y7 & x8) ^ (w1 & y7 & x2) ^ (w2 & y1 & x7) ^ (w2 & y7 & x1) ^ (w1 & y2 & x7) ^ (w7 & y1 & x2) ^ (w7 & y2 & x1) ^ (w8 & y1 & x2) ^ (w1 & y2 & x8) ^ (w1 & y8 & x2) ^ (w2 & y1 & x8) ^ (w8 & y2 & x1) ^ (w2 & y8 & x1) ^ (w8 & y1 & x7) ^ (w8 & y7 & x1) ^ (w1 & y8 & x7) ^ (w7 & y1 & x8) ^ (w7 & y8 & x1) ^ (w1 & y7 & x8) ^ (w2 & y7 & x8) ^ (w8 & y7 & x2) ^ (w2 & y8 & x7) ^ (w7 & y2 & x8) ^ (w7 & y8 & x2) ^ (w8 & y2 & x7);                                                                                                                                                                 
    assign out3[2] = w7 ^ (w7 & z7) ^ (w7 & z1) ^ (w1 & z7) ^ (w1 & z8) ^ (w7 & z8) ^ (w7 & x1) ^ (w1 & x7) ^ (w7 & x8) ^ (z7 & x1) ^ (z1 & x7) ^ (z1 & x8) ^ (z7 & x8) ^ (w1 & z1 & x2) ^ (w1 & z7 & x1) ^ (w7 & z1 & x1) ^ (w8 & z1 & x1) ^ (w7 & z7 & x8) ^ (w8 & z7 & x7) ^ (w7 & z7 & x1) ^ (w1 & z7 & x7) ^ (w8 & z1 & x8) ^ (w8 & z8 & x7) ^ (w8 & z7 & x8) ^ (w1 & z7 & x2) ^ (w2 & z1 & x7) ^ (w2 & z7 & x1) ^ (w1 & z2 & x7) ^ (w7 & z1 & x2) ^ (w7 & z2 & x1) ^ (w8 & z1 & x2) ^ (w1 & z2 & x8) ^ (w1 & z8 & x2) ^ (w2 & z1 & x8) ^ (w8 & z2 & x1) ^ (w2 & z8 & x1) ^ (w8 & z1 & x7) ^ (w8 & z7 & x1) ^ (w1 & z8 & x7) ^ (w7 & z1 & x8) ^ (w7 & z8 & x1) ^ (w1 & z7 & x8) ^ (w2 & z7 & x8) ^ (w8 & z7 & x2) ^ (w2 & z8 & x7) ^ (w7 & z2 & x8) ^ (w7 & z8 & x2) ^ (w8 & z2 & x7) ^ (z8 & y1 & x1) ^ (z7 & y8 & x7) ^ (z1 & y7 & x7) ^ (z8 & y8 & x1) ^ (z8 & y8 & x7) ^ (z8 & y7 & x8) ^ (z1 & y7 & x2) ^ (z2 & y1 & x7) ^ (z2 & y7 & x1) ^ (z1 & y2 & x7) ^ (z7 & y1 & x2) ^ (z7 & y2 & x1) ^ (z8 & y1 & x2) ^ (z1 & y2 & x8) ^ (z1 & y8 & x2) ^ (z2 & y1 & x8) ^ (z8 & y2 & x1) ^ (z2 & y8 & x1) ^ (z8 & y1 & x7) ^ (z8 & y7 & x1) ^ (z1 & y8 & x7) ^ (z7 & y1 & x8) ^ (z7 & y8 & x1) ^ (z1 & y7 & x8) ^ (z2 & y7 & x8) ^ (z8 & y7 & x2) ^ (z2 & y8 & x7) ^ (z7 & y2 & x8) ^ (z7 & y8 & x2) ^ (z8 & y2 & x7);                                                                                                                                                     
    assign out3[1] = (w7 & y7) ^ (w7 & y1) ^ (w1 & y7) ^ (w1 & y8) ^ (w7 & y8) ^ (z7 & y1) ^ (z1 & y7) ^ (z7 & y8) ^ (z7 & x1) ^ (z1 & x7) ^ (z1 & x8) ^ (z7 & x8) ^ (w1 & z1 & y2) ^ (w1 & z7 & y1) ^ (w7 & z1 & y1) ^ (w8 & z1 & y1) ^ (w7 & z7 & y8) ^ (w8 & z7 & y7) ^ (w7 & z7 & y1) ^ (w1 & z7 & y7) ^ (w8 & z1 & y8) ^ (w8 & z8 & y7) ^ (w8 & z7 & y8) ^ (w1 & z7 & y2) ^ (w2 & z1 & y7) ^ (w2 & z7 & y1) ^ (w1 & z2 & y7) ^ (w7 & z1 & y2) ^ (w7 & z2 & y1) ^ (w8 & z1 & y2) ^ (w1 & z2 & y8) ^ (w1 & z8 & y2) ^ (w2 & z1 & y8) ^ (w8 & z2 & y1) ^ (w2 & z8 & y1) ^ (w8 & z1 & y7) ^ (w8 & z7 & y1) ^ (w1 & z8 & y7) ^ (w7 & z1 & y8) ^ (w7 & z8 & y1) ^ (w1 & z7 & y8) ^ (w2 & z7 & y8) ^ (w8 & z7 & y2) ^ (w2 & z8 & y7) ^ (w7 & z2 & y8) ^ (w7 & z8 & y2) ^ (w8 & z2 & y7) ^ (z8 & y1 & x1) ^ (z8 & y7 & x7) ^ (z1 & y7 & x7) ^ (z8 & y8 & x1) ^ (z8 & y8 & x7) ^ (z8 & y7 & x8) ^ (z1 & y7 & x2) ^ (z2 & y1 & x7) ^ (z2 & y7 & x1) ^ (z1 & y2 & x7) ^ (z7 & y1 & x2) ^ (z7 & y2 & x1) ^ (z8 & y1 & x2) ^ (z1 & y2 & x8) ^ (z1 & y8 & x2) ^ (z2 & y1 & x8) ^ (z8 & y2 & x1) ^ (z2 & y8 & x1) ^ (z8 & y1 & x7) ^ (z8 & y7 & x1) ^ (z1 & y8 & x7) ^ (z7 & y1 & x8) ^ (z7 & y8 & x1) ^ (z1 & y7 & x8) ^ (z2 & y7 & x8) ^ (z8 & y7 & x2) ^ (z2 & y8 & x7) ^ (z7 & y2 & x8) ^ (z7 & y8 & x2) ^ (z8 & y2 & x7);                                                                                                                                                          
    assign out3[0] = y7 ^ (w7 & z7) ^ (w7 & z1) ^ (w1 & z7) ^ (w1 & z8) ^ (w7 & z8) ^ (z7 & y1) ^ (z1 & y7) ^ (z7 & y8) ^ (w7 & x1) ^ (w1 & x7) ^ (w1 & x8) ^ (w7 & x8) ^ (y7 & x1) ^ (y1 & x7) ^ (y1 & x8) ^ (y7 & x8) ^ (w1 & z7 & y1) ^ (w7 & z1 & y1) ^ (w1 & z1 & y7) ^ (w1 & z8 & y1) ^ (w7 & z7 & y8) ^ (w8 & z7 & y7) ^ (w7 & z7 & y1) ^ (w1 & z7 & y7) ^ (w8 & z8 & y7) ^ (w8 & z7 & y8) ^ (w7 & z8 & y8) ^ (w1 & z7 & y2) ^ (w2 & z1 & y7) ^ (w2 & z7 & y1) ^ (w1 & z2 & y7) ^ (w7 & z1 & y2) ^ (w7 & z2 & y1) ^ (w8 & z1 & y2) ^ (w1 & z2 & y8) ^ (w1 & z8 & y2) ^ (w2 & z1 & y8) ^ (w8 & z2 & y1) ^ (w2 & z8 & y1) ^ (w8 & z1 & y7) ^ (w8 & z7 & y1) ^ (w1 & z8 & y7) ^ (w7 & z1 & y8) ^ (w7 & z8 & y1) ^ (w1 & z7 & y8) ^ (w2 & z7 & y8) ^ (w8 & z7 & y2) ^ (w2 & z8 & y7) ^ (w7 & z2 & y8) ^ (w7 & z8 & y2) ^ (w8 & z2 & y7);

endmodule

module td12_share4(
    in1,
    in3,
    in5,
    in7,
    out4
);


    input wire [3:0] in1;
    input wire [3:0] in3;
    input wire [3:0] in5;
    input wire [3 : 0] in7;
    output wire [3 : 0] out4;

    wire x1, x3, x5, x7;
    wire y1, y3, y5, y7;
    wire z1, z3, z5, z7;
    wire w1, w3, w5, w7;

    assign x1 = in1[3];
    assign x3 = in3[3];
    assign x5 = in5[3];
    assign x7 = in7[3];

    assign y1 = in1[2];
    assign y3 = in3[2];
    assign y5 = in5[2];
    assign y7 = in7[2];

    assign z1 = in1[1];
    assign z3 = in3[1];
    assign z5 = in5[1];
    assign z7 = in7[1];

    assign w1 = in1[0];
    assign w3 = in3[0];
    assign w5 = in5[0];
    assign w7 = in7[0];

    assign out4[3] = z3 ^ (z3 & y3) ^ (z1 & y3) ^ (z5 & y1) ^ (z5 & y7) ^ (y1 & x3) ^ (y5 & x1) ^ (y7 & x3) ^ (y5 & x7) ^ (w1 & z1 & y3) ^ (w1 & z1 & y5) ^ (w1 & z1 & y7) ^ (w7 & z3 & y3) ^ (w7 & z5 & y5) ^ (w3 & z3 & y1) ^ (w3 & z1 & y3) ^ (w7 & z1 & y7) ^ (w7 & z3 & y7) ^ (w7 & z5 & y7) ^ (w3 & z5 & y1) ^ (w5 & z3 & y1) ^ (w1 & z5 & y3) ^ (w3 & z1 & y5) ^ (w1 & z3 & y5) ^ (w5 & z1 & y3) ^ (w1 & z3 & y7) ^ (w7 & z3 & y1) ^ (w7 & z1 & y3) ^ (w3 & z7 & y1) ^ (w1 & z7 & y3) ^ (w3 & z1 & y7) ^ (w5 & z1 & y7) ^ (w1 & z7 & y5) ^ (w5 & z7 & y1) ^ (w1 & z5 & y7) ^ (w7 & z1 & y5) ^ (w7 & z5 & y1) ^ (w1 & z1 & x3) ^ (w3 & z1 & x1) ^ (w1 & z5 & x1) ^ (w1 & z7 & x1) ^ (w7 & z1 & x1) ^ (w3 & z7 & x3) ^ (w5 & z5 & x7) ^ (w1 & z3 & x3) ^ (w7 & z7 & x1) ^ (w7 & z1 & x7) ^ (w7 & z3 & x7) ^ (w7 & z5 & x7) ^ (w3 & z5 & x1) ^ (w5 & z3 & x1) ^ (w1 & z5 & x3) ^ (w3 & z1 & x5) ^ (w1 & z3 & x5) ^ (w5 & z1 & x3) ^ (w1 & z3 & x7) ^ (w7 & z3 & x1) ^ (w7 & z1 & x3) ^ (w3 & z7 & x1) ^ (w1 & z7 & x3) ^ (w3 & z1 & x7) ^ (w5 & z1 & x7) ^ (w1 & z7 & x5) ^ (w5 & z7 & x1) ^ (w1 & z5 & x7) ^ (w7 & z1 & x5) ^ (w7 & z5 & x1) ^ (w1 & y1 & x3) ^ (w3 & y1 & x1) ^ (w1 & y5 & x1) ^ (w1 & y7 & x1) ^ (w7 & y1 & x1) ^ (w3 & y7 & x3) ^ (w5 & y5 & x7) ^ (w1 & y3 & x3) ^ (w5 & y5 & x1) ^ (w1 & y7 & x7) ^ (w7 & y3 & x7) ^ (w5 & y7 & x7) ^ (w3 & y5 & x1) ^ (w5 & y3 & x1) ^ (w1 & y5 & x3) ^ (w3 & y1 & x5) ^ (w1 & y3 & x5) ^ (w5 & y1 & x3) ^ (w1 & y3 & x7) ^ (w7 & y3 & x1) ^ (w7 & y1 & x3) ^ (w3 & y7 & x1) ^ (w1 & y7 & x3) ^ (w3 & y1 & x7) ^ (w5 & y1 & x7) ^ (w1 & y7 & x5) ^ (w5 & y7 & x1) ^ (w1 & y5 & x7) ^ (w7 & y1 & x5) ^ (w7 & y5 & x1);                                           
    assign out4[2] = w3 ^ (w3 & z3) ^ (w1 & z3) ^ (w5 & z1) ^ (w5 & z7) ^ (w1 & x3) ^ (w5 & x1) ^ (w7 & x3) ^ (w5 & x7) ^ (z1 & x3) ^ (z5 & x1) ^ (z7 & x3) ^ (w7 & z7 & x7) ^ (w1 & z1 & x3) ^ (w1 & z1 & x5) ^ (w1 & z1 & x7) ^ (w7 & z3 & x3) ^ (w5 & z5 & x7) ^ (w1 & z3 & x3) ^ (w5 & z5 & x1) ^ (w7 & z1 & x7) ^ (w7 & z7 & x3) ^ (w7 & z7 & x5) ^ (w3 & z5 & x1) ^ (w5 & z3 & x1) ^ (w1 & z5 & x3) ^ (w3 & z1 & x5) ^ (w1 & z3 & x5) ^ (w5 & z1 & x3) ^ (w1 & z3 & x7) ^ (w7 & z3 & x1) ^ (w7 & z1 & x3) ^ (w3 & z7 & x1) ^ (w1 & z7 & x3) ^ (w3 & z1 & x7) ^ (w5 & z1 & x7) ^ (w1 & z7 & x5) ^ (w5 & z7 & x1) ^ (w1 & z5 & x7) ^ (w7 & z1 & x5) ^ (w7 & z5 & x1) ^ (z1 & y1 & x3) ^ (z3 & y1 & x1) ^ (z1 & y7 & x1) ^ (z7 & y1 & x1) ^ (z1 & y1 & x7) ^ (z7 & y3 & x3) ^ (z1 & y3 & x3) ^ (z5 & y5 & x1) ^ (z7 & y7 & x1) ^ (z7 & y1 & x7) ^ (z7 & y3 & x7) ^ (z7 & y7 & x5) ^ (z3 & y5 & x1) ^ (z5 & y3 & x1) ^ (z1 & y5 & x3) ^ (z3 & y1 & x5) ^ (z1 & y3 & x5) ^ (z5 & y1 & x3) ^ (z1 & y3 & x7) ^ (z7 & y3 & x1) ^ (z7 & y1 & x3) ^ (z3 & y7 & x1) ^ (z1 & y7 & x3) ^ (z3 & y1 & x7) ^ (z5 & y1 & x7) ^ (z1 & y7 & x5) ^ (z5 & y7 & x1) ^ (z1 & y5 & x7) ^ (z7 & y1 & x5) ^ (z7 & y5 & x1);                          
    assign out4[1] = (w3 & y3) ^ (w1 & y3) ^ (w5 & y1) ^ (w5 & y7) ^ (z1 & y3) ^ (z3 & y1) ^ (z7 & y3) ^ (z5 & y7) ^ (z1 & x3) ^ (z5 & x1) ^ (z7 & x3) ^ (z7 & x5) ^ (w1 & z1 & y3) ^ (w1 & z1 & y5) ^ (w1 & z1 & y7) ^ (w7 & z3 & y3) ^ (w5 & z5 & y7) ^ (w3 & z3 & y1) ^ (w3 & z1 & y3) ^ (w7 & z1 & y7) ^ (w7 & z7 & y3) ^ (w7 & z7 & y5) ^ (w3 & z5 & y1) ^ (w5 & z3 & y1) ^ (w1 & z5 & y3) ^ (w3 & z1 & y5) ^ (w1 & z3 & y5) ^ (w5 & z1 & y3) ^ (w1 & z3 & y7) ^ (w7 & z3 & y1) ^ (w7 & z1 & y3) ^ (w3 & z7 & y1) ^ (w1 & z7 & y3) ^ (w3 & z1 & y7) ^ (w5 & z1 & y7) ^ (w1 & z7 & y5) ^ (w5 & z7 & y1) ^ (w1 & z5 & y7) ^ (w7 & z1 & y5) ^ (w7 & z5 & y1) ^ (z1 & y1 & x3) ^ (z3 & y1 & x1) ^ (z1 & y7 & x1) ^ (z7 & y1 & x1) ^ (z1 & y1 & x7) ^ (z7 & y3 & x3) ^ (z1 & y3 & x3) ^ (z5 & y5 & x1) ^ (z7 & y7 & x1) ^ (z7 & y1 & x7) ^ (z7 & y3 & x7) ^ (z7 & y5 & x7) ^ (z3 & y5 & x1) ^ (z5 & y3 & x1) ^ (z1 & y5 & x3) ^ (z3 & y1 & x5) ^ (z1 & y3 & x5) ^ (z5 & y1 & x3) ^ (z1 & y3 & x7) ^ (z7 & y3 & x1) ^ (z7 & y1 & x3) ^ (z3 & y7 & x1) ^ (z1 & y7 & x3) ^ (z3 & y1 & x7) ^ (z5 & y1 & x7) ^ (z1 & y7 & x5) ^ (z5 & y7 & x1) ^ (z1 & y5 & x7) ^ (z7 & y1 & x5) ^ (z7 & y5 & x1);                                    
    assign out4[0] = y3 ^ (w3 & z3) ^ (w1 & z3) ^ (w5 & z1) ^ (w5 & z7) ^ (z1 & y3) ^ (z5 & y1) ^ (z7 & y3) ^ (z5 & y7) ^ (w1 & x3) ^ (w5 & x1) ^ (w7 & x3) ^ (y7 & x7) ^ (y1 & x3) ^ (y5 & x1) ^ (y5 & x7) ^ (w7 & z7 & y7) ^ (w1 & z1 & y3) ^ (w1 & z1 & y5) ^ (w3 & z7 & y3) ^ (w5 & z7 & y5) ^ (w3 & z3 & y1) ^ (w3 & z1 & y3) ^ (w5 & z5 & y1) ^ (w7 & z1 & y7) ^ (w7 & z7 & y3) ^ (w3 & z5 & y1) ^ (w5 & z3 & y1) ^ (w1 & z5 & y3) ^ (w3 & z1 & y5) ^ (w1 & z3 & y5) ^ (w5 & z1 & y3) ^ (w1 & z3 & y7) ^ (w7 & z3 & y1) ^ (w7 & z1 & y3) ^ (w3 & z7 & y1) ^ (w1 & z7 & y3) ^ (w3 & z1 & y7) ^ (w5 & z1 & y7) ^ (w1 & z7 & y5) ^ (w5 & z7 & y1) ^ (w1 & z5 & y7) ^ (w7 & z1 & y5) ^ (w7 & z5 & y1);

endmodule

module td12_share5(
    in1,
    in3,
    in6,
    in8,
    out5
);


    input wire [3:0] in1;
    input wire [3:0] in3;
    input wire [3:0] in6;
    input wire [3 : 0] in8;
    output wire [3 : 0] out5;

    wire x1, x3, x6, x8;
    wire y1, y3, y6, y8;
    wire z1, z3, z6, z8;
    wire w1, w3, w6, w8;

    assign x1 = in1[3];
    assign x3 = in3[3];
    assign x6 = in6[3];
    assign x8 = in8[3];

    assign y1 = in1[2];
    assign y3 = in3[2];
    assign y6 = in6[2];
    assign y8 = in8[2];

    assign z1 = in1[1];
    assign z3 = in3[1];
    assign z6 = in6[1];
    assign z8 = in8[1];

    assign w1 = in1[0];
    assign w3 = in3[0];
    assign w6 = in6[0];
    assign w8 = in8[0];

    assign out5[3] = z6 ^ (z6 & y6) ^ (z3 & y1) ^ (z1 & y6) ^ (z8 & y6) ^ (y3 & x1) ^ (y6 & x1) ^ (y1 & x8) ^ (y8 & x6) ^ (w1 & z3 & y1) ^ (w1 & z1 & y6) ^ (w6 & z1 & y1) ^ (w1 & z8 & y1) ^ (w3 & z8 & y3) ^ (w6 & z8 & y6) ^ (w1 & z6 & y6) ^ (w6 & z6 & y1) ^ (w8 & z8 & y1) ^ (w8 & z8 & y3) ^ (w8 & z8 & y6) ^ (w3 & z1 & y6) ^ (w3 & z6 & y1) ^ (w1 & z3 & y6) ^ (w1 & z6 & y3) ^ (w6 & z1 & y3) ^ (w6 & z3 & y1) ^ (w8 & z3 & y1) ^ (w8 & z1 & y3) ^ (w1 & z8 & y3) ^ (w1 & z3 & y8) ^ (w3 & z8 & y1) ^ (w3 & z1 & y8) ^ (w6 & z1 & y8) ^ (w8 & z6 & y1) ^ (w6 & z8 & y1) ^ (w8 & z1 & y6) ^ (w1 & z6 & y8) ^ (w1 & z8 & y6) ^ (w6 & z8 & y3) ^ (w8 & z3 & y6) ^ (w6 & z3 & y8) ^ (w3 & z6 & y8) ^ (w3 & z8 & y6) ^ (w8 & z6 & y3) ^ (w1 & z8 & x1) ^ (w6 & z6 & x8) ^ (w6 & z6 & x1) ^ (w8 & z8 & x1) ^ (w6 & z3 & x6) ^ (w6 & z8 & x8) ^ (w3 & z1 & x6) ^ (w3 & z6 & x1) ^ (w1 & z3 & x6) ^ (w1 & z6 & x3) ^ (w6 & z1 & x3) ^ (w6 & z3 & x1) ^ (w8 & z3 & x1) ^ (w8 & z1 & x3) ^ (w1 & z8 & x3) ^ (w1 & z3 & x8) ^ (w3 & z8 & x1) ^ (w3 & z1 & x8) ^ (w6 & z1 & x8) ^ (w8 & z6 & x1) ^ (w6 & z8 & x1) ^ (w8 & z1 & x6) ^ (w1 & z6 & x8) ^ (w1 & z8 & x6) ^ (w6 & z8 & x3) ^ (w8 & z3 & x6) ^ (w6 & z3 & x8) ^ (w3 & z6 & x8) ^ (w3 & z8 & x6) ^ (w8 & z6 & x3) ^ (w1 & y8 & x1) ^ (w6 & y8 & x6) ^ (w6 & y6 & x1) ^ (w8 & y1 & x8) ^ (w6 & y3 & x6) ^ (w6 & y8 & x8) ^ (w3 & y1 & x6) ^ (w3 & y6 & x1) ^ (w1 & y3 & x6) ^ (w1 & y6 & x3) ^ (w6 & y1 & x3) ^ (w6 & y3 & x1) ^ (w8 & y3 & x1) ^ (w8 & y1 & x3) ^ (w1 & y8 & x3) ^ (w1 & y3 & x8) ^ (w3 & y8 & x1) ^ (w3 & y1 & x8) ^ (w6 & y1 & x8) ^ (w8 & y6 & x1) ^ (w6 & y8 & x1) ^ (w8 & y1 & x6) ^ (w1 & y6 & x8) ^ (w1 & y8 & x6) ^ (w6 & y8 & x3) ^ (w8 & y3 & x6) ^ (w6 & y3 & x8) ^ (w3 & y6 & x8) ^ (w3 & y8 & x6) ^ (w8 & y6 & x3);                                                                                                                                                                 
    assign out5[2] = w6 ^ (w6 & z6) ^ (w3 & z1) ^ (w1 & z6) ^ (w8 & z6) ^ (w3 & x1) ^ (w6 & x1) ^ (w1 & x8) ^ (w8 & x6) ^ (z3 & x1) ^ (z6 & x1) ^ (z3 & x6) ^ (z8 & x6) ^ (w1 & z3 & x1) ^ (w1 & z1 & x6) ^ (w6 & z1 & x1) ^ (w1 & z8 & x1) ^ (w3 & z8 & x3) ^ (w6 & z8 & x6) ^ (w1 & z6 & x6) ^ (w6 & z1 & x6) ^ (w8 & z8 & x1) ^ (w6 & z8 & x8) ^ (w8 & z6 & x8) ^ (w3 & z1 & x6) ^ (w3 & z6 & x1) ^ (w1 & z3 & x6) ^ (w1 & z6 & x3) ^ (w6 & z1 & x3) ^ (w6 & z3 & x1) ^ (w8 & z3 & x1) ^ (w8 & z1 & x3) ^ (w1 & z8 & x3) ^ (w1 & z3 & x8) ^ (w3 & z8 & x1) ^ (w3 & z1 & x8) ^ (w6 & z1 & x8) ^ (w8 & z6 & x1) ^ (w6 & z8 & x1) ^ (w8 & z1 & x6) ^ (w1 & z6 & x8) ^ (w1 & z8 & x6) ^ (w6 & z8 & x3) ^ (w8 & z3 & x6) ^ (w6 & z3 & x8) ^ (w3 & z6 & x8) ^ (w3 & z8 & x6) ^ (w8 & z6 & x3) ^ (z1 & y8 & x1) ^ (z6 & y6 & x8) ^ (z1 & y8 & x8) ^ (z6 & y6 & x3) ^ (z8 & y8 & x3) ^ (z8 & y8 & x6) ^ (z3 & y1 & x6) ^ (z3 & y6 & x1) ^ (z1 & y3 & x6) ^ (z1 & y6 & x3) ^ (z6 & y1 & x3) ^ (z6 & y3 & x1) ^ (z8 & y3 & x1) ^ (z8 & y1 & x3) ^ (z1 & y8 & x3) ^ (z1 & y3 & x8) ^ (z3 & y8 & x1) ^ (z3 & y1 & x8) ^ (z6 & y1 & x8) ^ (z8 & y6 & x1) ^ (z6 & y8 & x1) ^ (z8 & y1 & x6) ^ (z1 & y6 & x8) ^ (z1 & y8 & x6) ^ (z6 & y8 & x3) ^ (z8 & y3 & x6) ^ (z6 & y3 & x8) ^ (z3 & y6 & x8) ^ (z3 & y8 & x6) ^ (z8 & y6 & x3);                                                                                                                                                     
    assign out5[1] = (w6 & y6) ^ (w3 & y1) ^ (w1 & y6) ^ (w8 & y3) ^ (w6 & y8) ^ (z6 & y1) ^ (z8 & y1) ^ (z8 & y6) ^ (z3 & x1) ^ (z6 & x1) ^ (z3 & x6) ^ (z8 & x6) ^ (w1 & z3 & y1) ^ (w1 & z1 & y6) ^ (w6 & z1 & y1) ^ (w1 & z8 & y1) ^ (w3 & z8 & y3) ^ (w6 & z8 & y6) ^ (w1 & z6 & y6) ^ (w6 & z6 & y1) ^ (w8 & z8 & y1) ^ (w6 & z8 & y8) ^ (w8 & z6 & y8) ^ (w3 & z1 & y6) ^ (w3 & z6 & y1) ^ (w1 & z3 & y6) ^ (w1 & z6 & y3) ^ (w6 & z1 & y3) ^ (w6 & z3 & y1) ^ (w8 & z3 & y1) ^ (w8 & z1 & y3) ^ (w1 & z8 & y3) ^ (w1 & z3 & y8) ^ (w3 & z8 & y1) ^ (w3 & z1 & y8) ^ (w6 & z1 & y8) ^ (w8 & z6 & y1) ^ (w6 & z8 & y1) ^ (w8 & z1 & y6) ^ (w1 & z6 & y8) ^ (w1 & z8 & y6) ^ (w6 & z8 & y3) ^ (w8 & z3 & y6) ^ (w6 & z3 & y8) ^ (w3 & z6 & y8) ^ (w3 & z8 & y6) ^ (w8 & z6 & y3) ^ (z1 & y8 & x1) ^ (z6 & y6 & x8) ^ (z1 & y8 & x8) ^ (z3 & y6 & x6) ^ (z8 & y8 & x3) ^ (z8 & y8 & x6) ^ (z3 & y1 & x6) ^ (z3 & y6 & x1) ^ (z1 & y3 & x6) ^ (z1 & y6 & x3) ^ (z6 & y1 & x3) ^ (z6 & y3 & x1) ^ (z8 & y3 & x1) ^ (z8 & y1 & x3) ^ (z1 & y8 & x3) ^ (z1 & y3 & x8) ^ (z3 & y8 & x1) ^ (z3 & y1 & x8) ^ (z6 & y1 & x8) ^ (z8 & y6 & x1) ^ (z6 & y8 & x1) ^ (z8 & y1 & x6) ^ (z1 & y6 & x8) ^ (z1 & y8 & x6) ^ (z6 & y8 & x3) ^ (z8 & y3 & x6) ^ (z6 & y3 & x8) ^ (z3 & y6 & x8) ^ (z3 & y8 & x6) ^ (z8 & y6 & x3);                                                                                                                                                          
    assign out5[0] = y6 ^ (w6 & z6) ^ (w3 & z1) ^ (w1 & z6) ^ (w8 & z6) ^ (z3 & y1) ^ (z6 & y1) ^ (z1 & y8) ^ (z8 & y6) ^ (w3 & x1) ^ (w6 & x1) ^ (w3 & x6) ^ (w8 & x6) ^ (y3 & x1) ^ (y6 & x1) ^ (y3 & x6) ^ (y8 & x6) ^ (w1 & z3 & y1) ^ (w1 & z1 & y6) ^ (w1 & z1 & y8) ^ (w3 & z3 & y8) ^ (w8 & z6 & y6) ^ (w6 & z6 & y8) ^ (w1 & z6 & y6) ^ (w8 & z1 & y8) ^ (w6 & z3 & y6) ^ (w6 & z8 & y8) ^ (w8 & z6 & y8) ^ (w3 & z1 & y6) ^ (w3 & z6 & y1) ^ (w1 & z3 & y6) ^ (w1 & z6 & y3) ^ (w6 & z1 & y3) ^ (w6 & z3 & y1) ^ (w8 & z3 & y1) ^ (w8 & z1 & y3) ^ (w1 & z8 & y3) ^ (w1 & z3 & y8) ^ (w3 & z8 & y1) ^ (w3 & z1 & y8) ^ (w6 & z1 & y8) ^ (w8 & z6 & y1) ^ (w6 & z8 & y1) ^ (w8 & z1 & y6) ^ (w1 & z6 & y8) ^ (w1 & z8 & y6) ^ (w6 & z8 & y3) ^ (w8 & z3 & y6) ^ (w6 & z3 & y8) ^ (w3 & z6 & y8) ^ (w3 & z8 & y6) ^ (w8 & z6 & y3);

endmodule

module td12_share6(
    in1,
    in4,
    in5,
    in8,
    out6
);


    input wire [3:0] in1;
    input wire [3:0] in4;
    input wire [3:0] in5;
    input wire [3 : 0] in8;
    output wire [3 : 0] out6;

    wire x1, x4, x5, x8;
    wire y1, y4, y5, y8;
    wire z1, z4, z5, z8;
    wire w1, w4, w5, w8;

    assign x1 = in1[3];
    assign x4 = in4[3];
    assign x5 = in5[3];
    assign x8 = in8[3];

    assign y1 = in1[2];
    assign y4 = in4[2];
    assign y5 = in5[2];
    assign y8 = in8[2];

    assign z1 = in1[1];
    assign z4 = in4[1];
    assign z5 = in5[1];
    assign z8 = in8[1];

    assign w1 = in1[0];
    assign w4 = in4[0];
    assign w5 = in5[0];
    assign w8 = in8[0];

    assign out6[3] = z4 ^ (z5 & y5) ^ (z1 & y4) ^ (z8 & y1) ^ (z4 & y8) ^ (y4 & x1) ^ (y8 & x1) ^ (y8 & x4) ^ (y5 & x8) ^ (w1 & z4 & y1) ^ (w4 & z1 & y1) ^ (w1 & z1 & y8) ^ (w4 & z4 & y8) ^ (w8 & z4 & y4) ^ (w5 & z8 & y5) ^ (w4 & z1 & y4) ^ (w1 & z8 & y8) ^ (w8 & z4 & y8) ^ (w8 & z8 & y4) ^ (w1 & z5 & y4) ^ (w5 & z4 & y1) ^ (w1 & z4 & y5) ^ (w4 & z1 & y5) ^ (w4 & z5 & y1) ^ (w5 & z1 & y4) ^ (w8 & z4 & y1) ^ (w4 & z1 & y8) ^ (w1 & z4 & y8) ^ (w1 & z8 & y4) ^ (w8 & z1 & y4) ^ (w4 & z8 & y1) ^ (w1 & z5 & y8) ^ (w5 & z1 & y8) ^ (w1 & z8 & y5) ^ (w8 & z5 & y1) ^ (w8 & z1 & y5) ^ (w5 & z8 & y1) ^ (w4 & z5 & y8) ^ (w8 & z5 & y4) ^ (w4 & z8 & y5) ^ (w5 & z4 & y8) ^ (w5 & z8 & y4) ^ (w8 & z4 & y5) ^ (w1 & z1 & x8) ^ (w4 & z8 & x4) ^ (w4 & z1 & x4) ^ (w1 & z8 & x8) ^ (w8 & z4 & x8) ^ (w8 & z8 & x4) ^ (w1 & z5 & x4) ^ (w5 & z4 & x1) ^ (w1 & z4 & x5) ^ (w4 & z1 & x5) ^ (w4 & z5 & x1) ^ (w5 & z1 & x4) ^ (w8 & z4 & x1) ^ (w4 & z1 & x8) ^ (w1 & z4 & x8) ^ (w1 & z8 & x4) ^ (w8 & z1 & x4) ^ (w4 & z8 & x1) ^ (w1 & z5 & x8) ^ (w5 & z1 & x8) ^ (w1 & z8 & x5) ^ (w8 & z5 & x1) ^ (w8 & z1 & x5) ^ (w5 & z8 & x1) ^ (w4 & z5 & x8) ^ (w8 & z5 & x4) ^ (w4 & z8 & x5) ^ (w5 & z4 & x8) ^ (w5 & z8 & x4) ^ (w8 & z4 & x5) ^ (w1 & y1 & x8) ^ (w4 & y4 & x8) ^ (w4 & y1 & x4) ^ (w1 & y8 & x8) ^ (w8 & y8 & x1) ^ (w8 & y4 & x8) ^ (w4 & y8 & x8) ^ (w1 & y5 & x4) ^ (w5 & y4 & x1) ^ (w1 & y4 & x5) ^ (w4 & y1 & x5) ^ (w4 & y5 & x1) ^ (w5 & y1 & x4) ^ (w8 & y4 & x1) ^ (w4 & y1 & x8) ^ (w1 & y4 & x8) ^ (w1 & y8 & x4) ^ (w8 & y1 & x4) ^ (w4 & y8 & x1) ^ (w1 & y5 & x8) ^ (w5 & y1 & x8) ^ (w1 & y8 & x5) ^ (w8 & y5 & x1) ^ (w8 & y1 & x5) ^ (w5 & y8 & x1) ^ (w4 & y5 & x8) ^ (w8 & y5 & x4) ^ (w4 & y8 & x5) ^ (w5 & y4 & x8) ^ (w5 & y8 & x4) ^ (w8 & y4 & x5);                                                                                                                                                                 
    assign out6[2] = w4 ^ (w5 & z5) ^ (w1 & z4) ^ (w8 & z1) ^ (w4 & z8) ^ (w4 & x1) ^ (w8 & x1) ^ (w8 & x4) ^ (w5 & x8) ^ (z4 & x1) ^ (z8 & x1) ^ (z8 & x4) ^ (z5 & x8) ^ (w1 & z4 & x1) ^ (w4 & z1 & x1) ^ (w1 & z1 & x8) ^ (w4 & z4 & x8) ^ (w8 & z4 & x4) ^ (w5 & z8 & x5) ^ (w4 & z1 & x4) ^ (w1 & z8 & x8) ^ (w8 & z4 & x8) ^ (w4 & z8 & x8) ^ (w1 & z5 & x4) ^ (w5 & z4 & x1) ^ (w1 & z4 & x5) ^ (w4 & z1 & x5) ^ (w4 & z5 & x1) ^ (w5 & z1 & x4) ^ (w8 & z4 & x1) ^ (w4 & z1 & x8) ^ (w1 & z4 & x8) ^ (w1 & z8 & x4) ^ (w8 & z1 & x4) ^ (w4 & z8 & x1) ^ (w1 & z5 & x8) ^ (w5 & z1 & x8) ^ (w1 & z8 & x5) ^ (w8 & z5 & x1) ^ (w8 & z1 & x5) ^ (w5 & z8 & x1) ^ (w4 & z5 & x8) ^ (w8 & z5 & x4) ^ (w4 & z8 & x5) ^ (w5 & z4 & x8) ^ (w5 & z8 & x4) ^ (w8 & z4 & x5) ^ (z1 & y1 & x8) ^ (z4 & y8 & x4) ^ (z4 & y4 & x1) ^ (z8 & y1 & x8) ^ (z8 & y4 & x8) ^ (z4 & y8 & x8) ^ (z1 & y5 & x4) ^ (z5 & y4 & x1) ^ (z1 & y4 & x5) ^ (z4 & y1 & x5) ^ (z4 & y5 & x1) ^ (z5 & y1 & x4) ^ (z8 & y4 & x1) ^ (z4 & y1 & x8) ^ (z1 & y4 & x8) ^ (z1 & y8 & x4) ^ (z8 & y1 & x4) ^ (z4 & y8 & x1) ^ (z1 & y5 & x8) ^ (z5 & y1 & x8) ^ (z1 & y8 & x5) ^ (z8 & y5 & x1) ^ (z8 & y1 & x5) ^ (z5 & y8 & x1) ^ (z4 & y5 & x8) ^ (z8 & y5 & x4) ^ (z4 & y8 & x5) ^ (z5 & y4 & x8) ^ (z5 & y8 & x4) ^ (z8 & y4 & x5);                                                                                                                                                                      
    assign out6[1] = (w4 & y4) ^ (w1 & y4) ^ (w8 & y1) ^ (w4 & y8) ^ (z4 & y1) ^ (z5 & y1) ^ (z1 & y8) ^ (z4 & y8) ^ (z4 & x1) ^ (z8 & x1) ^ (z8 & x4) ^ (z5 & x8) ^ (w1 & z4 & y1) ^ (w4 & z1 & y1) ^ (w1 & z1 & y8) ^ (w4 & z4 & y8) ^ (w8 & z4 & y4) ^ (w5 & z8 & y5) ^ (w4 & z1 & y4) ^ (w1 & z8 & y8) ^ (w8 & z4 & y8) ^ (w4 & z8 & y8) ^ (w1 & z5 & y4) ^ (w5 & z4 & y1) ^ (w1 & z4 & y5) ^ (w4 & z1 & y5) ^ (w4 & z5 & y1) ^ (w5 & z1 & y4) ^ (w8 & z4 & y1) ^ (w4 & z1 & y8) ^ (w1 & z4 & y8) ^ (w1 & z8 & y4) ^ (w8 & z1 & y4) ^ (w4 & z8 & y1) ^ (w1 & z5 & y8) ^ (w5 & z1 & y8) ^ (w1 & z8 & y5) ^ (w8 & z5 & y1) ^ (w8 & z1 & y5) ^ (w5 & z8 & y1) ^ (w4 & z5 & y8) ^ (w8 & z5 & y4) ^ (w4 & z8 & y5) ^ (w5 & z4 & y8) ^ (w5 & z8 & y4) ^ (w8 & z4 & y5) ^ (z1 & y1 & x8) ^ (z4 & y8 & x4) ^ (z4 & y4 & x1) ^ (z8 & y1 & x8) ^ (z8 & y4 & x8) ^ (z4 & y8 & x8) ^ (z1 & y5 & x4) ^ (z5 & y4 & x1) ^ (z1 & y4 & x5) ^ (z4 & y1 & x5) ^ (z4 & y5 & x1) ^ (z5 & y1 & x4) ^ (z8 & y4 & x1) ^ (z4 & y1 & x8) ^ (z1 & y4 & x8) ^ (z1 & y8 & x4) ^ (z8 & y1 & x4) ^ (z4 & y8 & x1) ^ (z1 & y5 & x8) ^ (z5 & y1 & x8) ^ (z1 & y8 & x5) ^ (z8 & y5 & x1) ^ (z8 & y1 & x5) ^ (z5 & y8 & x1) ^ (z4 & y5 & x8) ^ (z8 & y5 & x4) ^ (z4 & y8 & x5) ^ (z5 & y4 & x8) ^ (z5 & y8 & x4) ^ (z8 & y4 & x5);                                                                                                                                                                           
    assign out6[0] = y4 ^ (w5 & z5) ^ (w1 & z4) ^ (w8 & z1) ^ (w4 & z8) ^ (z4 & y1) ^ (z8 & y1) ^ (z8 & y4) ^ (z5 & y8) ^ (w4 & x1) ^ (w8 & x1) ^ (w8 & x4) ^ (w5 & x8) ^ (y4 & x1) ^ (y8 & x1) ^ (y8 & x4) ^ (y5 & x8) ^ (w1 & z1 & y4) ^ (w1 & z5 & y1) ^ (w8 & z1 & y1) ^ (w4 & z4 & y8) ^ (w8 & z4 & y4) ^ (w1 & z4 & y4) ^ (w1 & z8 & y8) ^ (w8 & z8 & y1) ^ (w8 & z4 & y8) ^ (w4 & z8 & y8) ^ (w1 & z5 & y4) ^ (w5 & z4 & y1) ^ (w1 & z4 & y5) ^ (w4 & z1 & y5) ^ (w4 & z5 & y1) ^ (w5 & z1 & y4) ^ (w8 & z4 & y1) ^ (w4 & z1 & y8) ^ (w1 & z4 & y8) ^ (w1 & z8 & y4) ^ (w8 & z1 & y4) ^ (w4 & z8 & y1) ^ (w1 & z5 & y8) ^ (w5 & z1 & y8) ^ (w1 & z8 & y5) ^ (w8 & z5 & y1) ^ (w8 & z1 & y5) ^ (w5 & z8 & y1) ^ (w4 & z5 & y8) ^ (w8 & z5 & y4) ^ (w4 & z8 & y5) ^ (w5 & z4 & y8) ^ (w5 & z8 & y4) ^ (w8 & z4 & y5);

endmodule

module td12_share7(
    in1,
    in4,
    in6,
    in7,
    out7
);


    input wire [3:0] in1;
    input wire [3:0] in4;
    input wire [3:0] in6;
    input wire [3 : 0] in7;
    output wire [3 : 0] out7;

    wire x1, x4, x6, x7;
    wire y1, y4, y6, y7;
    wire z1, z4, z6, z7;
    wire w1, w4, w6, w7;

    assign x1 = in1[3];
    assign x4 = in4[3];
    assign x6 = in6[3];
    assign x7 = in7[3];

    assign y1 = in1[2];
    assign y4 = in4[2];
    assign y6 = in6[2];
    assign y7 = in7[2];

    assign z1 = in1[1];
    assign z4 = in4[1];
    assign z6 = in6[1];
    assign z7 = in7[1];

    assign w1 = in1[0];
    assign w4 = in4[0];
    assign w6 = in6[0];
    assign w7 = in7[0];

    assign out7[3] = x1 ^ (z4 & y1) ^ (z6 & y1) ^ (z7 & y4) ^ (z7 & y6) ^ (y1 & x4) ^ (y1 & x6) ^ (y7 & x4) ^ (y7 & x6) ^ (w1 & z1 & y4) ^ (w1 & z6 & y1) ^ (w4 & z4 & y7) ^ (w7 & z4 & y4) ^ (w6 & z7 & y6) ^ (w1 & z4 & y4) ^ (w4 & z4 & y1) ^ (w6 & z1 & y6) ^ (w7 & z4 & y7) ^ (w7 & z7 & y6) ^ (w4 & z1 & y6) ^ (w6 & z4 & y1) ^ (w4 & z6 & y1) ^ (w6 & z1 & y4) ^ (w1 & z4 & y6) ^ (w1 & z6 & y4) ^ (w1 & z4 & y7) ^ (w4 & z7 & y1) ^ (w4 & z1 & y7) ^ (w1 & z7 & y4) ^ (w7 & z4 & y1) ^ (w7 & z1 & y4) ^ (w6 & z7 & y1) ^ (w7 & z1 & y6) ^ (w6 & z1 & y7) ^ (w1 & z6 & y7) ^ (w1 & z7 & y6) ^ (w7 & z6 & y1) ^ (w1 & z4 & x1) ^ (w1 & z1 & x4) ^ (w1 & z1 & x6) ^ (w6 & z1 & x1) ^ (w1 & z1 & x7) ^ (w4 & z4 & x7) ^ (w7 & z4 & x4) ^ (w1 & z4 & x4) ^ (w4 & z4 & x1) ^ (w6 & z1 & x6) ^ (w6 & z4 & x6) ^ (w7 & z7 & x4) ^ (w6 & z7 & x7) ^ (w4 & z1 & x6) ^ (w6 & z4 & x1) ^ (w4 & z6 & x1) ^ (w6 & z1 & x4) ^ (w1 & z4 & x6) ^ (w1 & z6 & x4) ^ (w1 & z4 & x7) ^ (w4 & z7 & x1) ^ (w4 & z1 & x7) ^ (w1 & z7 & x4) ^ (w7 & z4 & x1) ^ (w7 & z1 & x4) ^ (w6 & z7 & x1) ^ (w7 & z1 & x6) ^ (w6 & z1 & x7) ^ (w1 & z6 & x7) ^ (w1 & z7 & x6) ^ (w7 & z6 & x1) ^ (w1 & y4 & x1) ^ (w4 & y1 & x1) ^ (w1 & y6 & x1) ^ (w1 & y1 & x7) ^ (w4 & y4 & x7) ^ (w7 & y4 & x4) ^ (w1 & y4 & x4) ^ (w4 & y4 & x1) ^ (w6 & y1 & x6) ^ (w6 & y4 & x6) ^ (w7 & y7 & x4) ^ (w7 & y6 & x7) ^ (w4 & y1 & x6) ^ (w6 & y4 & x1) ^ (w4 & y6 & x1) ^ (w6 & y1 & x4) ^ (w1 & y4 & x6) ^ (w1 & y6 & x4) ^ (w1 & y4 & x7) ^ (w4 & y7 & x1) ^ (w4 & y1 & x7) ^ (w1 & y7 & x4) ^ (w7 & y4 & x1) ^ (w7 & y1 & x4) ^ (w6 & y7 & x1) ^ (w7 & y1 & x6) ^ (w6 & y1 & x7) ^ (w1 & y6 & x7) ^ (w1 & y7 & x6) ^ (w7 & y6 & x1);                          
    assign out7[2] = x1 ^ (w4 & z1) ^ (w6 & z1) ^ (w7 & z4) ^ (w7 & z6) ^ (w1 & x4) ^ (w1 & x6) ^ (w7 & x4) ^ (w7 & x6) ^ (z1 & x4) ^ (z1 & x6) ^ (z4 & x7) ^ (z7 & x6) ^ (w1 & z1 & x4) ^ (w1 & z6 & x1) ^ (w4 & z4 & x7) ^ (w6 & z7 & x6) ^ (w6 & z6 & x7) ^ (w1 & z4 & x4) ^ (w4 & z4 & x1) ^ (w6 & z4 & x6) ^ (w7 & z7 & x4) ^ (w7 & z7 & x6) ^ (w4 & z1 & x6) ^ (w6 & z4 & x1) ^ (w4 & z6 & x1) ^ (w6 & z1 & x4) ^ (w1 & z4 & x6) ^ (w1 & z6 & x4) ^ (w1 & z4 & x7) ^ (w4 & z7 & x1) ^ (w4 & z1 & x7) ^ (w1 & z7 & x4) ^ (w7 & z4 & x1) ^ (w7 & z1 & x4) ^ (w6 & z7 & x1) ^ (w7 & z1 & x6) ^ (w6 & z1 & x7) ^ (w1 & z6 & x7) ^ (w1 & z7 & x6) ^ (w7 & z6 & x1) ^ (z1 & y4 & x1) ^ (z1 & y1 & x4) ^ (z1 & y1 & x6) ^ (z6 & y1 & x1) ^ (z4 & y6 & x4) ^ (z4 & y7 & x4) ^ (z6 & y7 & x6) ^ (z1 & y4 & x4) ^ (z6 & y6 & x1) ^ (z6 & y6 & x4) ^ (z4 & y7 & x7) ^ (z7 & y7 & x6) ^ (z4 & y1 & x6) ^ (z6 & y4 & x1) ^ (z4 & y6 & x1) ^ (z6 & y1 & x4) ^ (z1 & y4 & x6) ^ (z1 & y6 & x4) ^ (z1 & y4 & x7) ^ (z4 & y7 & x1) ^ (z4 & y1 & x7) ^ (z1 & y7 & x4) ^ (z7 & y4 & x1) ^ (z7 & y1 & x4) ^ (z6 & y7 & x1) ^ (z7 & y1 & x6) ^ (z6 & y1 & x7) ^ (z1 & y6 & x7) ^ (z1 & y7 & x6) ^ (z7 & y6 & x1);                               
    assign out7[1] = (w4 & y1) ^ (w6 & y1) ^ (w7 & y4) ^ (w7 & y6) ^ (z1 & y4) ^ (z1 & y6) ^ (z7 & y4) ^ (z7 & y6) ^ (z1 & x4) ^ (z1 & x6) ^ (z7 & x4) ^ (z7 & x6) ^ (w1 & z1 & y4) ^ (w1 & z6 & y1) ^ (w4 & z4 & y7) ^ (w6 & z7 & y6) ^ (w6 & z6 & y7) ^ (w1 & z4 & y4) ^ (w4 & z4 & y1) ^ (w6 & z1 & y6) ^ (w4 & z7 & y7) ^ (w7 & z7 & y6) ^ (w4 & z1 & y6) ^ (w6 & z4 & y1) ^ (w4 & z6 & y1) ^ (w6 & z1 & y4) ^ (w1 & z4 & y6) ^ (w1 & z6 & y4) ^ (w1 & z4 & y7) ^ (w4 & z7 & y1) ^ (w4 & z1 & y7) ^ (w1 & z7 & y4) ^ (w7 & z4 & y1) ^ (w7 & z1 & y4) ^ (w6 & z7 & y1) ^ (w7 & z1 & y6) ^ (w6 & z1 & y7) ^ (w1 & z6 & y7) ^ (w1 & z7 & y6) ^ (w7 & z6 & y1) ^ (z1 & y4 & x1) ^ (z1 & y1 & x4) ^ (z1 & y1 & x6) ^ (z6 & y1 & x1) ^ (z4 & y6 & x4) ^ (z4 & y7 & x4) ^ (z6 & y7 & x6) ^ (z1 & y4 & x4) ^ (z6 & y6 & x1) ^ (z6 & y6 & x4) ^ (z4 & y7 & x7) ^ (z7 & y7 & x6) ^ (z4 & y1 & x6) ^ (z6 & y4 & x1) ^ (z4 & y6 & x1) ^ (z6 & y1 & x4) ^ (z1 & y4 & x6) ^ (z1 & y6 & x4) ^ (z1 & y4 & x7) ^ (z4 & y7 & x1) ^ (z4 & y1 & x7) ^ (z1 & y7 & x4) ^ (z7 & y4 & x1) ^ (z7 & y1 & x4) ^ (z6 & y7 & x1) ^ (z7 & y1 & x6) ^ (z6 & y1 & x7) ^ (z1 & y6 & x7) ^ (z1 & y7 & x6) ^ (z7 & y6 & x1);                                    
    assign out7[0] = x1 ^ (w4 & z1) ^ (w6 & z1) ^ (w7 & z4) ^ (w7 & z6) ^ (z1 & y4) ^ (z1 & y6) ^ (z7 & y4) ^ (z7 & y6) ^ (w1 & x4) ^ (w1 & x6) ^ (w4 & x7) ^ (w7 & x6) ^ (y1 & x4) ^ (y1 & x6) ^ (y7 & x6) ^ (w1 & z4 & y1) ^ (w4 & z1 & y1) ^ (w1 & z6 & y1) ^ (w4 & z4 & y7) ^ (w6 & z7 & y6) ^ (w6 & z6 & y7) ^ (w4 & z1 & y4) ^ (w6 & z6 & y1) ^ (w6 & z4 & y6) ^ (w7 & z7 & y4) ^ (w7 & z7 & y6) ^ (w4 & z1 & y6) ^ (w6 & z4 & y1) ^ (w4 & z6 & y1) ^ (w6 & z1 & y4) ^ (w1 & z4 & y6) ^ (w1 & z6 & y4) ^ (w1 & z4 & y7) ^ (w4 & z7 & y1) ^ (w4 & z1 & y7) ^ (w1 & z7 & y4) ^ (w7 & z4 & y1) ^ (w7 & z1 & y4) ^ (w6 & z7 & y1) ^ (w7 & z1 & y6) ^ (w6 & z1 & y7) ^ (w1 & z6 & y7) ^ (w1 & z7 & y6) ^ (w7 & z6 & y1);

endmodule

module td12_share8(
    in2,
    in3,
    in4,
    in5,
    out8
);


    input wire [3:0] in2;
    input wire [3:0] in3;
    input wire [3:0] in4;
    input wire [3 : 0] in5;
    output wire [3 : 0] out8;

    wire x2, x3, x4, x5;
    wire y2, y3, y4, y5;
    wire z2, z3, z4, z5;
    wire w2, w3, w4, w5;

    assign x2 = in2[3];
    assign x3 = in3[3];
    assign x4 = in4[3];
    assign x5 = in5[3];

    assign y2 = in2[2];
    assign y3 = in3[2];
    assign y4 = in4[2];
    assign y5 = in5[2];

    assign z2 = in2[1];
    assign z3 = in3[1];
    assign z4 = in4[1];
    assign z5 = in5[1];

    assign w2 = in2[0];
    assign w3 = in3[0];
    assign w4 = in4[0];
    assign w5 = in5[0];

    assign out8[3] = z5 ^ (z3 & y2) ^ (z2 & y4) ^ (z4 & y3) ^ (y3 & x3) ^ (y3 & x2) ^ (y3 & x4) ^ (w2 & z2 & y2) ^ (w3 & z3 & y3) ^ (w2 & z2 & y3) ^ (w4 & z2 & y2) ^ (w3 & z3 & y4) ^ (w3 & z2 & y3) ^ (w2 & z3 & y3) ^ (w4 & z4 & y2) ^ (w2 & z5 & y5) ^ (w3 & z4 & y4) ^ (w2 & z4 & y3) ^ (w4 & z3 & y2) ^ (w3 & z4 & y2) ^ (w2 & z3 & y5) ^ (w2 & z5 & y3) ^ (w3 & z2 & y5) ^ (w5 & z2 & y3) ^ (w3 & z5 & y2) ^ (w5 & z3 & y2) ^ (w4 & z5 & y2) ^ (w2 & z5 & y4) ^ (w4 & z2 & y5) ^ (w5 & z2 & y4) ^ (w5 & z4 & y2) ^ (w2 & z4 & y5) ^ (w3 & z5 & y4) ^ (w5 & z3 & y4) ^ (w4 & z5 & y3) ^ (w4 & z3 & y5) ^ (w3 & z4 & y5) ^ (w5 & z4 & y3) ^ (w3 & z2 & x2) ^ (w2 & z4 & x2) ^ (w3 & z3 & x4) ^ (w3 & z2 & x3) ^ (w2 & z3 & x3) ^ (w4 & z2 & x4) ^ (w5 & z2 & x5) ^ (w5 & z5 & x2) ^ (w3 & z4 & x4) ^ (w2 & z4 & x3) ^ (w4 & z3 & x2) ^ (w3 & z4 & x2) ^ (w2 & z3 & x5) ^ (w2 & z5 & x3) ^ (w3 & z2 & x5) ^ (w5 & z2 & x3) ^ (w3 & z5 & x2) ^ (w5 & z3 & x2) ^ (w4 & z5 & x2) ^ (w2 & z5 & x4) ^ (w4 & z2 & x5) ^ (w5 & z2 & x4) ^ (w5 & z4 & x2) ^ (w2 & z4 & x5) ^ (w3 & z5 & x4) ^ (w5 & z3 & x4) ^ (w4 & z5 & x3) ^ (w4 & z3 & x5) ^ (w3 & z4 & x5) ^ (w5 & z4 & x3) ^ (w3 & y2 & x2) ^ (w2 & y4 & x2) ^ (w3 & y3 & x4) ^ (w3 & y2 & x3) ^ (w2 & y3 & x3) ^ (w4 & y2 & x4) ^ (w5 & y2 & x5) ^ (w5 & y5 & x2) ^ (w3 & y4 & x4) ^ (w2 & y4 & x3) ^ (w4 & y3 & x2) ^ (w3 & y4 & x2) ^ (w2 & y3 & x5) ^ (w2 & y5 & x3) ^ (w3 & y2 & x5) ^ (w5 & y2 & x3) ^ (w3 & y5 & x2) ^ (w5 & y3 & x2) ^ (w4 & y5 & x2) ^ (w2 & y5 & x4) ^ (w4 & y2 & x5) ^ (w5 & y2 & x4) ^ (w5 & y4 & x2) ^ (w2 & y4 & x5) ^ (w3 & y5 & x4) ^ (w5 & y3 & x4) ^ (w4 & y5 & x3) ^ (w4 & y3 & x5) ^ (w3 & y4 & x5) ^ (w5 & y4 & x3);                
    assign out8[2] = w5 ^ (w3 & z2) ^ (w2 & z4) ^ (w4 & z3) ^ (w3 & x3) ^ (w3 & x2) ^ (w3 & x4) ^ (z2 & x2) ^ (z3 & x3) ^ (z3 & x2) ^ (z4 & x3) ^ (w2 & z2 & x2) ^ (w2 & z2 & x3) ^ (w2 & z3 & x2) ^ (w5 & z2 & x2) ^ (w3 & z3 & x4) ^ (w3 & z2 & x3) ^ (w3 & z3 & x2) ^ (w5 & z2 & x5) ^ (w5 & z5 & x2) ^ (w3 & z4 & x4) ^ (w2 & z4 & x3) ^ (w2 & z3 & x4) ^ (w2 & z3 & x5) ^ (w2 & z5 & x3) ^ (w3 & z2 & x5) ^ (w5 & z2 & x3) ^ (w3 & z5 & x2) ^ (w5 & z3 & x2) ^ (w4 & z5 & x2) ^ (w2 & z5 & x4) ^ (w4 & z2 & x5) ^ (w5 & z2 & x4) ^ (w5 & z4 & x2) ^ (w2 & z4 & x5) ^ (w3 & z5 & x4) ^ (w5 & z3 & x4) ^ (w4 & z5 & x3) ^ (w4 & z3 & x5) ^ (w3 & z4 & x5) ^ (w5 & z4 & x3) ^ (z2 & y2 & x3) ^ (z2 & y2 & x4) ^ (z3 & y4 & x3) ^ (z4 & y3 & x3) ^ (z3 & y2 & x3) ^ (z2 & y3 & x3) ^ (z4 & y2 & x4) ^ (z5 & y2 & x5) ^ (z5 & y5 & x2) ^ (z3 & y4 & x4) ^ (z2 & y4 & x3) ^ (z4 & y3 & x2) ^ (z4 & y2 & x3) ^ (z2 & y3 & x5) ^ (z2 & y5 & x3) ^ (z3 & y2 & x5) ^ (z5 & y2 & x3) ^ (z3 & y5 & x2) ^ (z5 & y3 & x2) ^ (z4 & y5 & x2) ^ (z2 & y5 & x4) ^ (z4 & y2 & x5) ^ (z5 & y2 & x4) ^ (z5 & y4 & x2) ^ (z2 & y4 & x5) ^ (z3 & y5 & x4) ^ (z5 & y3 & x4) ^ (z4 & y5 & x3) ^ (z4 & y3 & x5) ^ (z3 & y4 & x5) ^ (z5 & y4 & x3);    
    assign out8[1] = (w5 & y5) ^ (w4 & y2) ^ (w4 & y3) ^ (z3 & y3) ^ (z3 & y2) ^ (z3 & y4) ^ (z2 & x2) ^ (z3 & x3) ^ (z3 & x2) ^ (z4 & x3) ^ (w2 & z2 & y2) ^ (w2 & z2 & y3) ^ (w3 & z2 & y2) ^ (w2 & z4 & y2) ^ (w3 & z3 & y4) ^ (w3 & z2 & y3) ^ (w3 & z3 & y2) ^ (w5 & z2 & y5) ^ (w5 & z5 & y2) ^ (w3 & z4 & y4) ^ (w2 & z4 & y3) ^ (w4 & z3 & y2) ^ (w4 & z2 & y3) ^ (w2 & z3 & y5) ^ (w2 & z5 & y3) ^ (w3 & z2 & y5) ^ (w5 & z2 & y3) ^ (w3 & z5 & y2) ^ (w5 & z3 & y2) ^ (w4 & z5 & y2) ^ (w2 & z5 & y4) ^ (w4 & z2 & y5) ^ (w5 & z2 & y4) ^ (w5 & z4 & y2) ^ (w2 & z4 & y5) ^ (w3 & z5 & y4) ^ (w5 & z3 & y4) ^ (w4 & z5 & y3) ^ (w4 & z3 & y5) ^ (w3 & z4 & y5) ^ (w5 & z4 & y3) ^ (z2 & y3 & x2) ^ (z3 & y4 & x3) ^ (z4 & y3 & x3) ^ (z3 & y2 & x3) ^ (z2 & y3 & x3) ^ (z4 & y2 & x4) ^ (z5 & y2 & x5) ^ (z5 & y5 & x2) ^ (z3 & y4 & x4) ^ (z2 & y4 & x3) ^ (z4 & y3 & x2) ^ (z4 & y2 & x3) ^ (z2 & y3 & x5) ^ (z2 & y5 & x3) ^ (z3 & y2 & x5) ^ (z5 & y2 & x3) ^ (z3 & y5 & x2) ^ (z5 & y3 & x2) ^ (z4 & y5 & x2) ^ (z2 & y5 & x4) ^ (z4 & y2 & x5) ^ (z5 & y2 & x4) ^ (z5 & y4 & x2) ^ (z2 & y4 & x5) ^ (z3 & y5 & x4) ^ (z5 & y3 & x4) ^ (z4 & y5 & x3) ^ (z4 & y3 & x5) ^ (z3 & y4 & x5) ^ (z5 & y4 & x3);         
    assign out8[0] = y5 ^ (w3 & z2) ^ (w2 & z4) ^ (w4 & z3) ^ (z3 & y3) ^ (z3 & y2) ^ (z3 & y4) ^ (w2 & x2) ^ (w3 & x3) ^ (w3 & x2) ^ (w4 & x3) ^ (y2 & x2) ^ (y3 & x2) ^ (y4 & x2) ^ (y4 & x3) ^ (w2 & z2 & y2) ^ (w2 & z2 & y3) ^ (w2 & z2 & y4) ^ (w3 & z4 & y3) ^ (w4 & z3 & y3) ^ (w3 & z2 & y3) ^ (w4 & z2 & y4) ^ (w5 & z2 & y5) ^ (w4 & z3 & y4) ^ (w4 & z4 & y3) ^ (w2 & z4 & y3) ^ (w3 & z2 & y4) ^ (w2 & z3 & y5) ^ (w2 & z5 & y3) ^ (w3 & z2 & y5) ^ (w5 & z2 & y3) ^ (w3 & z5 & y2) ^ (w5 & z3 & y2) ^ (w4 & z5 & y2) ^ (w2 & z5 & y4) ^ (w4 & z2 & y5) ^ (w5 & z2 & y4) ^ (w5 & z4 & y2) ^ (w2 & z4 & y5) ^ (w3 & z5 & y4) ^ (w5 & z3 & y4) ^ (w4 & z5 & y3) ^ (w4 & z3 & y5) ^ (w3 & z4 & y5) ^ (w5 & z4 & y3);

endmodule

module td12_share9(
    in2,
    in3,
    in4,
    in6,
    out9
);


    input wire [3:0] in2;
    input wire [3:0] in3;
    input wire [3:0] in4;
    input wire [3 : 0] in6;
    output wire [3 : 0] out9;

    wire x2, x3, x4, x6;
    wire y2, y3, y4, y6;
    wire z2, z3, z4, z6;
    wire w2, w3, w4, w6;

    assign x2 = in2[3];
    assign x3 = in3[3];
    assign x4 = in4[3];
    assign x6 = in6[3];

    assign y2 = in2[2];
    assign y3 = in3[2];
    assign y4 = in4[2];
    assign y6 = in6[2];

    assign z2 = in2[1];
    assign z3 = in3[1];
    assign z4 = in4[1];
    assign z6 = in6[1];

    assign w2 = in2[0];
    assign w3 = in3[0];
    assign w4 = in4[0];
    assign w6 = in6[0];

    assign out9[3] = x2 ^ (z2 & y3) ^ (z2 & y6) ^ (z3 & y6) ^ (y4 & x4) ^ (y2 & x3) ^ (y2 & x6) ^ (y6 & x3) ^ (w4 & z4 & y4) ^ (w3 & z2 & y2) ^ (w2 & z4 & y2) ^ (w2 & z6 & y2) ^ (w3 & z6 & y3) ^ (w3 & z3 & y2) ^ (w2 & z6 & y6) ^ (w6 & z2 & y6) ^ (w4 & z4 & y3) ^ (w6 & z6 & y3) ^ (w2 & z3 & y4) ^ (w4 & z2 & y3) ^ (w2 & z3 & y6) ^ (w3 & z6 & y2) ^ (w6 & z2 & y3) ^ (w3 & z2 & y6) ^ (w6 & z3 & y2) ^ (w2 & z6 & y3) ^ (w4 & z2 & y6) ^ (w4 & z6 & y2) ^ (w6 & z2 & y4) ^ (w2 & z4 & y6) ^ (w2 & z6 & y4) ^ (w6 & z4 & y2) ^ (w3 & z4 & y6) ^ (w3 & z6 & y4) ^ (w4 & z6 & y3) ^ (w6 & z3 & y4) ^ (w4 & z3 & y6) ^ (w6 & z4 & y3) ^ (w2 & z3 & x2) ^ (w2 & z2 & x6) ^ (w2 & z6 & x2) ^ (w6 & z3 & x3) ^ (w3 & z3 & x2) ^ (w2 & z4 & x4) ^ (w2 & z6 & x6) ^ (w6 & z2 & x6) ^ (w4 & z4 & x3) ^ (w3 & z6 & x6) ^ (w2 & z3 & x4) ^ (w4 & z2 & x3) ^ (w2 & z3 & x6) ^ (w3 & z6 & x2) ^ (w6 & z2 & x3) ^ (w3 & z2 & x6) ^ (w6 & z3 & x2) ^ (w2 & z6 & x3) ^ (w4 & z2 & x6) ^ (w4 & z6 & x2) ^ (w6 & z2 & x4) ^ (w2 & z4 & x6) ^ (w2 & z6 & x4) ^ (w6 & z4 & x2) ^ (w3 & z4 & x6) ^ (w3 & z6 & x4) ^ (w4 & z6 & x3) ^ (w6 & z3 & x4) ^ (w4 & z3 & x6) ^ (w6 & z4 & x3) ^ (w2 & y3 & x2) ^ (w2 & y2 & x6) ^ (w2 & y6 & x2) ^ (w6 & y3 & x3) ^ (w3 & y3 & x2) ^ (w2 & y4 & x4) ^ (w2 & y6 & x6) ^ (w6 & y2 & x6) ^ (w4 & y4 & x3) ^ (w3 & y6 & x6) ^ (w2 & y3 & x4) ^ (w4 & y2 & x3) ^ (w2 & y3 & x6) ^ (w3 & y6 & x2) ^ (w6 & y2 & x3) ^ (w3 & y2 & x6) ^ (w6 & y3 & x2) ^ (w2 & y6 & x3) ^ (w4 & y2 & x6) ^ (w4 & y6 & x2) ^ (w6 & y2 & x4) ^ (w2 & y4 & x6) ^ (w2 & y6 & x4) ^ (w6 & y4 & x2) ^ (w3 & y4 & x6) ^ (w3 & y6 & x4) ^ (w4 & y6 & x3) ^ (w6 & y3 & x4) ^ (w4 & y3 & x6) ^ (w6 & y4 & x3);                     
    assign out9[2] = x2 ^ (w2 & z3) ^ (w2 & z6) ^ (w3 & z6) ^ (w4 & x4) ^ (w2 & x3) ^ (w2 & x6) ^ (w6 & x3) ^ (z4 & x4) ^ (z2 & x3) ^ (z2 & x6) ^ (w3 & z3 & x3) ^ (w6 & z6 & x6) ^ (w2 & z2 & x4) ^ (w2 & z2 & x6) ^ (w4 & z3 & x3) ^ (w6 & z3 & x3) ^ (w4 & z2 & x4) ^ (w2 & z6 & x6) ^ (w6 & z2 & x6) ^ (w4 & z4 & x3) ^ (w6 & z6 & x3) ^ (w3 & z2 & x4) ^ (w2 & z3 & x6) ^ (w3 & z6 & x2) ^ (w6 & z2 & x3) ^ (w3 & z2 & x6) ^ (w6 & z3 & x2) ^ (w2 & z6 & x3) ^ (w4 & z2 & x6) ^ (w4 & z6 & x2) ^ (w6 & z2 & x4) ^ (w2 & z4 & x6) ^ (w2 & z6 & x4) ^ (w6 & z4 & x2) ^ (w3 & z4 & x6) ^ (w3 & z6 & x4) ^ (w4 & z6 & x3) ^ (w6 & z3 & x4) ^ (w4 & z3 & x6) ^ (w6 & z4 & x3) ^ (z3 & y2 & x2) ^ (z4 & y2 & x2) ^ (z2 & y2 & x6) ^ (z6 & y2 & x2) ^ (z6 & y3 & x3) ^ (z3 & y3 & x2) ^ (z2 & y4 & x4) ^ (z2 & y6 & x6) ^ (z6 & y2 & x6) ^ (z4 & y4 & x3) ^ (z6 & y3 & x6) ^ (z2 & y3 & x4) ^ (z2 & y3 & x6) ^ (z3 & y6 & x2) ^ (z6 & y2 & x3) ^ (z3 & y2 & x6) ^ (z6 & y3 & x2) ^ (z2 & y6 & x3) ^ (z4 & y2 & x6) ^ (z4 & y6 & x2) ^ (z6 & y2 & x4) ^ (z2 & y4 & x6) ^ (z2 & y6 & x4) ^ (z6 & y4 & x2) ^ (z3 & y4 & x6) ^ (z3 & y6 & x4) ^ (z4 & y6 & x3) ^ (z6 & y3 & x4) ^ (z4 & y3 & x6) ^ (z6 & y4 & x3);                     
    assign out9[1] = (w3 & y2) ^ (w2 & y4) ^ (w3 & y6) ^ (z4 & y4) ^ (z2 & y3) ^ (z2 & y6) ^ (z6 & y3) ^ (z4 & x4) ^ (z2 & x3) ^ (z2 & x6) ^ (w3 & z3 & y3) ^ (w6 & z6 & y6) ^ (w2 & z3 & y2) ^ (w2 & z2 & y6) ^ (w6 & z2 & y2) ^ (w6 & z3 & y3) ^ (w4 & z2 & y4) ^ (w2 & z6 & y6) ^ (w6 & z2 & y6) ^ (w4 & z4 & y3) ^ (w6 & z6 & y3) ^ (w2 & z3 & y4) ^ (w2 & z3 & y6) ^ (w3 & z6 & y2) ^ (w6 & z2 & y3) ^ (w3 & z2 & y6) ^ (w6 & z3 & y2) ^ (w2 & z6 & y3) ^ (w4 & z2 & y6) ^ (w4 & z6 & y2) ^ (w6 & z2 & y4) ^ (w2 & z4 & y6) ^ (w2 & z6 & y4) ^ (w6 & z4 & y2) ^ (w3 & z4 & y6) ^ (w3 & z6 & y4) ^ (w4 & z6 & y3) ^ (w6 & z3 & y4) ^ (w4 & z3 & y6) ^ (w6 & z4 & y3) ^ (z2 & y2 & x3) ^ (z2 & y2 & x4) ^ (z2 & y2 & x6) ^ (z6 & y2 & x2) ^ (z6 & y3 & x3) ^ (z3 & y3 & x2) ^ (z2 & y4 & x4) ^ (z2 & y6 & x6) ^ (z6 & y2 & x6) ^ (z4 & y4 & x3) ^ (z6 & y6 & x3) ^ (z2 & y3 & x4) ^ (z2 & y3 & x6) ^ (z3 & y6 & x2) ^ (z6 & y2 & x3) ^ (z3 & y2 & x6) ^ (z6 & y3 & x2) ^ (z2 & y6 & x3) ^ (z4 & y2 & x6) ^ (z4 & y6 & x2) ^ (z6 & y2 & x4) ^ (z2 & y4 & x6) ^ (z2 & y6 & x4) ^ (z6 & y4 & x2) ^ (z3 & y4 & x6) ^ (z3 & y6 & x4) ^ (z4 & y6 & x3) ^ (z6 & y3 & x4) ^ (z4 & y3 & x6) ^ (z6 & y4 & x3);                          
    assign out9[0] = x2 ^ (w2 & z3) ^ (w2 & z6) ^ (w3 & z6) ^ (z4 & y4) ^ (z2 & y3) ^ (z2 & y6) ^ (z6 & y3) ^ (w4 & x4) ^ (w2 & x3) ^ (w2 & x6) ^ (y3 & x3) ^ (y6 & x6) ^ (y2 & x4) ^ (y2 & x6) ^ (w3 & z3 & y3) ^ (w3 & z2 & y2) ^ (w4 & z2 & y2) ^ (w2 & z2 & y6) ^ (w3 & z6 & y3) ^ (w2 & z3 & y3) ^ (w2 & z4 & y4) ^ (w2 & z6 & y6) ^ (w6 & z2 & y6) ^ (w3 & z6 & y6) ^ (w4 & z3 & y2) ^ (w3 & z4 & y2) ^ (w2 & z3 & y6) ^ (w3 & z6 & y2) ^ (w6 & z2 & y3) ^ (w3 & z2 & y6) ^ (w6 & z3 & y2) ^ (w2 & z6 & y3) ^ (w4 & z2 & y6) ^ (w4 & z6 & y2) ^ (w6 & z2 & y4) ^ (w2 & z4 & y6) ^ (w2 & z6 & y4) ^ (w6 & z4 & y2) ^ (w3 & z4 & y6) ^ (w3 & z6 & y4) ^ (w4 & z6 & y3) ^ (w6 & z3 & y4) ^ (w4 & z3 & y6) ^ (w6 & z4 & y3);

endmodule

module td12_share10(
    in2,
    in3,
    in4,
    in7,
    out10
);


    input wire [3:0] in2;
    input wire [3:0] in3;
    input wire [3:0] in4;
    input wire [3 : 0] in7;
    output wire [3 : 0] out10;

    wire x2, x3, x4, x7;
    wire y2, y3, y4, y7;
    wire z2, z3, z4, z7;
    wire w2, w3, w4, w7;

    assign x2 = in2[3];
    assign x3 = in3[3];
    assign x4 = in4[3];
    assign x7 = in7[3];

    assign y2 = in2[2];
    assign y3 = in3[2];
    assign y4 = in4[2];
    assign y7 = in7[2];

    assign z2 = in2[1];
    assign z3 = in3[1];
    assign z4 = in4[1];
    assign z7 = in7[1];

    assign w2 = in2[0];
    assign w3 = in3[0];
    assign w4 = in4[0];
    assign w7 = in7[0];

    assign out10[3] = x3 ^ (z4 & y2) ^ (z2 & y7) ^ (z7 & y2) ^ (y7 & x7) ^ (y4 & x2) ^ (y2 & x7) ^ (y7 & x2) ^ (w7 & z7 & y7) ^ (w2 & z3 & y2) ^ (w2 & z7 & y2) ^ (w2 & z2 & y7) ^ (w7 & z2 & y2) ^ (w4 & z2 & y4) ^ (w7 & z2 & y7) ^ (w2 & z7 & y7) ^ (w7 & z7 & y2) ^ (w7 & z7 & y3) ^ (w3 & z2 & y4) ^ (w3 & z7 & y2) ^ (w7 & z2 & y3) ^ (w2 & z7 & y3) ^ (w2 & z3 & y7) ^ (w3 & z2 & y7) ^ (w7 & z3 & y2) ^ (w4 & z2 & y7) ^ (w2 & z4 & y7) ^ (w4 & z7 & y2) ^ (w2 & z7 & y4) ^ (w7 & z2 & y4) ^ (w7 & z4 & y2) ^ (w3 & z4 & y7) ^ (w7 & z3 & y4) ^ (w3 & z7 & y4) ^ (w4 & z3 & y7) ^ (w4 & z7 & y3) ^ (w7 & z4 & y3) ^ (w2 & z2 & x3) ^ (w2 & z2 & x4) ^ (w2 & z7 & x2) ^ (w2 & z2 & x7) ^ (w7 & z2 & x2) ^ (w7 & z3 & x3) ^ (w4 & z4 & x2) ^ (w7 & z2 & x7) ^ (w2 & z7 & x7) ^ (w7 & z7 & x2) ^ (w7 & z7 & x3) ^ (w3 & z2 & x4) ^ (w3 & z7 & x2) ^ (w7 & z2 & x3) ^ (w2 & z7 & x3) ^ (w2 & z3 & x7) ^ (w3 & z2 & x7) ^ (w7 & z3 & x2) ^ (w4 & z2 & x7) ^ (w2 & z4 & x7) ^ (w4 & z7 & x2) ^ (w2 & z7 & x4) ^ (w7 & z2 & x4) ^ (w7 & z4 & x2) ^ (w3 & z4 & x7) ^ (w7 & z3 & x4) ^ (w3 & z7 & x4) ^ (w4 & z3 & x7) ^ (w4 & z7 & x3) ^ (w7 & z4 & x3) ^ (w2 & y2 & x3) ^ (w2 & y2 & x4) ^ (w2 & y7 & x2) ^ (w2 & y2 & x7) ^ (w7 & y2 & x2) ^ (w7 & y3 & x3) ^ (w4 & y4 & x2) ^ (w7 & y2 & x7) ^ (w2 & y7 & x7) ^ (w7 & y7 & x2) ^ (w7 & y7 & x3) ^ (w3 & y2 & x4) ^ (w3 & y7 & x2) ^ (w7 & y2 & x3) ^ (w2 & y7 & x3) ^ (w2 & y3 & x7) ^ (w3 & y2 & x7) ^ (w7 & y3 & x2) ^ (w4 & y2 & x7) ^ (w2 & y4 & x7) ^ (w4 & y7 & x2) ^ (w2 & y7 & x4) ^ (w7 & y2 & x4) ^ (w7 & y4 & x2) ^ (w3 & y4 & x7) ^ (w7 & y3 & x4) ^ (w3 & y7 & x4) ^ (w4 & y3 & x7) ^ (w4 & y7 & x3) ^ (w7 & y4 & x3);                                     
    assign out10[2] = x3 ^ (w4 & z2) ^ (w2 & z7) ^ (w7 & z2) ^ (w7 & x7) ^ (w4 & x2) ^ (w2 & x7) ^ (w7 & x2) ^ (z7 & x7) ^ (z4 & x2) ^ (z2 & x7) ^ (z7 & x2) ^ (w3 & z2 & x2) ^ (w4 & z2 & x2) ^ (w2 & z7 & x2) ^ (w2 & z2 & x7) ^ (w2 & z3 & x3) ^ (w2 & z4 & x4) ^ (w7 & z2 & x7) ^ (w2 & z7 & x7) ^ (w7 & z7 & x2) ^ (w4 & z3 & x2) ^ (w3 & z4 & x2) ^ (w3 & z7 & x2) ^ (w7 & z2 & x3) ^ (w2 & z7 & x3) ^ (w2 & z3 & x7) ^ (w3 & z2 & x7) ^ (w7 & z3 & x2) ^ (w4 & z2 & x7) ^ (w2 & z4 & x7) ^ (w4 & z7 & x2) ^ (w2 & z7 & x4) ^ (w7 & z2 & x4) ^ (w7 & z4 & x2) ^ (w3 & z4 & x7) ^ (w7 & z3 & x4) ^ (w3 & z7 & x4) ^ (w4 & z3 & x7) ^ (w4 & z7 & x3) ^ (w7 & z4 & x3) ^ (z2 & y3 & x2) ^ (z2 & y4 & x2) ^ (z2 & y7 & x2) ^ (z2 & y2 & x7) ^ (z3 & y3 & x7) ^ (z7 & y4 & x4) ^ (z4 & y4 & x2) ^ (z7 & y2 & x7) ^ (z2 & y7 & x7) ^ (z7 & y7 & x2) ^ (z7 & y7 & x3) ^ (z3 & y2 & x4) ^ (z3 & y7 & x2) ^ (z7 & y2 & x3) ^ (z2 & y7 & x3) ^ (z2 & y3 & x7) ^ (z3 & y2 & x7) ^ (z7 & y3 & x2) ^ (z4 & y2 & x7) ^ (z2 & y4 & x7) ^ (z4 & y7 & x2) ^ (z2 & y7 & x4) ^ (z7 & y2 & x4) ^ (z7 & y4 & x2) ^ (z3 & y4 & x7) ^ (z7 & y3 & x4) ^ (z3 & y7 & x4) ^ (z4 & y3 & x7) ^ (z4 & y7 & x3) ^ (z7 & y4 & x3);                         
    assign out10[1] = (w2 & y3) ^ (w2 & y7) ^ (w7 & y2) ^ (z7 & y7) ^ (z4 & y2) ^ (z2 & y7) ^ (z7 & y2) ^ (z7 & x7) ^ (z4 & x2) ^ (z2 & x7) ^ (z7 & x2) ^ (w7 & z7 & y7) ^ (w2 & z2 & y4) ^ (w2 & z7 & y2) ^ (w2 & z2 & y7) ^ (w2 & z3 & y3) ^ (w2 & z4 & y4) ^ (w7 & z2 & y7) ^ (w2 & z7 & y7) ^ (w7 & z7 & y2) ^ (w7 & z7 & y4) ^ (w3 & z2 & y4) ^ (w3 & z7 & y2) ^ (w7 & z2 & y3) ^ (w2 & z7 & y3) ^ (w2 & z3 & y7) ^ (w3 & z2 & y7) ^ (w7 & z3 & y2) ^ (w4 & z2 & y7) ^ (w2 & z4 & y7) ^ (w4 & z7 & y2) ^ (w2 & z7 & y4) ^ (w7 & z2 & y4) ^ (w7 & z4 & y2) ^ (w3 & z4 & y7) ^ (w7 & z3 & y4) ^ (w3 & z7 & y4) ^ (w4 & z3 & y7) ^ (w4 & z7 & y3) ^ (w7 & z4 & y3) ^ (z3 & y2 & x2) ^ (z4 & y2 & x2) ^ (z2 & y7 & x2) ^ (z2 & y2 & x7) ^ (z3 & y3 & x7) ^ (z7 & y4 & x4) ^ (z4 & y4 & x2) ^ (z7 & y2 & x7) ^ (z2 & y7 & x7) ^ (z7 & y7 & x2) ^ (z7 & y7 & x3) ^ (z3 & y2 & x4) ^ (z3 & y7 & x2) ^ (z7 & y2 & x3) ^ (z2 & y7 & x3) ^ (z2 & y3 & x7) ^ (z3 & y2 & x7) ^ (z7 & y3 & x2) ^ (z4 & y2 & x7) ^ (z2 & y4 & x7) ^ (z4 & y7 & x2) ^ (z2 & y7 & x4) ^ (z7 & y2 & x4) ^ (z7 & y4 & x2) ^ (z3 & y4 & x7) ^ (z7 & y3 & x4) ^ (z3 & y7 & x4) ^ (z4 & y3 & x7) ^ (z4 & y7 & x3) ^ (z7 & y4 & x3);                              
    assign out10[0] = x3 ^ (w4 & z2) ^ (w2 & z7) ^ (w7 & z2) ^ (z7 & y7) ^ (z4 & y2) ^ (z2 & y7) ^ (z7 & y2) ^ (w7 & x7) ^ (w4 & x2) ^ (w2 & x7) ^ (w7 & x2) ^ (y2 & x3) ^ (y2 & x7) ^ (y7 & x2) ^ (w4 & z4 & y4) ^ (w2 & z3 & y2) ^ (w2 & z4 & y2) ^ (w2 & z7 & y2) ^ (w2 & z2 & y7) ^ (w3 & z3 & y2) ^ (w4 & z4 & y2) ^ (w7 & z2 & y7) ^ (w2 & z7 & y7) ^ (w7 & z7 & y2) ^ (w2 & z3 & y4) ^ (w4 & z2 & y3) ^ (w3 & z7 & y2) ^ (w7 & z2 & y3) ^ (w2 & z7 & y3) ^ (w2 & z3 & y7) ^ (w3 & z2 & y7) ^ (w7 & z3 & y2) ^ (w4 & z2 & y7) ^ (w2 & z4 & y7) ^ (w4 & z7 & y2) ^ (w2 & z7 & y4) ^ (w7 & z2 & y4) ^ (w7 & z4 & y2) ^ (w3 & z4 & y7) ^ (w7 & z3 & y4) ^ (w3 & z7 & y4) ^ (w4 & z3 & y7) ^ (w4 & z7 & y3) ^ (w7 & z4 & y3);

endmodule

module td12_share11(
    in2,
    in3,
    in4,
    in8,
    out11
);


    input wire [3:0] in2;
    input wire [3:0] in3;
    input wire [3:0] in4;
    input wire [3 : 0] in8;
    output wire [3 : 0] out11;

    wire x2, x3, x4, x8;
    wire y2, y3, y4, y8;
    wire z2, z3, z4, z8;
    wire w2, w3, w4, w8;

    assign x2 = in2[3];
    assign x3 = in3[3];
    assign x4 = in4[3];
    assign x8 = in8[3];

    assign y2 = in2[2];
    assign y3 = in3[2];
    assign y4 = in4[2];
    assign y8 = in8[2];

    assign z2 = in2[1];
    assign z3 = in3[1];
    assign z4 = in4[1];
    assign z8 = in8[1];

    assign w2 = in2[0];
    assign w3 = in3[0];
    assign w4 = in4[0];
    assign w8 = in8[0];

    assign out11[3] = z8 ^ (z8 & y8) ^ (z2 & y8) ^ (z3 & y8) ^ (y8 & x8) ^ (y2 & x4) ^ (y2 & x8) ^ (y3 & x8) ^ (w8 & z8 & y8) ^ (w2 & z2 & y4) ^ (w8 & z2 & y2) ^ (w2 & z8 & y2) ^ (w3 & z3 & y8) ^ (w2 & z4 & y4) ^ (w8 & z2 & y8) ^ (w2 & z8 & y8) ^ (w8 & z8 & y2) ^ (w8 & z3 & y8) ^ (w4 & z8 & y8) ^ (w8 & z2 & y3) ^ (w2 & z8 & y3) ^ (w8 & z3 & y2) ^ (w3 & z2 & y8) ^ (w3 & z8 & y2) ^ (w2 & z3 & y8) ^ (w2 & z4 & y8) ^ (w2 & z8 & y4) ^ (w4 & z2 & y8) ^ (w4 & z8 & y2) ^ (w8 & z2 & y4) ^ (w8 & z4 & y2) ^ (w3 & z4 & y8) ^ (w3 & z8 & y4) ^ (w4 & z8 & y3) ^ (w8 & z4 & y3) ^ (w4 & z3 & y8) ^ (w8 & z3 & y4) ^ (w8 & z8 & x8) ^ (w4 & z2 & x2) ^ (w8 & z2 & x2) ^ (w2 & z8 & x2) ^ (w3 & z3 & x8) ^ (w8 & z3 & x3) ^ (w3 & z8 & x3) ^ (w8 & z4 & x4) ^ (w8 & z2 & x8) ^ (w8 & z8 & x2) ^ (w8 & z3 & x8) ^ (w8 & z8 & x3) ^ (w8 & z2 & x3) ^ (w2 & z8 & x3) ^ (w8 & z3 & x2) ^ (w3 & z2 & x8) ^ (w3 & z8 & x2) ^ (w2 & z3 & x8) ^ (w2 & z4 & x8) ^ (w2 & z8 & x4) ^ (w4 & z2 & x8) ^ (w4 & z8 & x2) ^ (w8 & z2 & x4) ^ (w8 & z4 & x2) ^ (w3 & z4 & x8) ^ (w3 & z8 & x4) ^ (w4 & z8 & x3) ^ (w8 & z4 & x3) ^ (w4 & z3 & x8) ^ (w8 & z3 & x4) ^ (w8 & y8 & x8) ^ (w4 & y2 & x2) ^ (w8 & y2 & x2) ^ (w2 & y8 & x2) ^ (w3 & y3 & x8) ^ (w8 & y3 & x3) ^ (w3 & y8 & x3) ^ (w4 & y8 & x4) ^ (w8 & y2 & x8) ^ (w2 & y8 & x8) ^ (w8 & y3 & x8) ^ (w8 & y8 & x3) ^ (w8 & y2 & x3) ^ (w2 & y8 & x3) ^ (w8 & y3 & x2) ^ (w3 & y2 & x8) ^ (w3 & y8 & x2) ^ (w2 & y3 & x8) ^ (w2 & y4 & x8) ^ (w2 & y8 & x4) ^ (w4 & y2 & x8) ^ (w4 & y8 & x2) ^ (w8 & y2 & x4) ^ (w8 & y4 & x2) ^ (w3 & y4 & x8) ^ (w3 & y8 & x4) ^ (w4 & y8 & x3) ^ (w8 & y4 & x3) ^ (w4 & y3 & x8) ^ (w8 & y3 & x4);                                     
    assign out11[2] = w8 ^ (w8 & z8) ^ (w2 & z8) ^ (w3 & z8) ^ (w8 & x8) ^ (w2 & x4) ^ (w2 & x8) ^ (w3 & x8) ^ (z8 & x8) ^ (z2 & x4) ^ (z2 & x8) ^ (z3 & x8) ^ (w8 & z8 & x8) ^ (w2 & z4 & x2) ^ (w8 & z2 & x2) ^ (w2 & z8 & x2) ^ (w3 & z3 & x8) ^ (w4 & z4 & x2) ^ (w8 & z2 & x8) ^ (w2 & z8 & x8) ^ (w8 & z3 & x8) ^ (w3 & z8 & x8) ^ (w4 & z2 & x3) ^ (w8 & z2 & x3) ^ (w2 & z8 & x3) ^ (w8 & z3 & x2) ^ (w3 & z2 & x8) ^ (w3 & z8 & x2) ^ (w2 & z3 & x8) ^ (w2 & z4 & x8) ^ (w2 & z8 & x4) ^ (w4 & z2 & x8) ^ (w4 & z8 & x2) ^ (w8 & z2 & x4) ^ (w8 & z4 & x2) ^ (w3 & z4 & x8) ^ (w3 & z8 & x4) ^ (w4 & z8 & x3) ^ (w8 & z4 & x3) ^ (w4 & z3 & x8) ^ (w8 & z3 & x4) ^ (z8 & y8 & x8) ^ (z8 & y2 & x2) ^ (z2 & y8 & x2) ^ (z2 & y2 & x8) ^ (z3 & y3 & x8) ^ (z8 & y3 & x3) ^ (z3 & y8 & x3) ^ (z8 & y4 & x4) ^ (z8 & y2 & x8) ^ (z8 & y8 & x2) ^ (z8 & y3 & x8) ^ (z3 & y4 & x2) ^ (z8 & y2 & x3) ^ (z2 & y8 & x3) ^ (z8 & y3 & x2) ^ (z3 & y2 & x8) ^ (z3 & y8 & x2) ^ (z2 & y3 & x8) ^ (z2 & y4 & x8) ^ (z2 & y8 & x4) ^ (z4 & y2 & x8) ^ (z4 & y8 & x2) ^ (z8 & y2 & x4) ^ (z8 & y4 & x2) ^ (z3 & y4 & x8) ^ (z3 & y8 & x4) ^ (z4 & y8 & x3) ^ (z8 & y4 & x3) ^ (z4 & y3 & x8) ^ (z8 & y3 & x4);                         
    assign out11[1] = (w8 & y8) ^ (w2 & y8) ^ (w8 & y2) ^ (z8 & y8) ^ (z2 & y4) ^ (z2 & y8) ^ (z3 & y8) ^ (z8 & x8) ^ (z2 & x4) ^ (z2 & x8) ^ (z3 & x8) ^ (w8 & z8 & y8) ^ (w4 & z2 & y2) ^ (w8 & z2 & y2) ^ (w2 & z8 & y2) ^ (w3 & z3 & y8) ^ (w4 & z4 & y2) ^ (w8 & z2 & y8) ^ (w2 & z8 & y8) ^ (w8 & z3 & y8) ^ (w3 & z8 & y8) ^ (w3 & z4 & y2) ^ (w8 & z2 & y3) ^ (w2 & z8 & y3) ^ (w8 & z3 & y2) ^ (w3 & z2 & y8) ^ (w3 & z8 & y2) ^ (w2 & z3 & y8) ^ (w2 & z4 & y8) ^ (w2 & z8 & y4) ^ (w4 & z2 & y8) ^ (w4 & z8 & y2) ^ (w8 & z2 & y4) ^ (w8 & z4 & y2) ^ (w3 & z4 & y8) ^ (w3 & z8 & y4) ^ (w4 & z8 & y3) ^ (w8 & z4 & y3) ^ (w4 & z3 & y8) ^ (w8 & z3 & y4) ^ (z8 & y8 & x8) ^ (z2 & y4 & x2) ^ (z8 & y2 & x2) ^ (z2 & y8 & x2) ^ (z3 & y3 & x8) ^ (z8 & y3 & x3) ^ (z3 & y8 & x3) ^ (z8 & y4 & x4) ^ (z8 & y2 & x8) ^ (z8 & y8 & x2) ^ (z8 & y3 & x8) ^ (z3 & y4 & x2) ^ (z8 & y2 & x3) ^ (z2 & y8 & x3) ^ (z8 & y3 & x2) ^ (z3 & y2 & x8) ^ (z3 & y8 & x2) ^ (z2 & y3 & x8) ^ (z2 & y4 & x8) ^ (z2 & y8 & x4) ^ (z4 & y2 & x8) ^ (z4 & y8 & x2) ^ (z8 & y2 & x4) ^ (z8 & y4 & x2) ^ (z3 & y4 & x8) ^ (z3 & y8 & x4) ^ (z4 & y8 & x3) ^ (z8 & y4 & x3) ^ (z4 & y3 & x8) ^ (z8 & y3 & x4);                              
    assign out11[0] = y8 ^ (w8 & z8) ^ (w2 & z8) ^ (w3 & z8) ^ (z8 & y8) ^ (z2 & y4) ^ (z2 & y8) ^ (z3 & y8) ^ (w8 & x8) ^ (w2 & x4) ^ (w2 & x8) ^ (w3 & x8) ^ (y8 & x8) ^ (y2 & x8) ^ (y8 & x2) ^ (y3 & x8) ^ (w8 & z8 & y8) ^ (w8 & z2 & y2) ^ (w2 & z8 & y2) ^ (w2 & z2 & y8) ^ (w8 & z3 & y3) ^ (w8 & z2 & y8) ^ (w2 & z8 & y8) ^ (w8 & z8 & y2) ^ (w8 & z3 & y8) ^ (w3 & z8 & y8) ^ (w8 & z2 & y3) ^ (w2 & z8 & y3) ^ (w8 & z3 & y2) ^ (w3 & z2 & y8) ^ (w3 & z8 & y2) ^ (w2 & z3 & y8) ^ (w2 & z4 & y8) ^ (w2 & z8 & y4) ^ (w4 & z2 & y8) ^ (w4 & z8 & y2) ^ (w8 & z2 & y4) ^ (w8 & z4 & y2) ^ (w3 & z4 & y8) ^ (w3 & z8 & y4) ^ (w4 & z8 & y3) ^ (w8 & z4 & y3) ^ (w4 & z3 & y8) ^ (w8 & z3 & y4);

endmodule

module td12_share12(
    in2,
    in5,
    in6,
    in7,
    out12
);


    input wire [3:0] in2;
    input wire [3:0] in5;
    input wire [3:0] in6;
    input wire [3 : 0] in7;
    output wire [3 : 0] out12;

    wire x2, x5, x6, x7;
    wire y2, y5, y6, y7;
    wire z2, z5, z6, z7;
    wire w2, w5, w6, w7;

    assign x2 = in2[3];
    assign x5 = in5[3];
    assign x6 = in6[3];
    assign x7 = in7[3];

    assign y2 = in2[2];
    assign y5 = in5[2];
    assign y6 = in6[2];
    assign y7 = in7[2];

    assign z2 = in2[1];
    assign z5 = in5[1];
    assign z6 = in6[1];
    assign z7 = in7[1];

    assign w2 = in2[0];
    assign w5 = in5[0];
    assign w6 = in6[0];
    assign w7 = in7[0];

    assign out12[3] = x5 ^ (z2 & y5) ^ (z6 & y2) ^ (z5 & y6) ^ (z7 & y5) ^ (y2 & x5) ^ (y6 & x2) ^ (y6 & x5) ^ (y7 & x5) ^ (w2 & z5 & y2) ^ (w5 & z2 & y2) ^ (w6 & z2 & y2) ^ (w5 & z6 & y5) ^ (w5 & z5 & y7) ^ (w5 & z2 & y5) ^ (w5 & z5 & y2) ^ (w6 & z5 & y6) ^ (w5 & z7 & y7) ^ (w7 & z7 & y5) ^ (w5 & z2 & y6) ^ (w5 & z6 & y2) ^ (w6 & z5 & y2) ^ (w2 & z5 & y6) ^ (w2 & z7 & y5) ^ (w5 & z2 & y7) ^ (w7 & z5 & y2) ^ (w5 & z7 & y2) ^ (w2 & z5 & y7) ^ (w7 & z2 & y5) ^ (w2 & z6 & y7) ^ (w2 & z7 & y6) ^ (w7 & z2 & y6) ^ (w7 & z6 & y2) ^ (w6 & z2 & y7) ^ (w6 & z7 & y2) ^ (w2 & z2 & x2) ^ (w7 & z7 & x7) ^ (w2 & z5 & x2) ^ (w2 & z2 & x5) ^ (w5 & z2 & x2) ^ (w6 & z2 & x2) ^ (w5 & z6 & x5) ^ (w5 & z7 & x5) ^ (w6 & z7 & x6) ^ (w2 & z5 & x5) ^ (w6 & z6 & x2) ^ (w6 & z5 & x6) ^ (w5 & z7 & x7) ^ (w7 & z7 & x5) ^ (w5 & z2 & x6) ^ (w5 & z6 & x2) ^ (w6 & z5 & x2) ^ (w2 & z5 & x6) ^ (w2 & z7 & x5) ^ (w5 & z2 & x7) ^ (w7 & z5 & x2) ^ (w5 & z7 & x2) ^ (w2 & z5 & x7) ^ (w7 & z2 & x5) ^ (w2 & z6 & x7) ^ (w2 & z7 & x6) ^ (w7 & z2 & x6) ^ (w7 & z6 & x2) ^ (w6 & z2 & x7) ^ (w6 & z7 & x2) ^ (w2 & y2 & x2) ^ (w7 & y7 & x7) ^ (w2 & y5 & x2) ^ (w2 & y2 & x5) ^ (w5 & y2 & x2) ^ (w6 & y2 & x2) ^ (w5 & y5 & x6) ^ (w5 & y7 & x5) ^ (w6 & y7 & x6) ^ (w2 & y5 & x5) ^ (w6 & y6 & x2) ^ (w6 & y5 & x6) ^ (w6 & y6 & x5) ^ (w7 & y5 & x7) ^ (w6 & y7 & x7) ^ (w5 & y2 & x6) ^ (w6 & y2 & x5) ^ (w2 & y6 & x5) ^ (w2 & y7 & x5) ^ (w5 & y2 & x7) ^ (w7 & y5 & x2) ^ (w5 & y7 & x2) ^ (w2 & y5 & x7) ^ (w7 & y2 & x5) ^ (w2 & y6 & x7) ^ (w2 & y7 & x6) ^ (w7 & y2 & x6) ^ (w7 & y6 & x2) ^ (w6 & y2 & x7) ^ (w6 & y7 & x2);                                                                            
    assign out12[2] = x5 ^ (w2 & z5) ^ (w6 & z2) ^ (w5 & z6) ^ (w7 & z5) ^ (w2 & x5) ^ (w6 & x2) ^ (w6 & x5) ^ (w7 & x5) ^ (z2 & x5) ^ (z6 & x2) ^ (z6 & x5) ^ (z6 & x7) ^ (w2 & z5 & x2) ^ (w2 & z6 & x2) ^ (w7 & z2 & x2) ^ (w5 & z6 & x5) ^ (w7 & z6 & x6) ^ (w2 & z5 & x5) ^ (w6 & z6 & x2) ^ (w6 & z5 & x6) ^ (w5 & z7 & x7) ^ (w7 & z6 & x7) ^ (w5 & z2 & x6) ^ (w6 & z2 & x5) ^ (w2 & z6 & x5) ^ (w2 & z7 & x5) ^ (w5 & z2 & x7) ^ (w7 & z5 & x2) ^ (w5 & z7 & x2) ^ (w2 & z5 & x7) ^ (w7 & z2 & x5) ^ (w2 & z6 & x7) ^ (w2 & z7 & x6) ^ (w7 & z2 & x6) ^ (w7 & z6 & x2) ^ (w6 & z2 & x7) ^ (w6 & z7 & x2) ^ (z2 & y2 & x2) ^ (z5 & y5 & x5) ^ (z2 & y5 & x2) ^ (z2 & y2 & x5) ^ (z5 & y2 & x2) ^ (z2 & y6 & x2) ^ (z7 & y2 & x2) ^ (z6 & y5 & x5) ^ (z5 & y7 & x5) ^ (z6 & y6 & x7) ^ (z2 & y5 & x5) ^ (z6 & y6 & x2) ^ (z6 & y5 & x6) ^ (z5 & y7 & x7) ^ (z7 & y6 & x7) ^ (z5 & y2 & x6) ^ (z5 & y6 & x2) ^ (z6 & y5 & x2) ^ (z2 & y5 & x6) ^ (z2 & y7 & x5) ^ (z5 & y2 & x7) ^ (z7 & y5 & x2) ^ (z5 & y7 & x2) ^ (z2 & y5 & x7) ^ (z7 & y2 & x5) ^ (z2 & y6 & x7) ^ (z2 & y7 & x6) ^ (z7 & y2 & x6) ^ (z7 & y6 & x2) ^ (z6 & y2 & x7) ^ (z6 & y7 & x2);                                                                
    assign out12[1] = (w2 & y5) ^ (w2 & y6) ^ (w5 & y6) ^ (w7 & y5) ^ (z2 & y5) ^ (z6 & y2) ^ (z6 & y5) ^ (z7 & y5) ^ (z2 & x5) ^ (z6 & x2) ^ (z6 & x5) ^ (z6 & x7) ^ (w2 & z5 & y2) ^ (w5 & z2 & y2) ^ (w7 & z2 & y2) ^ (w5 & z6 & y5) ^ (w7 & z6 & y6) ^ (w2 & z5 & y5) ^ (w6 & z6 & y2) ^ (w6 & z5 & y6) ^ (w5 & z7 & y7) ^ (w7 & z6 & y7) ^ (w5 & z2 & y6) ^ (w6 & z2 & y5) ^ (w2 & z6 & y5) ^ (w2 & z7 & y5) ^ (w5 & z2 & y7) ^ (w7 & z5 & y2) ^ (w5 & z7 & y2) ^ (w2 & z5 & y7) ^ (w7 & z2 & y5) ^ (w2 & z6 & y7) ^ (w2 & z7 & y6) ^ (w7 & z2 & y6) ^ (w7 & z6 & y2) ^ (w6 & z2 & y7) ^ (w6 & z7 & y2) ^ (z2 & y2 & x2) ^ (z5 & y5 & x5) ^ (z2 & y5 & x2) ^ (z2 & y2 & x5) ^ (z5 & y2 & x2) ^ (z2 & y6 & x2) ^ (z7 & y2 & x2) ^ (z5 & y6 & x5) ^ (z5 & y7 & x5) ^ (z6 & y6 & x7) ^ (z2 & y5 & x5) ^ (z6 & y6 & x2) ^ (z6 & y5 & x6) ^ (z5 & y7 & x7) ^ (z7 & y7 & x5) ^ (z5 & y2 & x6) ^ (z5 & y6 & x2) ^ (z6 & y5 & x2) ^ (z2 & y5 & x6) ^ (z2 & y7 & x5) ^ (z5 & y2 & x7) ^ (z7 & y5 & x2) ^ (z5 & y7 & x2) ^ (z2 & y5 & x7) ^ (z7 & y2 & x5) ^ (z2 & y6 & x7) ^ (z2 & y7 & x6) ^ (z7 & y2 & x6) ^ (z7 & y6 & x2) ^ (z6 & y2 & x7) ^ (z6 & y7 & x2);                                                                     
    assign out12[0] = x5 ^ (w2 & z5) ^ (w6 & z2) ^ (w5 & z6) ^ (w7 & z5) ^ (z2 & y5) ^ (z6 & y2) ^ (z6 & y5) ^ (z7 & y5) ^ (w2 & x5) ^ (w6 & x2) ^ (w6 & x5) ^ (w6 & x7) ^ (y2 & x5) ^ (y6 & x2) ^ (y7 & x5) ^ (w2 & z5 & y2) ^ (w2 & z2 & y5) ^ (w2 & z6 & y2) ^ (w7 & z2 & y2) ^ (w6 & z5 & y5) ^ (w7 & z6 & y6) ^ (w2 & z5 & y5) ^ (w6 & z6 & y2) ^ (w5 & z6 & y6) ^ (w5 & z7 & y7) ^ (w7 & z6 & y7) ^ (w5 & z2 & y6) ^ (w6 & z2 & y5) ^ (w2 & z6 & y5) ^ (w2 & z7 & y5) ^ (w5 & z2 & y7) ^ (w7 & z5 & y2) ^ (w5 & z7 & y2) ^ (w2 & z5 & y7) ^ (w7 & z2 & y5) ^ (w2 & z6 & y7) ^ (w2 & z7 & y6) ^ (w7 & z2 & y6) ^ (w7 & z6 & y2) ^ (w6 & z2 & y7) ^ (w6 & z7 & y2);

endmodule

module td12_share13(
    in2,
    in5,
    in6,
    in8,
    out13
);


    input wire [3:0] in2;
    input wire [3:0] in5;
    input wire [3:0] in6;
    input wire [3 : 0] in8;
    output wire [3 : 0] out13;

    wire x2, x5, x6, x8;
    wire y2, y5, y6, y8;
    wire z2, z5, z6, z8;
    wire w2, w5, w6, w8;

    assign x2 = in2[3];
    assign x5 = in5[3];
    assign x6 = in6[3];
    assign x8 = in8[3];

    assign y2 = in2[2];
    assign y5 = in5[2];
    assign y6 = in6[2];
    assign y8 = in8[2];

    assign z2 = in2[1];
    assign z5 = in5[1];
    assign z6 = in6[1];
    assign z8 = in8[1];

    assign w2 = in2[0];
    assign w5 = in5[0];
    assign w6 = in6[0];
    assign w8 = in8[0];

    assign out13[3] = x6 ^ (z5 & y2) ^ (z8 & y2) ^ (z6 & y5) ^ (z8 & y5) ^ (y5 & x2) ^ (y8 & x2) ^ (y8 & x5) ^ (y6 & x8) ^ (w2 & z2 & y5) ^ (w2 & z2 & y6) ^ (w2 & z2 & y8) ^ (w6 & z5 & y5) ^ (w5 & z5 & y8) ^ (w6 & z6 & y8) ^ (w6 & z6 & y2) ^ (w5 & z6 & y6) ^ (w8 & z8 & y5) ^ (w5 & z8 & y8) ^ (w8 & z6 & y8) ^ (w6 & z2 & y5) ^ (w2 & z6 & y5) ^ (w2 & z8 & y5) ^ (w5 & z2 & y8) ^ (w5 & z8 & y2) ^ (w8 & z2 & y5) ^ (w2 & z5 & y8) ^ (w8 & z5 & y2) ^ (w8 & z2 & y6) ^ (w8 & z6 & y2) ^ (w6 & z8 & y2) ^ (w2 & z6 & y8) ^ (w2 & z8 & y6) ^ (w6 & z2 & y8) ^ (w8 & z5 & y6) ^ (w5 & z6 & y8) ^ (w5 & z8 & y6) ^ (w6 & z8 & y5) ^ (w8 & z6 & y5) ^ (w6 & z5 & y8) ^ (w2 & z2 & x8) ^ (w6 & z5 & x5) ^ (w5 & z5 & x8) ^ (w8 & z5 & x5) ^ (w8 & z6 & x6) ^ (w2 & z8 & x8) ^ (w5 & z6 & x6) ^ (w8 & z8 & x5) ^ (w5 & z8 & x8) ^ (w8 & z8 & x6) ^ (w6 & z2 & x5) ^ (w2 & z6 & x5) ^ (w2 & z8 & x5) ^ (w5 & z2 & x8) ^ (w5 & z8 & x2) ^ (w8 & z2 & x5) ^ (w2 & z5 & x8) ^ (w8 & z5 & x2) ^ (w8 & z2 & x6) ^ (w8 & z6 & x2) ^ (w6 & z8 & x2) ^ (w2 & z6 & x8) ^ (w2 & z8 & x6) ^ (w6 & z2 & x8) ^ (w8 & z5 & x6) ^ (w5 & z6 & x8) ^ (w5 & z8 & x6) ^ (w6 & z8 & x5) ^ (w8 & z6 & x5) ^ (w6 & z5 & x8) ^ (w2 & y2 & x8) ^ (w5 & y6 & x5) ^ (w5 & y5 & x8) ^ (w8 & y5 & x5) ^ (w8 & y6 & x6) ^ (w6 & y6 & x8) ^ (w8 & y8 & x2) ^ (w8 & y8 & x5) ^ (w5 & y8 & x8) ^ (w8 & y8 & x6) ^ (w5 & y6 & x2) ^ (w6 & y5 & x2) ^ (w2 & y5 & x6) ^ (w2 & y8 & x5) ^ (w5 & y2 & x8) ^ (w5 & y8 & x2) ^ (w8 & y2 & x5) ^ (w2 & y5 & x8) ^ (w8 & y5 & x2) ^ (w8 & y2 & x6) ^ (w8 & y6 & x2) ^ (w6 & y8 & x2) ^ (w2 & y6 & x8) ^ (w2 & y8 & x6) ^ (w6 & y2 & x8) ^ (w8 & y5 & x6) ^ (w5 & y6 & x8) ^ (w5 & y8 & x6) ^ (w6 & y8 & x5) ^ (w8 & y6 & x5) ^ (w6 & y5 & x8);                                                                                                                                                                                                                   
    assign out13[2] = x6 ^ (w5 & z2) ^ (w8 & z2) ^ (w6 & z5) ^ (w8 & z5) ^ (w5 & x2) ^ (w8 & x2) ^ (w8 & x5) ^ (w6 & x8) ^ (z5 & x2) ^ (z8 & x2) ^ (z8 & x5) ^ (z6 & x8) ^ (w2 & z2 & x5) ^ (w6 & z2 & x2) ^ (w2 & z2 & x8) ^ (w6 & z5 & x5) ^ (w5 & z5 & x8) ^ (w6 & z6 & x8) ^ (w8 & z8 & x2) ^ (w5 & z6 & x6) ^ (w8 & z8 & x5) ^ (w5 & z8 & x8) ^ (w5 & z6 & x2) ^ (w6 & z5 & x2) ^ (w2 & z5 & x6) ^ (w2 & z8 & x5) ^ (w5 & z2 & x8) ^ (w5 & z8 & x2) ^ (w8 & z2 & x5) ^ (w2 & z5 & x8) ^ (w8 & z5 & x2) ^ (w8 & z2 & x6) ^ (w8 & z6 & x2) ^ (w6 & z8 & x2) ^ (w2 & z6 & x8) ^ (w2 & z8 & x6) ^ (w6 & z2 & x8) ^ (w8 & z5 & x6) ^ (w5 & z6 & x8) ^ (w5 & z8 & x6) ^ (w6 & z8 & x5) ^ (w8 & z6 & x5) ^ (w6 & z5 & x8) ^ (z5 & y5 & x6) ^ (z5 & y5 & x8) ^ (z8 & y5 & x5) ^ (z5 & y8 & x5) ^ (z8 & y6 & x6) ^ (z2 & y8 & x8) ^ (z5 & y6 & x6) ^ (z8 & y8 & x5) ^ (z5 & y8 & x8) ^ (z8 & y6 & x8) ^ (z6 & y2 & x5) ^ (z2 & y6 & x5) ^ (z2 & y8 & x5) ^ (z5 & y2 & x8) ^ (z5 & y8 & x2) ^ (z8 & y2 & x5) ^ (z2 & y5 & x8) ^ (z8 & y5 & x2) ^ (z8 & y2 & x6) ^ (z8 & y6 & x2) ^ (z6 & y8 & x2) ^ (z2 & y6 & x8) ^ (z2 & y8 & x6) ^ (z6 & y2 & x8) ^ (z8 & y5 & x6) ^ (z5 & y6 & x8) ^ (z5 & y8 & x6) ^ (z6 & y8 & x5) ^ (z8 & y6 & x5) ^ (z6 & y5 & x8);                                                                                                                                                                                                                        
    assign out13[1] = (w5 & y2) ^ (w6 & y2) ^ (w6 & y5) ^ (w8 & y5) ^ (z5 & y2) ^ (z8 & y2) ^ (z8 & y5) ^ (z5 & y8) ^ (z5 & x2) ^ (z8 & x2) ^ (z8 & x5) ^ (z6 & x8) ^ (w2 & z2 & y5) ^ (w2 & z6 & y2) ^ (w2 & z2 & y8) ^ (w6 & z5 & y5) ^ (w5 & z5 & y8) ^ (w6 & z6 & y8) ^ (w8 & z8 & y2) ^ (w5 & z6 & y6) ^ (w8 & z8 & y5) ^ (w5 & z8 & y8) ^ (w5 & z6 & y2) ^ (w6 & z5 & y2) ^ (w2 & z5 & y6) ^ (w2 & z8 & y5) ^ (w5 & z2 & y8) ^ (w5 & z8 & y2) ^ (w8 & z2 & y5) ^ (w2 & z5 & y8) ^ (w8 & z5 & y2) ^ (w8 & z2 & y6) ^ (w8 & z6 & y2) ^ (w6 & z8 & y2) ^ (w2 & z6 & y8) ^ (w2 & z8 & y6) ^ (w6 & z2 & y8) ^ (w8 & z5 & y6) ^ (w5 & z6 & y8) ^ (w5 & z8 & y6) ^ (w6 & z8 & y5) ^ (w8 & z6 & y5) ^ (w6 & z5 & y8) ^ (z2 & y2 & x8) ^ (z6 & y5 & x5) ^ (z5 & y5 & x8) ^ (z8 & y5 & x5) ^ (z8 & y6 & x6) ^ (z2 & y8 & x8) ^ (z5 & y6 & x6) ^ (z8 & y8 & x5) ^ (z5 & y8 & x8) ^ (z8 & y6 & x8) ^ (z6 & y2 & x5) ^ (z2 & y6 & x5) ^ (z2 & y8 & x5) ^ (z5 & y2 & x8) ^ (z5 & y8 & x2) ^ (z8 & y2 & x5) ^ (z2 & y5 & x8) ^ (z8 & y5 & x2) ^ (z8 & y2 & x6) ^ (z8 & y6 & x2) ^ (z6 & y8 & x2) ^ (z2 & y6 & x8) ^ (z2 & y8 & x6) ^ (z6 & y2 & x8) ^ (z8 & y5 & x6) ^ (z5 & y6 & x8) ^ (z5 & y8 & x6) ^ (z6 & y8 & x5) ^ (z8 & y6 & x5) ^ (z6 & y5 & x8);                                                                                                                                                                                                                             
    assign out13[0] = x6 ^ (w5 & z2) ^ (w8 & z2) ^ (w6 & z5) ^ (w8 & z5) ^ (z5 & y2) ^ (z8 & y2) ^ (z8 & y5) ^ (z6 & y8) ^ (w5 & x2) ^ (w8 & x2) ^ (w8 & x5) ^ (w6 & x8) ^ (y5 & x2) ^ (y5 & x6) ^ (y8 & x5) ^ (y6 & x8) ^ (w5 & z2 & y2) ^ (w6 & z2 & y2) ^ (w5 & z5 & y6) ^ (w5 & z5 & y8) ^ (w8 & z5 & y5) ^ (w5 & z5 & y2) ^ (w6 & z5 & y6) ^ (w6 & z6 & y5) ^ (w8 & z8 & y5) ^ (w5 & z8 & y8) ^ (w5 & z6 & y2) ^ (w6 & z5 & y2) ^ (w2 & z5 & y6) ^ (w2 & z8 & y5) ^ (w5 & z2 & y8) ^ (w5 & z8 & y2) ^ (w8 & z2 & y5) ^ (w2 & z5 & y8) ^ (w8 & z5 & y2) ^ (w8 & z2 & y6) ^ (w8 & z6 & y2) ^ (w6 & z8 & y2) ^ (w2 & z6 & y8) ^ (w2 & z8 & y6) ^ (w6 & z2 & y8) ^ (w8 & z5 & y6) ^ (w5 & z6 & y8) ^ (w5 & z8 & y6) ^ (w6 & z8 & y5) ^ (w8 & z6 & y5) ^ (w6 & z5 & y8);

endmodule

module td12_share14(
    in3,
    in5,
    in6,
    in7,
    out14
);


    input wire [3:0] in3;
    input wire [3:0] in5;
    input wire [3:0] in6;
    input wire [3 : 0] in7;
    output wire [3 : 0] out14;

    wire x3, x5, x6, x7;
    wire y3, y5, y6, y7;
    wire z3, z5, z6, z7;
    wire w3, w5, w6, w7;

    assign x3 = in3[3];
    assign x5 = in5[3];
    assign x6 = in6[3];
    assign x7 = in7[3];

    assign y3 = in3[2];
    assign y5 = in5[2];
    assign y6 = in6[2];
    assign y7 = in7[2];

    assign z3 = in3[1];
    assign z5 = in5[1];
    assign z6 = in6[1];
    assign z7 = in7[1];

    assign w3 = in3[0];
    assign w5 = in5[0];
    assign w6 = in6[0];
    assign w7 = in7[0];

    assign out14[3] = x7 ^ (z5 & y3) ^ (z6 & y3) ^ (z7 & y3) ^ (z6 & y7) ^ (y5 & x3) ^ (y3 & x5) ^ (y3 & x6) ^ (y6 & x7) ^ (w3 & z5 & y3) ^ (w3 & z3 & y5) ^ (w3 & z3 & y6) ^ (w6 & z3 & y3) ^ (w6 & z6 & y7) ^ (w5 & z5 & y3) ^ (w3 & z5 & y5) ^ (w3 & z6 & y6) ^ (w6 & z3 & y6) ^ (w7 & z6 & y7) ^ (w5 & z6 & y3) ^ (w3 & z6 & y5) ^ (w6 & z3 & y5) ^ (w6 & z5 & y3) ^ (w3 & z5 & y6) ^ (w5 & z3 & y6) ^ (w5 & z7 & y3) ^ (w3 & z7 & y6) ^ (w7 & z6 & y3) ^ (w3 & z6 & y7) ^ (w6 & z3 & y7) ^ (w6 & z7 & y3) ^ (w7 & z3 & y6) ^ (w5 & z6 & y7) ^ (w6 & z7 & y5) ^ (w7 & z6 & y5) ^ (w3 & z3 & x3) ^ (w3 & z5 & x3) ^ (w5 & z3 & x3) ^ (w3 & z3 & x5) ^ (w3 & z3 & x6) ^ (w3 & z6 & x3) ^ (w3 & z3 & x7) ^ (w7 & z5 & x5) ^ (w6 & z6 & x7) ^ (w5 & z5 & x3) ^ (w3 & z5 & x5) ^ (w5 & z3 & x5) ^ (w6 & z6 & x3) ^ (w7 & z7 & x6) ^ (w5 & z6 & x3) ^ (w3 & z6 & x5) ^ (w6 & z3 & x5) ^ (w6 & z5 & x3) ^ (w3 & z5 & x6) ^ (w5 & z3 & x6) ^ (w5 & z7 & x3) ^ (w3 & z7 & x6) ^ (w7 & z6 & x3) ^ (w3 & z6 & x7) ^ (w6 & z3 & x7) ^ (w6 & z7 & x3) ^ (w7 & z3 & x6) ^ (w5 & z6 & x7) ^ (w6 & z7 & x5) ^ (w7 & z6 & x5) ^ (w3 & y3 & x3) ^ (w3 & y5 & x3) ^ (w5 & y3 & x3) ^ (w3 & y3 & x5) ^ (w3 & y3 & x6) ^ (w3 & y6 & x3) ^ (w3 & y3 & x7) ^ (w7 & y5 & x5) ^ (w6 & y6 & x7) ^ (w5 & y5 & x3) ^ (w3 & y5 & x5) ^ (w5 & y3 & x5) ^ (w6 & y6 & x3) ^ (w7 & y7 & x5) ^ (w5 & y6 & x3) ^ (w3 & y6 & x5) ^ (w6 & y3 & x5) ^ (w6 & y5 & x3) ^ (w3 & y5 & x6) ^ (w5 & y3 & x6) ^ (w5 & y7 & x3) ^ (w3 & y7 & x6) ^ (w7 & y6 & x3) ^ (w3 & y6 & x7) ^ (w6 & y3 & x7) ^ (w6 & y7 & x3) ^ (w7 & y3 & x6) ^ (w5 & y6 & x7) ^ (w6 & y7 & x5) ^ (w7 & y6 & x5);                                                                            
    assign out14[2] = x7 ^ (w5 & z3) ^ (w6 & z3) ^ (w7 & z3) ^ (w6 & z7) ^ (w5 & x3) ^ (w3 & x5) ^ (w3 & x6) ^ (w6 & x7) ^ (z5 & x3) ^ (z6 & x3) ^ (z5 & x7) ^ (w3 & z5 & x3) ^ (w5 & z3 & x3) ^ (w3 & z3 & x6) ^ (w3 & z6 & x3) ^ (w5 & z7 & x5) ^ (w5 & z5 & x3) ^ (w3 & z5 & x5) ^ (w5 & z3 & x5) ^ (w3 & z6 & x6) ^ (w6 & z3 & x6) ^ (w6 & z7 & x7) ^ (w5 & z6 & x3) ^ (w3 & z6 & x5) ^ (w6 & z3 & x5) ^ (w6 & z5 & x3) ^ (w3 & z5 & x6) ^ (w5 & z3 & x6) ^ (w5 & z7 & x3) ^ (w3 & z7 & x6) ^ (w7 & z6 & x3) ^ (w3 & z6 & x7) ^ (w6 & z3 & x7) ^ (w6 & z7 & x3) ^ (w7 & z3 & x6) ^ (w6 & z5 & x7) ^ (w7 & z5 & x6) ^ (z3 & y3 & x3) ^ (z6 & y6 & x6) ^ (z3 & y5 & x3) ^ (z5 & y3 & x3) ^ (z3 & y3 & x5) ^ (z3 & y3 & x6) ^ (z3 & y6 & x3) ^ (z3 & y7 & x3) ^ (z7 & y5 & x5) ^ (z7 & y6 & x6) ^ (z5 & y5 & x3) ^ (z3 & y5 & x5) ^ (z3 & y6 & x6) ^ (z7 & y5 & x7) ^ (z6 & y7 & x7) ^ (z5 & y6 & x3) ^ (z3 & y6 & x5) ^ (z6 & y3 & x5) ^ (z6 & y5 & x3) ^ (z3 & y5 & x6) ^ (z5 & y3 & x6) ^ (z5 & y7 & x3) ^ (z3 & y7 & x6) ^ (z7 & y6 & x3) ^ (z3 & y6 & x7) ^ (z6 & y3 & x7) ^ (z6 & y7 & x3) ^ (z7 & y3 & x6) ^ (z6 & y5 & x7) ^ (z7 & y5 & x6);                                                                            
    assign out14[1] = (w5 & y3) ^ (w6 & y3) ^ (w7 & y3) ^ (w6 & y7) ^ (z5 & y3) ^ (z3 & y5) ^ (z3 & y6) ^ (z6 & y7) ^ (z5 & x3) ^ (z6 & x3) ^ (z5 & x7) ^ (w3 & z5 & y3) ^ (w5 & z3 & y3) ^ (w3 & z3 & y6) ^ (w3 & z6 & y3) ^ (w5 & z7 & y5) ^ (w5 & z5 & y3) ^ (w3 & z5 & y5) ^ (w5 & z3 & y5) ^ (w3 & z6 & y6) ^ (w6 & z3 & y6) ^ (w6 & z7 & y7) ^ (w5 & z6 & y3) ^ (w3 & z6 & y5) ^ (w6 & z3 & y5) ^ (w6 & z5 & y3) ^ (w3 & z5 & y6) ^ (w5 & z3 & y6) ^ (w5 & z7 & y3) ^ (w3 & z7 & y6) ^ (w7 & z6 & y3) ^ (w3 & z6 & y7) ^ (w6 & z3 & y7) ^ (w6 & z7 & y3) ^ (w7 & z3 & y6) ^ (w6 & z5 & y7) ^ (w7 & z5 & y6) ^ (z3 & y3 & x3) ^ (z6 & y6 & x6) ^ (z3 & y5 & x3) ^ (z5 & y3 & x3) ^ (z3 & y3 & x5) ^ (z3 & y3 & x6) ^ (z3 & y6 & x3) ^ (z3 & y7 & x3) ^ (z7 & y5 & x5) ^ (z7 & y6 & x6) ^ (z5 & y5 & x3) ^ (z3 & y5 & x5) ^ (z5 & y3 & x5) ^ (z6 & y3 & x6) ^ (z7 & y6 & x7) ^ (z5 & y6 & x3) ^ (z3 & y6 & x5) ^ (z6 & y3 & x5) ^ (z6 & y5 & x3) ^ (z3 & y5 & x6) ^ (z5 & y3 & x6) ^ (z5 & y7 & x3) ^ (z3 & y7 & x6) ^ (z7 & y6 & x3) ^ (z3 & y6 & x7) ^ (z6 & y3 & x7) ^ (z6 & y7 & x3) ^ (z7 & y3 & x6) ^ (z5 & y6 & x7) ^ (z6 & y7 & x5) ^ (z7 & y6 & x5);                                                                
    assign out14[0] = x7 ^ (w5 & z3) ^ (w6 & z3) ^ (w7 & z3) ^ (w6 & z7) ^ (z5 & y3) ^ (z3 & y5) ^ (z3 & y6) ^ (z6 & y7) ^ (w5 & x3) ^ (w6 & x3) ^ (w5 & x7) ^ (y5 & x3) ^ (y3 & x5) ^ (y6 & x3) ^ (y6 & x7) ^ (w3 & z5 & y3) ^ (w5 & z3 & y3) ^ (w3 & z3 & y6) ^ (w6 & z3 & y3) ^ (w7 & z5 & y5) ^ (w5 & z5 & y3) ^ (w3 & z5 & y5) ^ (w5 & z3 & y5) ^ (w6 & z6 & y3) ^ (w7 & z5 & y7) ^ (w6 & z7 & y7) ^ (w5 & z6 & y3) ^ (w3 & z6 & y5) ^ (w6 & z3 & y5) ^ (w6 & z5 & y3) ^ (w3 & z5 & y6) ^ (w5 & z3 & y6) ^ (w3 & z7 & y6) ^ (w7 & z6 & y3) ^ (w3 & z6 & y7) ^ (w6 & z3 & y7) ^ (w6 & z7 & y3) ^ (w7 & z3 & y6) ^ (w5 & z6 & y7) ^ (w6 & z7 & y5) ^ (w7 & z6 & y5);

endmodule

module td12_share15(
    in3,
    in5,
    in7,
    in8,
    out15
);


    input wire [3:0] in3;
    input wire [3:0] in5;
    input wire [3:0] in7;
    input wire [3 : 0] in8;
    output wire [3 : 0] out15;

    wire x3, x5, x7, x8;
    wire y3, y5, y7, y8;
    wire z3, z5, z7, z8;
    wire w3, w5, w7, w8;

    assign x3 = in3[3];
    assign x5 = in5[3];
    assign x7 = in7[3];
    assign x8 = in8[3];

    assign y3 = in3[2];
    assign y5 = in5[2];
    assign y7 = in7[2];
    assign y8 = in8[2];

    assign z3 = in3[1];
    assign z5 = in5[1];
    assign z7 = in7[1];
    assign z8 = in8[1];

    assign w3 = in3[0];
    assign w5 = in5[0];
    assign w7 = in7[0];
    assign w8 = in8[0];

    assign out15[3] = x8 ^ (z3 & y5) ^ (z3 & y7) ^ (z8 & y3) ^ (z5 & y8) ^ (z8 & y7) ^ (y3 & x7) ^ (y8 & x3) ^ (y8 & x7) ^ (w5 & z3 & y3) ^ (w3 & z3 & y7) ^ (w3 & z7 & y3) ^ (w8 & z3 & y3) ^ (w8 & z5 & y5) ^ (w7 & z8 & y7) ^ (w5 & z3 & y5) ^ (w3 & z7 & y7) ^ (w3 & z8 & y8) ^ (w8 & z5 & y8) ^ (w7 & z8 & y8) ^ (w7 & z3 & y5) ^ (w7 & z5 & y3) ^ (w3 & z5 & y7) ^ (w5 & z3 & y7) ^ (w3 & z7 & y5) ^ (w3 & z5 & y8) ^ (w8 & z3 & y5) ^ (w8 & z5 & y3) ^ (w3 & z8 & y5) ^ (w5 & z8 & y3) ^ (w5 & z3 & y8) ^ (w7 & z8 & y3) ^ (w3 & z7 & y8) ^ (w8 & z7 & y3) ^ (w7 & z3 & y8) ^ (w8 & z3 & y7) ^ (w3 & z8 & y7) ^ (w8 & z7 & y5) ^ (w8 & z5 & y7) ^ (w5 & z8 & y7) ^ (w5 & z7 & y8) ^ (w7 & z8 & y5) ^ (w7 & z5 & y8) ^ (w5 & z8 & x5) ^ (w7 & z7 & x8) ^ (w7 & z8 & x7) ^ (w3 & z7 & x7) ^ (w3 & z8 & x8) ^ (w8 & z5 & x8) ^ (w7 & z8 & x8) ^ (w7 & z3 & x5) ^ (w7 & z5 & x3) ^ (w3 & z5 & x7) ^ (w5 & z3 & x7) ^ (w3 & z7 & x5) ^ (w3 & z5 & x8) ^ (w8 & z3 & x5) ^ (w8 & z5 & x3) ^ (w3 & z8 & x5) ^ (w5 & z8 & x3) ^ (w5 & z3 & x8) ^ (w7 & z8 & x3) ^ (w3 & z7 & x8) ^ (w8 & z7 & x3) ^ (w7 & z3 & x8) ^ (w8 & z3 & x7) ^ (w3 & z8 & x7) ^ (w8 & z7 & x5) ^ (w8 & z5 & x7) ^ (w5 & z8 & x7) ^ (w5 & z7 & x8) ^ (w7 & z8 & x5) ^ (w7 & z5 & x8) ^ (w5 & y8 & x5) ^ (w7 & y7 & x8) ^ (w7 & y8 & x7) ^ (w3 & y7 & x7) ^ (w3 & y8 & x8) ^ (w8 & y5 & x8) ^ (w7 & y8 & x8) ^ (w7 & y3 & x5) ^ (w7 & y5 & x3) ^ (w3 & y5 & x7) ^ (w5 & y3 & x7) ^ (w3 & y7 & x5) ^ (w3 & y5 & x8) ^ (w8 & y3 & x5) ^ (w8 & y5 & x3) ^ (w3 & y8 & x5) ^ (w5 & y8 & x3) ^ (w5 & y3 & x8) ^ (w7 & y8 & x3) ^ (w3 & y7 & x8) ^ (w8 & y7 & x3) ^ (w7 & y3 & x8) ^ (w8 & y3 & x7) ^ (w3 & y8 & x7) ^ (w8 & y7 & x5) ^ (w8 & y5 & x7) ^ (w5 & y8 & x7) ^ (w5 & y7 & x8) ^ (w7 & y8 & x5) ^ (w7 & y5 & x8);                                                                                                                                                                                 
    assign out15[2] = x8 ^ (w3 & z5) ^ (w3 & z7) ^ (w8 & z3) ^ (w5 & z8) ^ (w8 & z7) ^ (w3 & x7) ^ (w8 & x3) ^ (w8 & x7) ^ (z3 & x5) ^ (z3 & x7) ^ (z8 & x3) ^ (z8 & x7) ^ (w3 & z3 & x5) ^ (w3 & z3 & x7) ^ (w3 & z7 & x3) ^ (w8 & z3 & x3) ^ (w8 & z5 & x5) ^ (w7 & z8 & x7) ^ (w3 & z7 & x7) ^ (w7 & z3 & x7) ^ (w8 & z8 & x3) ^ (w8 & z5 & x8) ^ (w7 & z8 & x8) ^ (w7 & z3 & x5) ^ (w7 & z5 & x3) ^ (w3 & z5 & x7) ^ (w5 & z3 & x7) ^ (w3 & z7 & x5) ^ (w3 & z5 & x8) ^ (w8 & z3 & x5) ^ (w8 & z5 & x3) ^ (w3 & z8 & x5) ^ (w5 & z8 & x3) ^ (w5 & z3 & x8) ^ (w7 & z8 & x3) ^ (w3 & z7 & x8) ^ (w8 & z7 & x3) ^ (w7 & z3 & x8) ^ (w8 & z3 & x7) ^ (w3 & z8 & x7) ^ (w8 & z7 & x5) ^ (w8 & z5 & x7) ^ (w5 & z8 & x7) ^ (w5 & z7 & x8) ^ (w7 & z8 & x5) ^ (w7 & z5 & x8) ^ (z7 & y7 & x8) ^ (z8 & y7 & x7) ^ (z5 & y3 & x5) ^ (z3 & y7 & x7) ^ (z3 & y8 & x8) ^ (z8 & y5 & x8) ^ (z7 & y8 & x8) ^ (z7 & y3 & x5) ^ (z7 & y5 & x3) ^ (z3 & y5 & x7) ^ (z5 & y3 & x7) ^ (z3 & y7 & x5) ^ (z3 & y5 & x8) ^ (z8 & y3 & x5) ^ (z8 & y5 & x3) ^ (z3 & y8 & x5) ^ (z5 & y8 & x3) ^ (z5 & y3 & x8) ^ (z7 & y8 & x3) ^ (z3 & y7 & x8) ^ (z8 & y7 & x3) ^ (z7 & y3 & x8) ^ (z8 & y3 & x7) ^ (z3 & y8 & x7) ^ (z8 & y7 & x5) ^ (z8 & y5 & x7) ^ (z5 & y8 & x7) ^ (z5 & y7 & x8) ^ (z7 & y8 & x5) ^ (z7 & y5 & x8);                                                                                                                                                                     
    assign out15[1] = (w3 & y5) ^ (w3 & y7) ^ (w3 & y8) ^ (w5 & y8) ^ (w8 & y7) ^ (z3 & y7) ^ (z8 & y3) ^ (z8 & y7) ^ (z3 & x5) ^ (z3 & x7) ^ (z8 & x3) ^ (z8 & x7) ^ (w3 & z3 & y5) ^ (w3 & z3 & y7) ^ (w3 & z7 & y3) ^ (w8 & z3 & y3) ^ (w8 & z5 & y5) ^ (w7 & z8 & y7) ^ (w3 & z7 & y7) ^ (w7 & z3 & y7) ^ (w8 & z8 & y3) ^ (w8 & z5 & y8) ^ (w7 & z8 & y8) ^ (w7 & z3 & y5) ^ (w7 & z5 & y3) ^ (w3 & z5 & y7) ^ (w5 & z3 & y7) ^ (w3 & z7 & y5) ^ (w3 & z5 & y8) ^ (w8 & z3 & y5) ^ (w8 & z5 & y3) ^ (w3 & z8 & y5) ^ (w5 & z8 & y3) ^ (w5 & z3 & y8) ^ (w7 & z8 & y3) ^ (w3 & z7 & y8) ^ (w8 & z7 & y3) ^ (w7 & z3 & y8) ^ (w8 & z3 & y7) ^ (w3 & z8 & y7) ^ (w8 & z7 & y5) ^ (w8 & z5 & y7) ^ (w5 & z8 & y7) ^ (w5 & z7 & y8) ^ (w7 & z8 & y5) ^ (w7 & z5 & y8) ^ (z5 & y8 & x5) ^ (z7 & y7 & x8) ^ (z7 & y8 & x7) ^ (z3 & y7 & x7) ^ (z3 & y8 & x8) ^ (z8 & y5 & x8) ^ (z7 & y8 & x8) ^ (z7 & y3 & x5) ^ (z7 & y5 & x3) ^ (z3 & y5 & x7) ^ (z5 & y3 & x7) ^ (z3 & y7 & x5) ^ (z3 & y5 & x8) ^ (z8 & y3 & x5) ^ (z8 & y5 & x3) ^ (z3 & y8 & x5) ^ (z5 & y8 & x3) ^ (z5 & y3 & x8) ^ (z7 & y8 & x3) ^ (z3 & y7 & x8) ^ (z8 & y7 & x3) ^ (z7 & y3 & x8) ^ (z8 & y3 & x7) ^ (z3 & y8 & x7) ^ (z8 & y7 & x5) ^ (z8 & y5 & x7) ^ (z5 & y8 & x7) ^ (z5 & y7 & x8) ^ (z7 & y8 & x5) ^ (z7 & y5 & x8);                                                                                                                                                                          
    assign out15[0] = x8 ^ (w3 & z5) ^ (w3 & z7) ^ (w8 & z3) ^ (w5 & z8) ^ (w8 & z7) ^ (z3 & y7) ^ (z8 & y3) ^ (z8 & y7) ^ (w3 & x5) ^ (w3 & x7) ^ (w8 & x3) ^ (w8 & x7) ^ (y3 & x7) ^ (y7 & x3) ^ (y8 & x3) ^ (y8 & x7) ^ (w3 & z3 & y5) ^ (w3 & z3 & y7) ^ (w7 & z3 & y3) ^ (w3 & z8 & y3) ^ (w5 & z8 & y5) ^ (w7 & z8 & y7) ^ (w3 & z7 & y7) ^ (w7 & z3 & y7) ^ (w8 & z8 & y3) ^ (w8 & z5 & y8) ^ (w7 & z3 & y5) ^ (w7 & z5 & y3) ^ (w3 & z5 & y7) ^ (w5 & z3 & y7) ^ (w3 & z7 & y5) ^ (w5 & z7 & y3) ^ (w3 & z5 & y8) ^ (w8 & z3 & y5) ^ (w8 & z5 & y3) ^ (w3 & z8 & y5) ^ (w5 & z8 & y3) ^ (w5 & z3 & y8) ^ (w7 & z8 & y3) ^ (w3 & z7 & y8) ^ (w8 & z7 & y3) ^ (w7 & z3 & y8) ^ (w8 & z3 & y7) ^ (w3 & z8 & y7) ^ (w8 & z7 & y5) ^ (w8 & z5 & y7) ^ (w5 & z8 & y7) ^ (w5 & z7 & y8) ^ (w7 & z8 & y5) ^ (w7 & z5 & y8);

endmodule

module td12_share16(
    in4,
    in5,
    in6,
    in7,
    out16
);


    input wire [3:0] in4;
    input wire [3:0] in5;
    input wire [3:0] in6;
    input wire [3 : 0] in7;
    output wire [3 : 0] out16;

    wire x4, x5, x6, x7;
    wire y4, y5, y6, y7;
    wire z4, z5, z6, z7;
    wire w4, w5, w6, w7;

    assign x4 = in4[3];
    assign x5 = in5[3];
    assign x6 = in6[3];
    assign x7 = in7[3];

    assign y4 = in4[2];
    assign y5 = in5[2];
    assign y6 = in6[2];
    assign y7 = in7[2];

    assign z4 = in4[1];
    assign z5 = in5[1];
    assign z6 = in6[1];
    assign z7 = in7[1];

    assign w4 = in4[0];
    assign w5 = in5[0];
    assign w6 = in6[0];
    assign w7 = in7[0];

    assign out16[3] = x4 ^ (z4 & y5) ^ (z5 & y4) ^ (z4 & y7) ^ (y5 & x5) ^ (y4 & x5) ^ (y5 & x4) ^ (y4 & x7) ^ (w6 & z6 & y6) ^ (w4 & z4 & y5) ^ (w5 & z4 & y4) ^ (w4 & z5 & y4) ^ (w5 & z7 & y5) ^ (w7 & z6 & y6) ^ (w5 & z4 & y5) ^ (w4 & z5 & y5) ^ (w5 & z5 & y4) ^ (w4 & z7 & y7) ^ (w6 & z7 & y7) ^ (w6 & z4 & y5) ^ (w5 & z6 & y4) ^ (w4 & z6 & y5) ^ (w5 & z4 & y6) ^ (w6 & z5 & y4) ^ (w4 & z5 & y6) ^ (w4 & z5 & y7) ^ (w4 & z7 & y5) ^ (w7 & z5 & y4) ^ (w7 & z4 & y5) ^ (w5 & z7 & y4) ^ (w5 & z4 & y7) ^ (w5 & z7 & y6) ^ (w6 & z5 & y7) ^ (w7 & z5 & y6) ^ (w4 & z4 & x4) ^ (w5 & z5 & x5) ^ (w4 & z4 & x5) ^ (w5 & z4 & x4) ^ (w4 & z5 & x4) ^ (w4 & z4 & x6) ^ (w6 & z4 & x4) ^ (w4 & z6 & x4) ^ (w4 & z7 & x4) ^ (w7 & z6 & x6) ^ (w5 & z4 & x5) ^ (w4 & z5 & x5) ^ (w5 & z5 & x4) ^ (w7 & z4 & x7) ^ (w7 & z6 & x7) ^ (w6 & z4 & x5) ^ (w5 & z6 & x4) ^ (w4 & z6 & x5) ^ (w5 & z4 & x6) ^ (w6 & z5 & x4) ^ (w4 & z5 & x6) ^ (w4 & z5 & x7) ^ (w4 & z7 & x5) ^ (w7 & z5 & x4) ^ (w7 & z4 & x5) ^ (w5 & z7 & x4) ^ (w5 & z4 & x7) ^ (w5 & z7 & x6) ^ (w6 & z5 & x7) ^ (w7 & z5 & x6) ^ (w4 & y4 & x4) ^ (w5 & y5 & x5) ^ (w4 & y4 & x5) ^ (w5 & y4 & x4) ^ (w4 & y5 & x4) ^ (w4 & y4 & x6) ^ (w6 & y4 & x4) ^ (w4 & y6 & x4) ^ (w4 & y7 & x4) ^ (w7 & y6 & x6) ^ (w5 & y4 & x5) ^ (w4 & y5 & x5) ^ (w5 & y5 & x4) ^ (w7 & y4 & x7) ^ (w7 & y7 & x6) ^ (w6 & y4 & x5) ^ (w5 & y6 & x4) ^ (w4 & y6 & x5) ^ (w5 & y4 & x6) ^ (w6 & y5 & x4) ^ (w4 & y5 & x6) ^ (w4 & y5 & x7) ^ (w4 & y7 & x5) ^ (w7 & y5 & x4) ^ (w7 & y4 & x5) ^ (w5 & y7 & x4) ^ (w5 & y4 & x7) ^ (w5 & y7 & x6) ^ (w6 & y5 & x7) ^ (w7 & y5 & x6);
    assign out16[2] = x4 ^ (w4 & z5) ^ (w5 & z4) ^ (w4 & z7) ^ (w5 & x5) ^ (w4 & x5) ^ (w5 & x4) ^ (w4 & x7) ^ (z6 & x6) ^ (z4 & x5) ^ (z5 & x4) ^ (z7 & x5) ^ (w4 & z4 & x5) ^ (w5 & z4 & x4) ^ (w4 & z5 & x4) ^ (w4 & z7 & x4) ^ (w7 & z5 & x5) ^ (w5 & z4 & x5) ^ (w4 & z5 & x5) ^ (w5 & z5 & x4) ^ (w7 & z4 & x7) ^ (w7 & z5 & x7) ^ (w6 & z4 & x5) ^ (w5 & z6 & x4) ^ (w4 & z6 & x5) ^ (w5 & z4 & x6) ^ (w6 & z5 & x4) ^ (w4 & z5 & x6) ^ (w4 & z5 & x7) ^ (w4 & z7 & x5) ^ (w7 & z5 & x4) ^ (w7 & z4 & x5) ^ (w5 & z7 & x4) ^ (w5 & z4 & x7) ^ (w5 & z7 & x6) ^ (w5 & z6 & x7) ^ (w6 & z7 & x5) ^ (w7 & z6 & x5) ^ (z4 & y4 & x4) ^ (z7 & y7 & x7) ^ (z4 & y4 & x5) ^ (z5 & y4 & x4) ^ (z4 & y5 & x4) ^ (z4 & y4 & x6) ^ (z6 & y4 & x4) ^ (z4 & y4 & x7) ^ (z5 & y5 & x7) ^ (z5 & y4 & x5) ^ (z4 & y5 & x5) ^ (z5 & y5 & x4) ^ (z6 & y4 & x6) ^ (z7 & y7 & x4) ^ (z6 & y4 & x5) ^ (z5 & y6 & x4) ^ (z4 & y6 & x5) ^ (z5 & y4 & x6) ^ (z6 & y5 & x4) ^ (z4 & y5 & x6) ^ (z4 & y5 & x7) ^ (z4 & y7 & x5) ^ (z7 & y5 & x4) ^ (z7 & y4 & x5) ^ (z5 & y7 & x4) ^ (z5 & y4 & x7) ^ (z5 & y7 & x6) ^ (z5 & y6 & x7) ^ (z6 & y7 & x5) ^ (z7 & y6 & x5);
    assign out16[1] = (w4 & y5) ^ (w5 & y4) ^ (w4 & y7) ^ (z5 & y5) ^ (z4 & y5) ^ (z5 & y4) ^ (z4 & y7) ^ (z6 & x6) ^ (z4 & x5) ^ (z5 & x4) ^ (z4 & x7) ^ (w4 & z4 & y5) ^ (w5 & z4 & y4) ^ (w4 & z5 & y4) ^ (w4 & z7 & y4) ^ (w7 & z5 & y5) ^ (w5 & z4 & y5) ^ (w4 & z5 & y5) ^ (w5 & z5 & y4) ^ (w6 & z4 & y6) ^ (w7 & z5 & y7) ^ (w6 & z4 & y5) ^ (w5 & z6 & y4) ^ (w4 & z6 & y5) ^ (w5 & z4 & y6) ^ (w6 & z5 & y4) ^ (w4 & z5 & y6) ^ (w4 & z5 & y7) ^ (w4 & z7 & y5) ^ (w7 & z5 & y4) ^ (w7 & z4 & y5) ^ (w5 & z7 & y4) ^ (w5 & z4 & y7) ^ (w5 & z7 & y6) ^ (w5 & z6 & y7) ^ (w6 & z7 & y5) ^ (w7 & z6 & y5) ^ (z4 & y4 & x4) ^ (z7 & y7 & x7) ^ (z4 & y4 & x5) ^ (z5 & y4 & x4) ^ (z4 & y5 & x4) ^ (z4 & y4 & x6) ^ (z6 & y4 & x4) ^ (z4 & y4 & x7) ^ (z5 & y5 & x7) ^ (z5 & y4 & x5) ^ (z4 & y5 & x5) ^ (z5 & y5 & x4) ^ (z6 & y4 & x6) ^ (z7 & y7 & x4) ^ (z6 & y7 & x7) ^ (z6 & y4 & x5) ^ (z5 & y6 & x4) ^ (z4 & y6 & x5) ^ (z5 & y4 & x6) ^ (z6 & y5 & x4) ^ (z4 & y5 & x6) ^ (z4 & y5 & x7) ^ (z4 & y7 & x5) ^ (z7 & y5 & x4) ^ (z7 & y4 & x5) ^ (z5 & y7 & x4) ^ (z5 & y4 & x7) ^ (z5 & y7 & x6) ^ (z6 & y5 & x7) ^ (z7 & y5 & x6);
    assign out16[0] = x4 ^ (w4 & z5) ^ (w5 & z4) ^ (w4 & z7) ^ (z5 & y5) ^ (z4 & y5) ^ (z5 & y4) ^ (z4 & y7) ^ (w6 & x6) ^ (w4 & x5) ^ (w5 & x4) ^ (w7 & x5) ^ (y4 & x5) ^ (y5 & x4) ^ (y7 & x4) ^ (w5 & z5 & y5) ^ (w4 & z4 & y5) ^ (w5 & z4 & y4) ^ (w4 & z5 & y4) ^ (w4 & z7 & y4) ^ (w5 & z5 & y7) ^ (w5 & z4 & y5) ^ (w4 & z5 & y5) ^ (w5 & z5 & y4) ^ (w7 & z4 & y7) ^ (w7 & z7 & y5) ^ (w6 & z4 & y5) ^ (w5 & z6 & y4) ^ (w4 & z6 & y5) ^ (w5 & z4 & y6) ^ (w6 & z5 & y4) ^ (w4 & z5 & y6) ^ (w4 & z5 & y7) ^ (w4 & z7 & y5) ^ (w7 & z5 & y4) ^ (w7 & z4 & y5) ^ (w5 & z7 & y4) ^ (w5 & z4 & y7) ^ (w5 & z7 & y6) ^ (w6 & z5 & y7) ^ (w7 & z5 & y6);

endmodule

module td12_share17(
    in4,
    in6,
    in7,
    in8,
    out17
);


    input wire [3:0] in4;
    input wire [3:0] in6;
    input wire [3:0] in7;
    input wire [3 : 0] in8;
    output wire [3 : 0] out17;

    wire x4, x6, x7, x8;
    wire y4, y6, y7, y8;
    wire z4, z6, z7, z8;
    wire w4, w6, w7, w8;

    assign x4 = in4[3];
    assign x6 = in6[3];
    assign x7 = in7[3];
    assign x8 = in8[3];

    assign y4 = in4[2];
    assign y6 = in6[2];
    assign y7 = in7[2];
    assign y8 = in8[2];

    assign z4 = in4[1];
    assign z6 = in6[1];
    assign z7 = in7[1];
    assign z8 = in8[1];

    assign w4 = in4[0];
    assign w6 = in6[0];
    assign w7 = in7[0];
    assign w8 = in8[0];

    assign out17[3] = (z4 & y4) ^ (z6 & y4) ^ (z4 & y6) ^ (z8 & y4) ^ (z6 & y8) ^ (y6 & x4) ^ (y4 & x6) ^ (y4 & x8) ^ (w4 & z4 & y6) ^ (w6 & z4 & y4) ^ (w4 & z6 & y4) ^ (w4 & z7 & y4) ^ (w4 & z8 & y4) ^ (w8 & z6 & y6) ^ (w4 & z6 & y6) ^ (w6 & z6 & y4) ^ (w6 & z4 & y6) ^ (w7 & z7 & y4) ^ (w6 & z8 & y8) ^ (w6 & z7 & y4) ^ (w4 & z7 & y6) ^ (w7 & z4 & y6) ^ (w7 & z6 & y4) ^ (w6 & z4 & y7) ^ (w4 & z6 & y7) ^ (w4 & z8 & y6) ^ (w4 & z6 & y8) ^ (w8 & z4 & y6) ^ (w6 & z4 & y8) ^ (w6 & z8 & y4) ^ (w8 & z6 & y4) ^ (w8 & z7 & y4) ^ (w4 & z8 & y7) ^ (w8 & z4 & y7) ^ (w7 & z4 & y8) ^ (w7 & z8 & y4) ^ (w4 & z7 & y8) ^ (w7 & z6 & y8) ^ (w7 & z8 & y6) ^ (w8 & z6 & y7) ^ (w6 & z7 & y8) ^ (w8 & z7 & y6) ^ (w6 & z8 & y7) ^ (w4 & z4 & x8) ^ (w6 & z8 & x6) ^ (w4 & z6 & x6) ^ (w6 & z6 & x4) ^ (w4 & z7 & x7) ^ (w4 & z8 & x8) ^ (w8 & z6 & x8) ^ (w6 & z7 & x4) ^ (w4 & z7 & x6) ^ (w7 & z4 & x6) ^ (w7 & z6 & x4) ^ (w6 & z4 & x7) ^ (w4 & z6 & x7) ^ (w4 & z8 & x6) ^ (w4 & z6 & x8) ^ (w8 & z4 & x6) ^ (w6 & z4 & x8) ^ (w6 & z8 & x4) ^ (w8 & z6 & x4) ^ (w8 & z7 & x4) ^ (w4 & z8 & x7) ^ (w8 & z4 & x7) ^ (w7 & z4 & x8) ^ (w7 & z8 & x4) ^ (w4 & z7 & x8) ^ (w7 & z6 & x8) ^ (w7 & z8 & x6) ^ (w8 & z6 & x7) ^ (w6 & z7 & x8) ^ (w8 & z7 & x6) ^ (w6 & z8 & x7) ^ (w8 & y4 & x4) ^ (w4 & y6 & x6) ^ (w6 & y6 & x4) ^ (w4 & y7 & x7) ^ (w8 & y8 & x4) ^ (w8 & y6 & x8) ^ (w6 & y7 & x4) ^ (w4 & y7 & x6) ^ (w7 & y4 & x6) ^ (w7 & y6 & x4) ^ (w6 & y4 & x7) ^ (w4 & y6 & x7) ^ (w4 & y8 & x6) ^ (w4 & y6 & x8) ^ (w8 & y4 & x6) ^ (w6 & y4 & x8) ^ (w6 & y8 & x4) ^ (w8 & y6 & x4) ^ (w8 & y7 & x4) ^ (w4 & y8 & x7) ^ (w8 & y4 & x7) ^ (w7 & y4 & x8) ^ (w7 & y8 & x4) ^ (w4 & y7 & x8) ^ (w7 & y6 & x8) ^ (w7 & y8 & x6) ^ (w8 & y6 & x7) ^ (w6 & y7 & x8) ^ (w8 & y7 & x6) ^ (w6 & y8 & x7);
    assign out17[2] = (w4 & z4) ^ (w6 & z4) ^ (w4 & z6) ^ (w8 & z4) ^ (w6 & z8) ^ (w6 & x4) ^ (w4 & x6) ^ (w4 & x8) ^ (z6 & x4) ^ (z4 & x6) ^ (z7 & x4) ^ (z4 & x8) ^ (w4 & z4 & x6) ^ (w6 & z4 & x4) ^ (w4 & z6 & x4) ^ (w7 & z4 & x4) ^ (w4 & z8 & x4) ^ (w8 & z6 & x6) ^ (w4 & z6 & x6) ^ (w6 & z6 & x4) ^ (w4 & z7 & x7) ^ (w8 & z8 & x4) ^ (w8 & z8 & x6) ^ (w6 & z7 & x4) ^ (w4 & z7 & x6) ^ (w7 & z4 & x6) ^ (w7 & z6 & x4) ^ (w6 & z4 & x7) ^ (w4 & z6 & x7) ^ (w4 & z8 & x6) ^ (w4 & z6 & x8) ^ (w8 & z4 & x6) ^ (w6 & z4 & x8) ^ (w6 & z8 & x4) ^ (w8 & z6 & x4) ^ (w8 & z7 & x4) ^ (w4 & z8 & x7) ^ (w8 & z4 & x7) ^ (w7 & z4 & x8) ^ (w7 & z8 & x4) ^ (w4 & z7 & x8) ^ (w7 & z6 & x8) ^ (w7 & z8 & x6) ^ (w8 & z6 & x7) ^ (w6 & z7 & x8) ^ (w8 & z7 & x6) ^ (w6 & z8 & x7) ^ (z4 & y4 & x8) ^ (z6 & y8 & x6) ^ (z4 & y6 & x6) ^ (z7 & y4 & x7) ^ (z8 & y8 & x4) ^ (z6 & y8 & x8) ^ (z6 & y7 & x4) ^ (z4 & y7 & x6) ^ (z7 & y4 & x6) ^ (z7 & y6 & x4) ^ (z6 & y4 & x7) ^ (z4 & y6 & x7) ^ (z4 & y8 & x6) ^ (z4 & y6 & x8) ^ (z8 & y4 & x6) ^ (z6 & y4 & x8) ^ (z6 & y8 & x4) ^ (z8 & y6 & x4) ^ (z8 & y7 & x4) ^ (z4 & y8 & x7) ^ (z8 & y4 & x7) ^ (z7 & y4 & x8) ^ (z7 & y8 & x4) ^ (z4 & y7 & x8) ^ (z7 & y6 & x8) ^ (z7 & y8 & x6) ^ (z8 & y6 & x7) ^ (z6 & y7 & x8) ^ (z8 & y7 & x6) ^ (z6 & y8 & x7);
    assign out17[1] = (w6 & y4) ^ (w4 & y6) ^ (w8 & y4) ^ (w8 & y6) ^ (z6 & y4) ^ (z4 & y6) ^ (z8 & y4) ^ (z6 & y8) ^ (z6 & x4) ^ (z4 & x6) ^ (z4 & x8) ^ (w4 & z4 & y6) ^ (w6 & z4 & y4) ^ (w4 & z6 & y4) ^ (w7 & z4 & y4) ^ (w4 & z8 & y4) ^ (w8 & z6 & y6) ^ (w4 & z6 & y6) ^ (w6 & z6 & y4) ^ (w7 & z4 & y7) ^ (w8 & z8 & y4) ^ (w8 & z8 & y6) ^ (w6 & z7 & y4) ^ (w4 & z7 & y6) ^ (w7 & z4 & y6) ^ (w7 & z6 & y4) ^ (w6 & z4 & y7) ^ (w4 & z6 & y7) ^ (w4 & z8 & y6) ^ (w4 & z6 & y8) ^ (w8 & z4 & y6) ^ (w6 & z4 & y8) ^ (w6 & z8 & y4) ^ (w8 & z6 & y4) ^ (w8 & z7 & y4) ^ (w4 & z8 & y7) ^ (w8 & z4 & y7) ^ (w7 & z4 & y8) ^ (w7 & z8 & y4) ^ (w4 & z7 & y8) ^ (w7 & z6 & y8) ^ (w7 & z8 & y6) ^ (w8 & z6 & y7) ^ (w6 & z7 & y8) ^ (w8 & z7 & y6) ^ (w6 & z8 & y7) ^ (z4 & y4 & x8) ^ (z6 & y8 & x6) ^ (z4 & y6 & x6) ^ (z7 & y4 & x7) ^ (z8 & y8 & x4) ^ (z6 & y8 & x8) ^ (z6 & y7 & x4) ^ (z4 & y7 & x6) ^ (z7 & y4 & x6) ^ (z7 & y6 & x4) ^ (z6 & y4 & x7) ^ (z4 & y6 & x7) ^ (z4 & y8 & x6) ^ (z4 & y6 & x8) ^ (z8 & y4 & x6) ^ (z6 & y4 & x8) ^ (z6 & y8 & x4) ^ (z8 & y6 & x4) ^ (z8 & y7 & x4) ^ (z4 & y8 & x7) ^ (z8 & y4 & x7) ^ (z7 & y4 & x8) ^ (z7 & y8 & x4) ^ (z4 & y7 & x8) ^ (z7 & y6 & x8) ^ (z7 & y8 & x6) ^ (z8 & y6 & x7) ^ (z6 & y7 & x8) ^ (z8 & y7 & x6) ^ (z6 & y8 & x7);
    assign out17[0] = (w4 & z4) ^ (w6 & z4) ^ (w4 & z6) ^ (w8 & z4) ^ (w6 & z8) ^ (z6 & y4) ^ (z4 & y6) ^ (z4 & y8) ^ (w6 & x4) ^ (w4 & x6) ^ (w7 & x4) ^ (w4 & x8) ^ (y6 & x4) ^ (y4 & x6) ^ (y4 & x7) ^ (y4 & x8) ^ (w4 & z4 & y6) ^ (w6 & z4 & y4) ^ (w4 & z6 & y4) ^ (w7 & z4 & y4) ^ (w4 & z8 & y4) ^ (w6 & z8 & y6) ^ (w4 & z6 & y6) ^ (w6 & z6 & y4) ^ (w4 & z7 & y7) ^ (w8 & z8 & y4) ^ (w8 & z8 & y6) ^ (w6 & z7 & y4) ^ (w4 & z7 & y6) ^ (w7 & z4 & y6) ^ (w7 & z6 & y4) ^ (w6 & z4 & y7) ^ (w4 & z6 & y7) ^ (w4 & z8 & y6) ^ (w4 & z6 & y8) ^ (w8 & z4 & y6) ^ (w6 & z4 & y8) ^ (w6 & z8 & y4) ^ (w8 & z6 & y4) ^ (w8 & z7 & y4) ^ (w4 & z8 & y7) ^ (w8 & z4 & y7) ^ (w7 & z4 & y8) ^ (w7 & z8 & y4) ^ (w4 & z7 & y8) ^ (w7 & z6 & y8) ^ (w7 & z8 & y6) ^ (w8 & z6 & y7) ^ (w6 & z7 & y8) ^ (w8 & z7 & y6) ^ (w6 & z8 & y7);

endmodule

