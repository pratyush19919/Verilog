`timescale 1ns / 1ps
module RCount_T(output [3:0]q, input clk,rst,t);

T_FF T3(q[0],~clk,rst,t);
T_FF T2(q[1],~q[0],rst,t);
T_FF T1(q[2],~q[1],rst,t);
T_FF T0(q[3],~q[2],rst,t);

assign res = q;

endmodule
