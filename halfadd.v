module halfadd(a,b,sum,cout);//halfadd module
input a,b;// 1 bit a,b in
output sum,cout;//1 bit sum, cout out
wire sum,cout;// out 

xor(sum,a,b);//sum<- a xor b
and(cout,a,b);//cout <-a and b
endmodule