`timescale 1ns / 1ps 

module tb_sr_ff( 
); 
reg S, R, CLK; 
wire Q, Qbar; 

sr_ff uut (S,R,CLK,Q,Qbar); 

initial begin 
CLK = 0; 
forever #5 CLK = ~CLK; 
end 

initial begin 
S = 0; R = 0;   
#12;            
S = 0; R = 1;   
#10; 
S = 0; R = 0;   
#10; 
S = 1; R = 0;   
#10; 
S = 0; R = 0;   
#10; 
S = 1; R = 1;   
#10; 
$finish; 
end 

endmodule