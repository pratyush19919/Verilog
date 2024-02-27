`timescale 1ns / 1ps

module Q7 #(parameter N= 6)(output [N-1:0]sum, output cout, input [N-1:0]a,b,input cin );

wire [N:0]c;

assign c[0]=cin;

genvar i;

generate for(i=0;i<N;i=i+1) begin

Full_Adder FA0(sum[i],c[i+1],a[i],b[i],c[i]);

end

endgenerate

assign cout=c[N];

endmodule