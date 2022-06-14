module stop(Clock_1MSec, Reset, Start_S, Stop_S,
Reset_S,
Hours_S, Mins_S, Secs_S, MSecs_S, Control);
input Clock_1MSec, Reset, Start_S, Stop_S, Reset_S,
Control;
output[3:0] Hours_S;
output[5:0] Mins_S, Secs_S;
output[9:0] MSecs_S;
reg[3:0] Hours_S;
reg[5:0] Mins_S, Secs_S;
reg[9:0] MSecs_S;
reg temp_stop;

always@(negedge Reset)
begin
if(!Reset) // Reset=0??
begin Hours_S <= 0; Mins_S <= 0; Secs_S <=0; MSecs_S <= 0; temp_stop <= 1; //???
end
end
always@(posedge Clock_1MSec) 
begin
      if(Reset) // Reset=1??
      begin
        if(!Control) // Control=0?? ??
          begin
            if(Stop_S) // Stop_S=1?? ??            
              temp_stop <= 0;//?????? ???? ?? 
            else // Stop_S=0
             begin
              if(temp_stop) // temp_stop=1?? ??????? ??
               begin
               if(Start_S) // Start_S=1,temp_stop=1
               begin
                  MSecs_S <= MSecs_S+1; //Msecs_S 1??
                    
                      if(MSecs_S == 999) // Msecs_S=999??
                      begin
                        MSecs_S <=0;
                        Secs_S <= Secs_S+1;  // Msecs_S=0, Secs_S 1??
                          if(Secs_S == 59) // Secs_S=59, Msecs_S=999
                          begin
                            Secs_S <= 0;
                            Mins_S <= Mins_S+1; // Sec_S=0, Min_S 1??                    
                              if(Mins_S == 59) // Mins_S=59, Secs_S=59, Msecs_S=999 
                              begin
                                Mins_S <= 0;
                                Hours_S <= Hours_S+1;  // Mins_S=0, Hours_S? 1 ??                         
                                  if(Hours_S == 11) 
                                  //Hours_S=11, Mins_S=59, Secs_S=59, Msecs_S=999
                                    Hours_S <= 0;     // Hours_S=0
                           	end
			   end
			end
		end                                                                       
                end
               end
             end
if(Reset_S && temp_stop==0) // Reset_S=1 and temp_stop=0 (stop??? ?? Reset_S? 1??) 
begin//reset??. 
Hours_S <= 0;
Mins_S <= 0;
Secs_S <= 0;
MSecs_S <= 0;
temp_stop <= 1;
end
      end
end
endmodule
