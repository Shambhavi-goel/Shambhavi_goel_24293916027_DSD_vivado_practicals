`timescale 1ns / 1ps



module half_subtractor(
input A,B,
output difference,borrow
    );
    

assign difference= A^B;
assign borrow= ((~A)&B);


endmodule