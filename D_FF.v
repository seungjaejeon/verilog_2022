module D_FF(clk,reset_n,en,d,q);//???? ??
input clk,reset_n,en,d;//?? clk,reset_n,d
output q; //?? q
reg q;//???? q
always@(reset_n)//reset_n? ???
begin
if(!reset_n) q=0;//reset_n=0->q=0
end
always@(posedge clk)//?? ????
begin
if(!reset_n) q=0;//reset_n=0->q=0
else if(en==0) q=q;
else q=d;//q=d
end
endmodule
