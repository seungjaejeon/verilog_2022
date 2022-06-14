module Johnson_count(clk,reset_n,q);//counter
input clk,reset_n;//1 bit
output [4:0] q;//5 bit
integer temp;//1 bit temp
reg[4:0] q;//5bit register
always@(reset_n)//reset_n==0->q=0
if (reset_n==0) q=0;
always@(posedge clk)//positive edge
if (reset_n==1)//reset=1
begin
temp=q[4];//temp? MSB??
q=q<<1;//shift
q[0]=!temp;//q[0]? temp?? ??
end
endmodule
