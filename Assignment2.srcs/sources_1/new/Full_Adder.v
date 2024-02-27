`timescale 1ns / 1ps
module Full_Adder(output reg sum,cout,input a,b,cin);

always@(*) begin
    {cout,sum} = a+b+cin;
end


endmodule
