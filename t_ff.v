`timescale 1ns / 1ps 
 
//Positive edge triggered T Flip Flop

module t_ff( 
input  T, CLK, 
output reg Q, 
output Qbar 
); 


assign Qbar = ~Q;
initial Q=0;

always @(posedge CLK) begin
   case ({T}) 
     1'b1: Q <= Qbar;   // Toggle
     1'b0: Q <= Q;   // Hold
endcase
end


endmodule