module clock_gen(clock_in,clk1,clk2);
  input clock_in;
  output reg clk2;
  output reg clk1;
  
 initial begin
 clk1<=0;
 clk2<=0;
  end
  assign clk1=clock_in;
  always @(clock_in)begin
  clk2=#2.5 clock_in;
  end
  endmodule
