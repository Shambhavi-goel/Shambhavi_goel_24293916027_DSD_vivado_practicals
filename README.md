SHAMBHAVI GOEL 
24293916027
2nd year, sem-3, CSE-A

The following are the practicals to be performed in Verilog:
_____________________________________________________________________________________________________________________________________________

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
------------------------------------------------------------------------------------------------------------------------------------------------------

   <h5>Schematic:</h5>
   ![WhatsApp Image 2025-11-05 at 22 16 40_15c374ae](https://github.com/user-attachments/assets/aba98752-ebae-4638-b0bb-13a74cea4ea8)
   
   <h5>Simulation:</h5>
   ![WhatsApp Image 2025-11-05 at 22 18 11_5cee90ea](https://github.com/user-attachments/assets/ca707868-399f-4338-87ce-36d6706c9b64)

3. Boolean Expression:
   Schematic:
   

