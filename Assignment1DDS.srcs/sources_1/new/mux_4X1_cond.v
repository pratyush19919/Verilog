`timescale 1ns / 1ps

module mux_4x1(output f,input a,b,c,d,s1,s0);

assign f = s1 ? ( s0 ? d : c ) : ( s0 ? b : a );

endmodule
