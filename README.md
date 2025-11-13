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
<pre>   `timescale 1ns / 1ps
    module boolean_exp(
    input  A, B, C, D,
    output Y1, Y2, Y3, Y4, Y5
    );
  assign Y1 = (A ^ B) & (C | ~D);
  assign Y2 = ~((A & B) | (C & ~D));
  assign Y3 = (A & B) | (B & C) | (A & C);
  assign Y4 = (A & (~B | C)) ^ (D & (B | ~C));
  assign Y5 = ~((A | B) ^ (C & ~D));
endmodule</pre>


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

___________________________________________________________________________________________________________________________________________________

3. Mux 2x1:

   <h5>Code:</h5>
   Design source file code:
  
<pre>`timescale 1ns / 1ps
module mux_2x1_gates(
input I0,I1,S,
output Y
    );
assign Y= ((~S) & I0) | (S & I1);
endmodule</pre>

Test bench file code:
<pre>`timescale 1ns / 1ps
module tb_mux_2x1_gates(
    );
reg I0, I1, S;
wire Y;
mux_2x1 uut(I0, I1, S, Y);
initial begin
I0 = 0; I1 = 0; S = 0; #10;
    I0 = 0; I1 = 1; S = 0; #10;
    I0 = 1; I1 = 0; S = 0; #10;
    I0 = 1; I1 = 1; S = 0; #10;
    I0 = 0; I1 = 0; S = 1; #10;
    I0 = 0; I1 = 1; S = 1; #10;
    I0 = 1; I1 = 0; S = 1; #10;
    I0 = 1; I1 = 1; S = 1; #10;
    $finish;
    end
endmodule
</pre>

Schematic:
![WhatsApp Image 2025-11-06 at 10 01 23_c89adc79](https://github.com/user-attachments/assets/5f41f4fb-b5bb-4d5f-8dce-9bed78fa7ea2)

Simulation:
![WhatsApp Image 2025-11-06 at 10 03 30_af059585](https://github.com/user-attachments/assets/6c71bbe3-f640-4b2d-9b45-312eb1acedbf)

______________________________________________________________________________________________________________________________________________________

4. Mux 4x1:

   <h5>Code:</h5>
   Design source file code:

<pre>`timescale 1ns / 1ps
module mux_4x1_gates(
    input I0, I1, I2, I3,S0, S1,
    output Y
    );    
    assign Y = (~S1 & ~S0 & I0) | 
               (~S1 &  S0 & I1) | 
               ( S1 & ~S0 & I2) | 
               ( S1 &  S0 & I3);
endmodule
</pre>

   Test bench file code:

   <pre>`timescale 1ns / 1ps
module tb_mux_4x1_gates();
reg I0, I1, I2, I3, S0, S1;
wire Y;
mux_4x1_gates uut(I0, I1, I2, I3, S0, S1, Y);

initial begin
    // S1=0, S0=0
    S1=0; S0=0;
    I0=0; I1=0; I2=0; I3=0; #10;
    I0=0; I1=0; I2=0; I3=1; #10;
    I0=0; I1=0; I2=1; I3=0; #10;
    I0=0; I1=0; I2=1; I3=1; #10;
    I0=0; I1=1; I2=0; I3=0; #10;
    I0=0; I1=1; I2=0; I3=1; #10;
    I0=0; I1=1; I2=1; I3=0; #10;
    I0=0; I1=1; I2=1; I3=1; #10;
    I0=1; I1=0; I2=0; I3=0; #10;
    I0=1; I1=0; I2=0; I3=1; #10;
    I0=1; I1=0; I2=1; I3=0; #10;
    I0=1; I1=0; I2=1; I3=1; #10;
    I0=1; I1=1; I2=0; I3=0; #10;
    I0=1; I1=1; I2=0; I3=1; #10;
    I0=1; I1=1; I2=1; I3=0; #10;
    I0=1; I1=1; I2=1; I3=1; #10;

    // S1=0, S0=1
    S1=0; S0=1;
    I0=0; I1=0; I2=0; I3=0; #10;
    I0=0; I1=0; I2=0; I3=1; #10;
    I0=0; I1=0; I2=1; I3=0; #10;
    I0=0; I1=0; I2=1; I3=1; #10;
    I0=0; I1=1; I2=0; I3=0; #10;
    I0=0; I1=1; I2=0; I3=1; #10;
    I0=0; I1=1; I2=1; I3=0; #10;
    I0=0; I1=1; I2=1; I3=1; #10;
    I0=1; I1=0; I2=0; I3=0; #10;
    I0=1; I1=0; I2=0; I3=1; #10;
    I0=1; I1=0; I2=1; I3=0; #10;
    I0=1; I1=0; I2=1; I3=1; #10;
    I0=1; I1=1; I2=0; I3=0; #10;
    I0=1; I1=1; I2=0; I3=1; #10;
    I0=1; I1=1; I2=1; I3=0; #10;
    I0=1; I1=1; I2=1; I3=1; #10;

    // S1=1, S0=0
    S1=1; S0=0;
    I0=0; I1=0; I2=0; I3=0; #10;
    I0=0; I1=0; I2=0; I3=1; #10;
    I0=0; I1=0; I2=1; I3=0; #10;
    I0=0; I1=0; I2=1; I3=1; #10;
    I0=0; I1=1; I2=0; I3=0; #10;
    I0=0; I1=1; I2=0; I3=1; #10;
    I0=0; I1=1; I2=1; I3=0; #10;
    I0=0; I1=1; I2=1; I3=1; #10;
    I0=1; I1=0; I2=0; I3=0; #10;
    I0=1; I1=0; I2=0; I3=1; #10;
    I0=1; I1=0; I2=1; I3=0; #10;
    I0=1; I1=0; I2=1; I3=1; #10;
    I0=1; I1=1; I2=0; I3=0; #10;
    I0=1; I1=1; I2=0; I3=1; #10;
    I0=1; I1=1; I2=1; I3=0; #10;
    I0=1; I1=1; I2=1; I3=1; #10;

    // S1=1, S0=1
    S1=1; S0=1;
    I0=0; I1=0; I2=0; I3=0; #10;
    I0=0; I1=0; I2=0; I3=1; #10;
    I0=0; I1=0; I2=1; I3=0; #10;
    I0=0; I1=0; I2=1; I3=1; #10;
    I0=0; I1=1; I2=0; I3=0; #10;
    I0=0; I1=1; I2=0; I3=1; #10;
    I0=0; I1=1; I2=1; I3=0; #10;
    I0=0; I1=1; I2=1; I3=1; #10;
    I0=1; I1=0; I2=0; I3=0; #10;
    I0=1; I1=0; I2=0; I3=1; #10;
    I0=1; I1=0; I2=1; I3=0; #10;
    I0=1; I1=0; I2=1; I3=1; #10;
    I0=1; I1=1; I2=0; I3=0; #10;
    I0=1; I1=1; I2=0; I3=1; #10;
    I0=1; I1=1; I2=1; I3=0; #10;
    I0=1; I1=1; I2=1; I3=1; #10;

    $finish;
end
endmodule
</pre>

   Schematic:
   <img width="894" height="482" alt="image" src="https://github.com/user-attachments/assets/b675e6eb-4cec-4e30-a3b4-bd3f9901d764" />

   Simulation:
   <img width="911" height="503" alt="image" src="https://github.com/user-attachments/assets/807eb2dd-c018-4635-a9d2-8fd767f197ad" />
___________________________________________________________________________________________________________________________________________________________

5. 4 to 2 Priority Encoder:

    <h5>Code:</h5>
   Design source file code:

<pre>`timescale 1ns / 1ps
module priority_encoder_4to2_using_gates(
input D0,D1,D2,D3,
output A,B,V
    );
assign A= D2 | D3;
assign B= (D1 & (~D2)) | D3;
assign V= D0 | D1 | D2 | D3; 
endmodule</pre>

   Test bench file code:
<pre>`timescale 1ns / 1ps
module tb_priority_encoder_4to2_using_gates(
    );
reg D0,D1,D2,D3;
wire A,B,V;
priority_encoder_4to2_using_gates uut(D0,D1,D2,D3,A,B,V);
initial 
    begin
    D0=0; D1=0;D2=0;D3=0;
    #10
    D0=1; D1=0;D2=0;D3=0;
    #10
    D0=0; D1=1;D2=0;D3=0;
    #10
    D0=0; D1=0;D2=1;D3=0;
    #10
    D0=0; D1=0;D2=0;D3=1;
    #10
    D0=1; D1=1;D2=0;D3=0;
    #10
    D0=1; D1=1;D2=1;D3=0;
    #10
    D0=1; D1=1;D2=1;D3=1;
    #10
    D0=1; D1=0;D2=1;D3=0;
    #10    
    D0=1; D1=0;D2=0;D3=1;
    #10
    D0=1; D1=0;D2=1;D3=1;
    #10
    D0=0; D1=0;D2=1;D3=1;
    #10
    D0=0; D1=1;D2=1;D3=1;
    #10
    D0=1; D1=1;D2=0;D3=1;
    #10
    D0=0; D1=1;D2=1;D3=0;
    #10
    D0=0; D1=1;D2=0;D3=1;
    #10
  $finish;
  end
endmodule</pre>

Schematic:
![WhatsApp Image 2025-11-06 at 10 32 04_3bea99d6](https://github.com/user-attachments/assets/bfe12bcc-336a-4cae-95c2-e5d957ed1423)

Simulation:
![WhatsApp Image 2025-11-06 at 10 33 02_c3ea71df](https://github.com/user-attachments/assets/d367824f-31d4-4844-baf6-7a3857b799db)



    

