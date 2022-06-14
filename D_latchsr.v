module D_latchsr(set_n,reset_n,d,g,q,q_n);//D ??
input set_n,reset_n,d,g;//input
output q, q_n;//output
reg q,q_n;//register
always@(set_n,reset_n,d,g,q,q_n)//when () change
begin
if(set_n==0) begin q=1; q_n=0; end//1??
else if(reset_n==0) begin q=0; q_n=1; end//2??
else if(g==0) begin q=q; q_n=q_n; end//3??
else begin q=d; q_n=!d; end//4??
end
endmodule
