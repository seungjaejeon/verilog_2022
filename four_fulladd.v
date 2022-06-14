module four_fulladd(a,b,cin,cout,s0,s1,s2,s3);//four fulladd module
input[3:0] a,b;//4bit a,b in
input cin;//1bit cin in
output cout,s0,s1,s2,s3;//1bit cout, s0,s1,s2,s3
wire c1,c2,c3;//wire

fulladd u0(a[0],b[0],cin,s0,c1);//fulladd
fulladd u1(a[1],b[1],c1,s1,c2);//fulladd
fulladd u2(a[2],b[2],c2,s2,c3);//fulladd
fulladd u3(a[3],b[3],c3,s3,cout);//fulladd

endmodule