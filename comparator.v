module comparator(a1,a2,b1,b2,y1,y2);
input[2:0] a1,a2,b1,b2;//3bit a1,a2,b1,b2 in
output y1,y2;//output 1 bit y1,y2
reg y1,y2;//y1,y2 register

always@(a1,a2,b1,b2)//when a1,a2,b1,b2 in
begin
if (a1[0]==a2[0])//a1? a2? 0?? ?? ??
	begin//eaqual
	if(a1[1]==a2[1])//a1? a2? 1?? ?? ??
		begin//eaqual
				if(a1[2]==a2[2]) y1=1;//a1? a2? 2?? ?? ??
				else y1=0;//???? y1=0
			end 
	else y1=0;//???? y1=0
	end
else y1=0;//???? y1=0

if (b1[2:0]==b2[2:0]) y2=1;//b1? b2? ???? ??
else y2=0;//???? y1=0
end
endmodule