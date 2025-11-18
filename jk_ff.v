`timescale 1ns / 1ps 

//Positive edge triggered JK Flip Flop

module jk_ff( 
input  J, K, CLK, 
output reg Q, 
output Qbar 
); 


assign Qbar = ~Q;

always @(posedge CLK) begin
     case ({J, K}) 
     2'b10: Q <= 1'b1;   // Set
     2'b01: Q <= 1'b0;   // Reset
     2'b00: Q <= Q;      // No change 
     2'b11: Q <= Qbar;   // Toggle 
endcase
end


endmodule