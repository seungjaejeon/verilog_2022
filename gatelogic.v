module gatelogic(a,b,s,z);//gatelogic module
input a;//a in
input b;//b in
input s;//s in
output z;//z out
  
wire n1, n2, n3;//variable
not (n1, s);//not s-> n1
and (n2, a, s);//a and s -> n2
and (n3, n1, b);//b and n1-> n3
or (z, n2, n3);// n2 or n3-> z
  
endmodule
