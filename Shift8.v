module Shift8(clk,reset_n,en,dir,ld,sd,d,q);
input clk,reset_n,en,dir,ld,sd;
input [7:0] d;
output [7:0]q;
reg [7:0] q;
always@(posedge clk or negedge reset_n)//clk? ??? ?? reset_n? ???
begin
if(reset_n==0) q=0;//reset_n=0 ????
else if(ld==1) q=d;//reset_n=1,ld=1
else if(en==0) q=q;//reset_n=1,ld=0,en=0
else if(dir==1) begin q=q>>1; q[7]=sd; end//reset_n=1,en=1,ld=0,dir=1
else if(dir==0) begin q=q<<1; q[0]=sd; end//reset_n=1,en=1,ld=0,dir=0
end
endmodule
