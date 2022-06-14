module BCD_count(clk,reset_n,q);//BCD Counter
input clk,reset_n;//1 bit
output[3:0] q;//4 bit
reg[3:0] q;//4bit register
always@(reset_n)//reset
if (reset_n==0) q=0;//q=0
always@(posedge clk)//
if (reset_n==1)
begin
q=q+1;//count
if(q==10) q=0;//q=10->q=0
end
endmodule
