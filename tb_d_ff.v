`timescale 1ns / 1ps 

module tb_d_ff( 
); 
reg  D, CLK;  
wire Q, Qbar; 

d_ff uut (D,CLK,Q,Qbar); 

initial begin 
CLK = 0; 
forever #5 CLK = ~CLK; 
end 

initial begin 
D = 0;  #10;            
D = 1;  #10; 
$finish; 
end 

endmodule