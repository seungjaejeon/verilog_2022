module fulladd(x,y,z,sum,cout);//fulladd module
input x,y,z;//1bit x,y,z in
output sum,cout;//1bit sum, cout out
wire sum,cout;//wire sum,cout
wire n1,n2,n3;//????

always@(x,y,z);//when x,y,z in
begin
halfadd1 u0(x,y,n2,n1);//halfadder x,y in n2,n1 out
halfadd1 u1(n2,z,sum,n3);//halfadder n2,z in sum,n3 out
or (cout,n1,n3);//cout<-n1 or n3
end
endmodule