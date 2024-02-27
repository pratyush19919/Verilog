`timescale 1ns / 1ps

module display(input clk, rst, output reg [6:0]seg, reg [3:0]an);
wire y;
clk_div t(clk,y);
initial
an=1;

always@(posedge y)
begin
an = an<<1;
end

always@(*)
begin
case(an)
    4'b1110 : seg =  7'b0001111;
    4'b1101 : seg =  7'b0000100;
    4'b1011 : seg =  7'b0000110;
    4'b0111 : seg =  7'b1001100;
endcase
end



//always @(*) begin
//    case ()
//        4'b0000:
//            display_out = 8'b00000011;  //a,b,c,d,e,f,g,dot (zero)
//        4'b0001:
//            display_out = 8'b10011111;  //one
//        4'b0010:
//            display_out = 8'b00100101;  //two
//        4'b0011:
//            display_out = 8'b00001101;  //three
//        4'b0100:
//            display_out = 8'b10011001;  //four
//        4'b0101:
//            display_out = 8'b01001001;  //five
//        4'b0110:
//            display_out = 8'b01000001;  //six
//        4'b0111:
//            display_out = 8'b00011111;  //seven
//        4'b1000:
//            display_out = 8'b00000001;  //eight
//        4'b1001:
//            display_out = 8'b00001001;  //nine
//        4'b1010:
//            display_out = 8'b00010001;  //A
//        4'b1011:
//            display_out = 8'b11000001;  //b
//        4'b1100:
//            display_out = 8'b01100011;  //C
//        4'b1101:
//            display_out = 8'b10000101;  //d
//        4'b1110:
//            display_out = 8'b01100001;  //E
//        4'b1111:
//            display_out = 8'b01110001;  //F
//    endcase
endmodule


module clk_div(input clk,output reg y);

integer count=0;
initial
y=0;

always@(posedge clk)
begin
count = count+1;

if(count == 800000)
begin
count=0;
y=~y;
end
end 

endmodule