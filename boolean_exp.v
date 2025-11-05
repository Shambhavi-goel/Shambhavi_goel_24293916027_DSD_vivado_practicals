`timescale 1ns / 1ps

module boolean_exp(
input  A, B, C, D,
output Y1, Y2, Y3, Y4, Y5
    );
    
  assign Y1 = (A ^ B) & (C | ~D);
  assign Y2 = ~((A & B) | (C & ~D));
  assign Y3 = (A & B) | (B & C) | (A & C);
  assign Y4 = (A & (~B | C)) ^ (D & (B | ~C));
  assign Y5 = ~((A | B) ^ (C & ~D));
  
endmodule
