


`timescale 1ns / 1ps

//module dec3x8_sim();
//reg a,b,c,en;
//wire o7,o6,o5,o4,o3,o2,o1,o0;

//dec3x8 g(o7,o6,o5,o4,o3,o2,o1,o0,a,b,c,en);

//initial begin

//en=1;
//a=0;b=0;c=0; #5
//a=0;b=0;c=1; #5
//a=0;b=1;c=0; #5
//a=0;b=1;c=1; #5
//a=1;b=0;c=0; #5
//a=1;b=0;c=1; #5
//a=1;b=1;c=0; #5
//a=1;b=1;c=1; 
////inp2=0;inp1=0;inp0=0; #5;
////inp2=0;inp1=0;inp0=1; #5;
////inp2=0;inp1=1;inp0=0; #5;
////inp2=0;inp1=1;inp0=1; #5;
////inp2=1;inp1=0;inp0=0; #5;
////inp2=1;inp1=0;inp0=1; #5;
////inp2=1;inp1=1;inp0=0; #5;
////inp2=1;inp1=1;inp0=1; #5;
////for(i=0;i<16;i=i+1) begin
////{a,b,c,en}=i;
////#10;
////end
//end

//initial 
//#150 $finish;


//endmodule
module dec3x8_sim;
reg inp2,inp1,inp0,en;
wire out7,out6,out5,out4,out3,out2,out1,out0;

dec3x8 DUT(out7,out6,out5,out4,out3,out2,out1,out0,inp2,inp1,inp0,en);

initial begin
en=1;
inp2=0;inp1=0;inp0=0; #5
inp2=0;inp1=0;inp0=1; #5
inp2=0;inp1=1;inp0=0; #5
inp2=0;inp1=1;inp0=1; #5
inp2=1;inp1=0;inp0=0; #5
inp2=1;inp1=0;inp0=1; #5
inp2=1;inp1=1;inp0=0; #5
inp2=1;inp1=1;inp0=1; #5;

$finish;
end

initial begin
$monitor("Output is ",out7,out6,out5,out4,out3,out2,out1,out0," for the input ",inp2,inp1,inp0);
end
endmodule
