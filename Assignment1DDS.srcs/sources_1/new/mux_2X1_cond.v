`timescale 1ns / 1ps
module mux_2x1(output f,input a,b,s);

assign f = s ? b : a ;

endmodule

