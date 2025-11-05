`timescale 1ns / 1ps

// Basic gates implementation:  AND, OR, NOT, NAND, NOR, XOR, XNOR

module logic_gates(
input a,b,
output y0,y1,y2,y3,y4,y5,y6,y7
    );
    
// outputs:
// y0: AND, y1: OR, y2: NOT of a, y3: NOT of b, y4: NAND, y5: NOR, y6: XOR, y7: XNOR

assign y0= a & b;
assign y1= a | b;
assign y2= ~a;
assign y3= ~b;
assign y4= ~(a & b);
assign y5= ~(a | b);
assign y6= a ^ b;
assign y7= ~(a ^ b);

endmodule