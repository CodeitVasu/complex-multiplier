// Sequential pipelined design with 2 stages

module multi(
input  signed [15:0]a,b,c,d,
input clk,
output reg  signed [31:0]re,im
    );
    

reg  signed [31:0]temp[3:0];
reg  signed [15:0]input_reg[3:0];

always @ (posedge clk) begin

//stage 1
 
input_reg[0]<=a;
input_reg[1]<=b;
input_reg[2]<=c;
input_reg[3]<=d;
 
//stage 2
  
temp[0] <= input_reg[0]*input_reg[2];
temp[1] <= input_reg[1]*input_reg[3];
temp[2] <= input_reg[1]*input_reg[2];
temp[3] <= input_reg[0]*input_reg[3];

  re <= temp[0] + (~temp[1] + 1);   // real part
  im <= temp[2] + temp[3];          // imaginary part 

end
    
endmodule
