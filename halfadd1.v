module halfadd1(a,b,sum,cout);//????
input a,b;//1bit a,b in
output sum,cout;//1bit sum,cout out 
wire sum,cout;

xor(sum,a,b);//xor
and(cout,a,b);//and
endmodule