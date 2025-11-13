SHAMBHAVI GOEL 
24293916027
2nd year, sem-3, CSE-A

The following are the practicals to be performed in Verilog:
____________________________________________________________________________________________________________________________________________________________

1. Logic Gates:
  
   <h5>Code:</h5>
   Design source file code:

<pre> `timescale 1ns / 1ps
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
</pre>

   Test bench file code:

   
<pre>`timescale 1ns / 1ps
module tb_logic_gates(
    );
reg a,b;
wire y0,y1,y2,y3,y4,y5,y6,y7;
logic_gates uut(a,b,y0,y1,y2,y3,y4,y5,y6,y7);
initial begin
a=0; 
b=0;
#10  //these values of a and b should run for 10ns
a=0; 
b=1;
#10
a=1; 
b=0;
#10
a=1; 
b=1;
#10
$finish;
end
endmodule
</pre>

   Schematic:
   ![WhatsApp Image 2025-11-05 at 22 16 40_15c374ae](https://github.com/user-attachments/assets/aba98752-ebae-4638-b0bb-13a74cea4ea8)
   
   Simulation:
   ![WhatsApp Image 2025-11-05 at 22 18 11_5cee90ea](https://github.com/user-attachments/assets/ca707868-399f-4338-87ce-36d6706c9b64)

____________________________________________________________________________________________________________________________________________________________

2. Boolean Expression:

   <h5>Code:</h5>
   Design source file code:

   <pre>`timescale 1ns / 1ps
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
</pre>

   Test bench file code:
   <pre> `timescale 1ns / 1ps
module tb_boolean_exp(
    );
reg A,B,C,D;
wire Y1, Y2, Y3, Y4, Y5;
boolean_exp uut(A,B,C,D,Y1, Y2, Y3, Y4, Y5);
initial begin
    A=0; B=0; C=0; D=0; #10;
    A=0; B=0; C=0; D=1; #10;
    A=0; B=0; C=1; D=0; #10;
    A=0; B=0; C=1; D=1; #10;
    A=0; B=1; C=0; D=0; #10;
    A=0; B=1; C=0; D=1; #10;
    A=0; B=1; C=1; D=0; #10;
    A=0; B=1; C=1; D=1; #10;
    A=1; B=0; C=0; D=0; #10;
    A=1; B=0; C=0; D=1; #10;
    A=1; B=0; C=1; D=0; #10;
    A=1; B=0; C=1; D=1; #10;
    A=1; B=1; C=0; D=0; #10;
    A=1; B=1; C=0; D=1; #10;
    A=1; B=1; C=1; D=0; #10;
    A=1; B=1; C=1; D=1; #10;
$finish;
end
endmodule
</pre>

  Schematic:
  ![WhatsApp Image 2025-11-05 at 22 33 31_a9eef5c1](https://github.com/user-attachments/assets/3cf1bb2c-076f-439b-8af7-2e4ff7ecbb57)
  
  Simulation:
  ![WhatsApp Image 2025-11-05 at 22 43 56_0d49f174](https://github.com/user-attachments/assets/3c0a1aba-53a2-4c84-ae47-1957a252c890)




    

