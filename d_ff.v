`timescale 1ns / 1ps 

//Positive edge triggered D Flip Flop

module d_ff( 
input  D, CLK, 
output reg Q, 
output Qbar 
); 


assign Qbar = ~Q;

always @(posedge CLK) begin
     Q <= D;
end


endmodule