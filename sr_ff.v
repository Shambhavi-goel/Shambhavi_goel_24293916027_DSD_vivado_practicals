`timescale 1ns / 1ps 

//Positive edge triggered SR Flip Flop

module sr_ff( 
input  S, R, CLK, 
output reg Q, 
output Qbar 
); 


assign Qbar = ~Q;

always @(posedge CLK) begin
     case ({S, R}) 
     2'b10: Q <= 1'b1;   // Set 
     2'b01: Q <= 1'b0;   // Reset 
     2'b00: Q <= Q;      // Hold (no change) 
     2'b11: Q <= 1'bx;   // Invalid condition 
endcase
end


endmodule