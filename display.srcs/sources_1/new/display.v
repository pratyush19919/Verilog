`timescale 1ns / 1ps


module clock(input clk, rst, output reg [3:0] sone,sten,mone,mten );

integer count;
wire y;
clk_div1 t(clk,y);

always@(posedge y or posedge rst)
begin

if(rst)
begin
    count =0;sone=0;sten=0;mone=0;mten=0;
   
end

else
begin

count = count+1;
if(count == 59)
begin
    count =0;sone=0;sten=0;
    mone = mone+1;
    if(mone == 10)
    begin
        mone=0;
        mten=mten+1;
    end
    if(mten == 6)
    begin
    mone =0;
    mten=0;
    sone=0;
    sten=0;
    end
    
    
end
if(sone<10)
    sone=sone+1;
    if(sone==10)
        begin
            sone = 0;
            sten=sten+1;
        end
    if(sten == 6)
        begin
        sten=0;
        end
        
    
end



end



endmodule


module display(input clk, rst, output reg [6:0]seg, reg [3:0]an);
wire y;
wire [3:0] sone,sten,mone,mten;

clock main(clk, rst,sone,sten,mone,mten);

clk_div t(clk,y);

initial
an=4'b1110;

always@(posedge y)
begin
an[3]<=an[2];
an[2]<=an[1];
an[1]<=an[0];
an[0]<=an[3];
end

always@(*)
begin
case(an)
    4'b1110 :
        case(sone)
        
            0: seg = 7'b1000000;    // digit 0
            1: seg = 7'b1111001;    // digit 1
            2: seg = 7'b0100100;    // digit 2
            3: seg = 7'b0110000;    // digit 3
            4: seg = 7'b0011001;    // digit 4
            5: seg = 7'b0010010;    // digit 5
            6: seg = 7'b0000010;    // digit 6
            7: seg = 7'b1111000;    // digit 7
            8: seg = 7'b0000000;    // digit 8
            9: seg = 7'b0010000;    // digit 9                
        endcase 
            
        
    4'b1101 :
        case(sten)
            0: seg = 7'b1000000;    // digit 0
            1: seg = 7'b1111001;    // digit 1
            2: seg = 7'b0100100;    // digit 2
            3: seg = 7'b0110000;    // digit 3
            4: seg = 7'b0011001;    // digit 4
            5: seg = 7'b0010010;    // digit 5
            
        endcase
    4'b1011 : 
        case(mone)
            0: seg = 7'b1000000;    // digit 0
            1: seg = 7'b1111001;    // digit 1
            2: seg = 7'b0100100;    // digit 2
            3: seg = 7'b0110000;    // digit 3
            4: seg = 7'b0011001;    // digit 4
            5: seg = 7'b0010010;    // digit 5
            6: seg = 7'b0000010;    // digit 6
            7: seg = 7'b1111000;    // digit 7
            8: seg = 7'b0000000;    // digit 8
            9: seg = 7'b0010000;    // digit 9
        endcase
    4'b0111 : 
        case(mten)
            0: seg = 7'b1000000;    // digit 0
            1: seg = 7'b1111001;    // digit 1
            2: seg = 7'b0100100;    // digit 2
            3: seg = 7'b0110000;    // digit 3
            4: seg = 7'b0011001;    // digit 4
            5: seg = 7'b0010010;    // digit 5
        endcase
endcase
end


//4'h0: seg[6:0] = 7'b1000000;    // digit 0
//            4'h1: seg[6:0] = 7'b1111001;    // digit 1
//            4'h2: seg[6:0] = 7'b0100100;    // digit 2
//            4'h3: seg[6:0] = 7'b0110000;    // digit 3
//            4'h4: seg[6:0] = 7'b0011001;    // digit 4
//            4'h5: seg[6:0] = 7'b0010010;    // digit 5
//            4'h6: seg[6:0] = 7'b0000010;    // digit 6
//            4'h7: seg[6:0] = 7'b1111000;    // digit 7
//            4'h8: seg[6:0] = 7'b0000000;    // digit 8
//            4'h9: seg[6:0] = 7'b0010000;    // digit 9
endmodule

module clk_div1(input clk,output reg w);

integer count=0;
initial
w=0;

always@(posedge clk)
begin
count = count+1;

if(count == 49999999)
begin
count=0;
w=~w;
end
end 

endmodule

module clk_div(input clk,output reg y);

integer count=0;
initial
y=0;

always@(posedge clk)
begin
count = count+1;

if(count == 80000)
begin
count=0;
y=~y;
end
end 

endmodule