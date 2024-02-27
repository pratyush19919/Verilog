`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2023 20:01:53
// Design Name: 
// Module Name: tt
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tt();

reg x,y,z,en;
wire [7:0]c,d;
reg [7:0]ref;
reg [3:0]count=4'd0;

decoder_3to8 dut0(d[7],d[6],d[5],d[4],d[3],d[2],d[1],d[0],x,y,z,en);
decoder_3x8_cond dut1(c[0],c[1],c[2],c[3],c[4],c[5],c[6],c[7],x,y,z,en);

initial begin
en=1;
for(integer i=0;i<8;i=i+1)
begin

{x,y,z}=i;
ref=2**i;
#10;

end

for(integer i=0;i<8;i=i+1)

if((c==ref)&&(d==ref))
count=count+1;

end

initial begin
if(count==4'b1000)
$display("PASS");
else
$display("FAIL");
end

initial #100 $finish;

endmodule
