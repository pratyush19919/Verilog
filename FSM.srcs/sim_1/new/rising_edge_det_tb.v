`timescale 1ns / 1ps

module rising_edge_det_tb();

wire out;


reg in,rst;
reg clk=1;

rise_edge_det dut(out,clk,rst,in);

always
#5 clk = ~clk;

initial
begin
rst=1;
#3 rst=0;

#7 in = 0;

#17 in = 1;

#30 in = 0;

#20 $finish;
end

endmodule
