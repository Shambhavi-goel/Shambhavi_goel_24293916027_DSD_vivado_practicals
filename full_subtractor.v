`timescale 1ns / 1ps



module full_subtractor(
input A,B,C,
output difference,borrow
    );
    

assign difference = A ^ B ^ C;
assign borrow = (~A & B) | ((~(A ^ B)) & C);


endmodule