module mux(a,b,c,d,en,sel,z);//module mux.
input[3:0]a,b,c,d;//4bit a,b,c,d in
input en;//1bit en
input[1:0] sel;//2bit sel in
output[3:0] z;//4bit z out
reg [3:0] z;//4bit-register z


always@ (a,b,c,d,en,sel)//a,b,c,d,en,sel? ??? ?? ?? ??
begin

if(en==1) z=4'b0000;//en=1->z=>0000
else
	if(sel==2'b00) z=a;//sel=00->z=>a
	else if(sel==2'b01) z=b;//sel=01->z=>b
	else if(sel==2'b10) z=c;//sel=10->z=>c
	else if(sel==2'b11) z=d;//sel=11->z=>d



end
endmodule
