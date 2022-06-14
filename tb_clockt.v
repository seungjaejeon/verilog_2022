`timesclae 10ns/100ps
module tb_clockt();
reg t;
integer t;
clockt test(t);
initial
t=0;
always
#50 t=!t;

endmodule