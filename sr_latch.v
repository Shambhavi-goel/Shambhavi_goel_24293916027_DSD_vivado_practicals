`timescale 1ns / 1ps



module sr_latch(
input S,R,
output reg Q,Qbar
    );
    

always @(*) begin 
if (S == 0 && R == 0) begin 
$display("Invalid SR Inputs at Time %0t", $time); 
Q = 1'bx; 
Qbar = 1'bx; 
end 
else begin 
Q <= ~(S & Qbar); 
Qbar <= ~(R & Q); 
end 
end


endmodule