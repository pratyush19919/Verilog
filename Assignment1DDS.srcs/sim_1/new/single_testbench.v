module single_testbench();


reg x,y,z,en;
wire [7:0]c,d;
reg [7:0]ref;
integer i;

reg [7:0]check=0;


decoder_3to8 dut0(d[7],d[6],d[5],d[4],d[3],d[2],d[1],d[0],x,y,z,en);
decoder_3x8_cond dut1(c[0],c[1],c[2],c[3],c[4],c[5],c[6],c[7],x,y,z,en);

initial begin
en=1;check=0;
for(i=0;i<8;i=i+1)
begin

{x,y,z}=i;
ref=2**i;
#10;

if((c==ref)&&(d==ref))
check[i] = 1;
else
check[i]=0;

end

if(check==255)
$display("PASS");
else
$display("FAIL");

end

initial #90 $finish;

endmodule

//`timescale 1ns / 1ps

//module single_testbench();

//reg x,y,z,en;
//wire [7:0]c,d;
//reg [7:0]check,ref=0;


//decoder_3to8 dut0(d[7],d[6],d[5],d[4],d[3],d[2],d[1],d[0],x,y,z,en);
//decoder_3x8_cond dut1(c[0],c[1],c[2],c[3],c[4],c[5],c[6],c[7],x,y,z,en);

//initial
//begin
//en=1;
//for(integer i=0;i<8;i=i+1)
//begin

//{x,y,z}=i;
//ref = 2**i;

//for(integer j=0;j<8;j=j+1)
////begin
//if((c==d)&&(d==2**i))
//check[i] =1;
//else
//check[i]=0;

//end



//#10;

//end

//if(check==8'd255)
//$display("PASS");
//else
//$display("FAIL");

//end

//initial
//#300 $finish;

//endmodule

//`timescale 1ns / 1ps

//module single_testbench();

//reg x,y,z,en;
//wire d7,d6,d5,d4,d3,d2,d1,d0;
//wire i7,i6,i5,i4,i3,i2,i1,i0;
//reg count = 5'd0;


//decoder_3to8 dut0(d7,d6,d5,d4,d3,d2,d1,d0,x,y,z,en);
//decoder_3x8_cond dut1(i0,i1,i2,i3,i4,i5,i6,i7,x,y,z,en);



//initial
//begin
    
//for(integer i=0;i<16;i=i+1)
//begin
//{x,y,z,en}=i;
//#10;
    
//if((d7==i7)&&(d6==i6)&&(d5==i5)&&(d4==i4)&&(d3==i3)&&(d2==i2)&&(d1==i1)&&(d0==i0))
//count = count + 1;
    
//end


//if(count == 16)
//$display("PASS");
//else
//$display(count);
    
//end

//initial
//#200 $finish;

//endmodule


