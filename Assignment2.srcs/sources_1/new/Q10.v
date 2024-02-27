`timescale 1ns / 1ps

module Q10(output reg [7:0]dataout,input clk,rst, [15:0]datain );

always@(posedge clk) begin
 
    if(rst)
        dataout = 0;
    
    else 
        begin
        dataout =  datain[15:8];
        dataout = @(posedge clk) datain[7:0];
        end
        
        
end

endmodule
