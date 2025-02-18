// Testing of multiplier code

module tb();
   reg  signed [15:0]a,b,c,d;
   reg clk;
  wire  signed [31:0]re,im;   //output will be of 32 bits
    
   multi uut(a,b,c,d,clk,re,im);
    
   initial begin
   clk=0;
   forever #50 clk=!clk;
   end                          // clock signal
    
    
   initial begin
   a=16'b0100001000000000;
   b=~(16'b0000001100000000)+1;
   c=16'b0000010000000000;
   d=~(16'b0000010000000000)+1;
   #200;
   a=16'b0100101000000000;
   b=~(16'b0010001100000000)+1;
   c=16'b0000010000000000;
   d=~(16'b0010010000000000)+1;
   #200;
   a=16'b0100101000010000;
   b=~(16'b0010001100000000)+1;
   c=16'b0000010000000000;
   d=~(16'b0010010000000000)+1;
   #150;
   $finish;

   
   end
