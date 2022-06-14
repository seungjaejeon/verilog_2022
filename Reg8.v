module Reg8(clk, reset_n, en, d, q);

input clk, reset_n, en;
input[7:0] d;
output[7:0] q;


D_FF D1(clk, reset_n,en,d[0],q[0]);//d[0]??
D_FF D2(clk, reset_n,en,d[1],q[1]);//d[1]??
D_FF D3(clk, reset_n,en,d[2],q[2]);//d[2]??
D_FF D4(clk, reset_n,en,d[3],q[3]);//d[3]??
D_FF D5(clk, reset_n,en,d[4],q[4]);//d[4]??
D_FF D6(clk, reset_n,en,d[5],q[5]);//d[5]??
D_FF D7(clk, reset_n,en,d[6],q[6]);//d[6]??
D_FF D8(clk, reset_n,en,d[7],q[7]);//d[7]??

endmodule
