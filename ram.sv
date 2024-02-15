module mem(data_in,data_out,clk1,clk2,wr_rd,add);
input data_in,clk1,clk2,wr_rd;
output reg data_out;

reg memory[7:0];
output reg [2:0]add;
initial begin
memory[0]<=0;
memory[1]<=0;
memory[2]<=0;
memory[3]<=0;
memory[4]<=0;
memory[5]<=0;
memory[6]<=0;
memory[7]<=0;
add<=3'b111;
end
always@(clk1 or clk2)begin
if(wr_rd)begin
memory[add]=data_in;
add=add+1;
end
else begin
data_out=memory[add];
add=add+1;
end
end
endmodule
