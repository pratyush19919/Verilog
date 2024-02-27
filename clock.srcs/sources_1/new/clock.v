`timescale 1ns / 1ps

module clock(input clk, rst, output sone,sten,mone,mten );

integer count;
//reg so,st,mo,mt;
reg [3:0] sone,sten,mone,mten;

always@(posedge clk or posedge rst)
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


end



endmodule



