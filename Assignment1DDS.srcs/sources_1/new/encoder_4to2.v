`timescale 1ns / 1ps
module Encoder4to2(output a,b, input i3,i2,i1,i0);

or o1(a,i2,i3);
or o2(b,i1,i3);

or o3(i0,i1,i2,i3);

endmodule

