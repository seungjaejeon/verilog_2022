module priority_Encoder(a,b,c,z); //priority encoder  


input a,b,c; //a,b,c in
output [1:0] z; //z: 2bit out
reg [1:0] z; //register z

always@(a,b,c) //until a,b,c in, alway
begin //start

if (c==0) z=2'b11;//c=0 z->11
else if(b==0) z=2'b10;//c=1,b=0 z->10
else if(a==0) z=2'b01; //c=1,b=1,a=0 z->01
else z=2'b00;//c=0,b=0,a=0 z->00

end

endmodule
