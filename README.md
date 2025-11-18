SHAMBHAVI GOEL, 
24293916027,
2nd year, sem-3, CSE-A

The following are the practicals performed in Verilog:
________________________________________________________________________________________________________________________________________

</h4>1. Logic Gates:</h4>
  
<h5>Code:</h5>
<h5>Design source file code:</h5>

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

<h5>Test bench file code:</h5>

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
________________________________________________________________________________________________________________________________________

<h4>2. Boolean Expression:</h4>

<h5>Code:</h5>
<h5>Design source file code:</h5>

<pre>`timescale 1ns / 1ps
    module boolean_exp(
    input  A, B, C, D,
    output Y1, Y2, Y3, Y4, Y5
    );
  assign Y1 = (A ^ B) & (C | ~D);        // Y1= (A⊕B)⋅(C+D)
  assign Y2 = ~((A & B) | (C & ~D));       // Y2= ((A⋅B)+(C⋅D'))'
  assign Y3 = (A & B) | (B & C) | (A & C);        // Y3= (A⋅B)+(B⋅C)+(A⋅C)
  assign Y4 = (A & (~B | C)) ^ (D & (B | ~C));      // Y4= [A⋅(B'+C)]⊕[D⋅(B+C')]
  assign Y5 = ~((A | B) ^ (C & ~D));                // Y5= ((A+B)⊕(C⋅D'))'​  
endmodule</pre>

<h5>Test bench file code:</h5>

<pre>`timescale 1ns / 1ps
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
________________________________________________________________________________________________________________________________________

<h4>3. Mux 2x1:</h4>

<h5>Code:</h5>
<h5>Design source file code:</h5>
  
<pre>`timescale 1ns / 1ps
module mux_2x1_gates(
input I0,I1,S,
output Y
    );
assign Y= ((~S) & I0) | (S & I1);
endmodule</pre>

<h5>Test bench file code:</h5>

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
________________________________________________________________________________________________________________________________________

<h4>4. Mux 4x1:</h4>

<h5>Code:</h5>
<h5>Design source file code:</h5>

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

<h5>Test bench file code:</h5>

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
________________________________________________________________________________________________________________________________________

<h4>5. Mux 8x1:</h4>

<h5>Code:</h5>
<h5>Design source file code:</h5>

<pre>`timescale 1ns / 1ps
module mux_8x1_gates(
    input I0, I1, I2, I3, I4, I5, I6, I7, S0, S1, S2,
    output Y
    );
  assign Y = (~S2 & ~S1 & ~S0 & I0) |
           (~S2 & ~S1 &  S0 & I1) |
           (~S2 &  S1 & ~S0 & I2) |
           (~S2 &  S1 &  S0 & I3) |
           ( S2 & ~S1 & ~S0 & I4) |
           ( S2 & ~S1 &  S0 & I5) |
           ( S2 &  S1 & ~S0 & I6) |
           ( S2 &  S1 &  S0 & I7);
endmodule
</pre>

<h5>Test bench file code:</h5>

<pre>`timescale 1ns / 1ps
module tb_mux_8x1_gates();
reg I0, I1, I2, I3, I4, I5, I6, I7, S0, S1, S2;
wire Y;
mux_8x1_gates uut(I0, I1, I2, I3, I4, I5, I6, I7, S0, S1, S2, Y);
initial begin

// Test case 1: Select I0
S2=0; S1=0; S0=0;
I0=1; I1=0; I2=0; I3=0; I4=0; I5=0; I6=0; I7=0; #10;

// Test case 2: Select I1
S2=0; S1=0; S0=1;
I0=0; I1=1; I2=0; I3=0; I4=0; I5=0; I6=0; I7=0; #10;

// Test case 3: Select I2
S2=0; S1=1; S0=0;
I0=0; I1=0; I2=1; I3=0; I4=0; I5=0; I6=0; I7=0; #10;

// Test case 4: Select I3
S2=0; S1=1; S0=1;
I0=0; I1=0; I2=0; I3=1; I4=0; I5=0; I6=0; I7=0; #10;

// Test case 5: Select I4
S2=1; S1=0; S0=0;
I0=0; I1=0; I2=0; I3=0; I4=1; I5=0; I6=0; I7=0; #10;

// Test case 6: Select I5
S2=1; S1=0; S0=1;
I0=0; I1=0; I2=0; I3=0; I4=0; I5=1; I6=0; I7=0; #10;

// Test case 7: Select I6
S2=1; S1=1; S0=0;
I0=0; I1=0; I2=0; I3=0; I4=0; I5=0; I6=1; I7=0; #10;

// Test case 8: Select I7
S2=1; S1=1; S0=1;
I0=0; I1=0; I2=0; I3=0; I4=0; I5=0; I6=0; I7=1; #10;

    $finish;
end
endmodule
</pre>

Schematic:
![WhatsApp Image 2025-11-17 at 13 37 41_03d2c530](https://github.com/user-attachments/assets/24994a77-3c55-48db-92bf-b0f5633efc9c)

Simulation:
![WhatsApp Image 2025-11-17 at 13 36 02_135c6ba0](https://github.com/user-attachments/assets/f2f6f236-5114-4dab-a095-0a3a22003703)
________________________________________________________________________________________________________________________________________

<h4>6. 4 to 2 Priority Encoder:</h4>

<h5>Code:</h5>
<h5>Design source file code:</h5>

<pre>`timescale 1ns / 1ps
module priority_encoder_4to2_using_gates(
input D0,D1,D2,D3,
output A,B,V
    );
assign A= D2 | D3;
assign B= (D1 & (~D2)) | D3;
assign V= D0 | D1 | D2 | D3; 
endmodule</pre>

<h5>Test bench file code:</h5>

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
________________________________________________________________________________________________________________________________________

<h4>7. 2 to 4 Decoder:</h4>

<h5>Code:</h5>
<h5>Design source file code:</h5>

<pre>`timescale 1ns / 1ps
module decoder_2to4_using_gates(
input A,B,
output D0,D1,D2,D3
    );
assign D0= (~A) & (~B);
assign D1= (~A) & (B);
assign D2= (A) & (~B); 
assign D3= A & B;
endmodule</pre>

<h5>Test bench file code:</h5>

<pre>`timescale 1ns / 1ps
module tb_decoder_2to4_using_gates(
    );
reg A,B;
wire D0,D1,D2,D3;
decoder_2to4_using_gates uut(A,B,D0,D1,D2,D3);
initial 
    begin
    A=0;  
    B=0;
    #10
    A=0;  
    B=1;
    #10
    A=1;  
    B=0;
    #10
    A=1;  
    B=1;
    #10
  $finish;
  end
endmodule</pre>

Schematic:
![WhatsApp Image 2025-11-06 at 13 14 40_7676f9f0](https://github.com/user-attachments/assets/a4e7d1cb-b855-48d9-a5f8-cfb1397ca741)

Simulation:
![WhatsApp Image 2025-11-06 at 13 16 04_632e6189](https://github.com/user-attachments/assets/a8c3744c-1a92-49db-935d-36212981c79c)
________________________________________________________________________________________________________________________________________

<h4>8. Half Adder:</h4>
     
<h5>Code:</h5>
<h5>Design source file code:</h5>

<pre>`timescale 1ns / 1ps
module half_adder(
input A,B,
output sum,carry
    );
assign sum= A^B;
assign carry= A&B;
endmodule</pre>

<h5>Test bench file code:</h5>

<pre>`timescale 1ns / 1ps
module tb_half_adder(
    );
reg A,B;
wire sum,carry;
half_adder uut(A,B,sum,carry);
initial 
    begin
    A=0;  
    B=0;
    #10
    A=0;  
    B=1;
    #10
    A=1;  
    B=0;
    #10
    A=1;  
    B=1;
    #10
  $finish;
  end
endmodule</pre>

Schematic:
![WhatsApp Image 2025-11-10 at 14 32 22_6b32000f](https://github.com/user-attachments/assets/e9ce97f3-6470-460b-9d4e-f38caee94a0b)

Simulation:
![WhatsApp Image 2025-11-10 at 14 30 24_439d5fa5](https://github.com/user-attachments/assets/88b346d5-4860-4ae3-8b92-cd08adeb90ea)
________________________________________________________________________________________________________________________________________

<h4>9. Half Subtractor:</h4>

<h5>Code:</h5>
<h5>Design source file code:</h5>

<pre>`timescale 1ns / 1ps
module half_subtractor(
input A,B,
output difference,borrow
    );
assign difference= A^B;
assign borrow= ((~A)&B);
endmodule</pre>

<h5>Test bench file code:</h5>

<pre>`timescale 1ns / 1ps
module tb_half_subtractor(
    );
reg A,B;
wire difference, borrow;
half_subtractor uut(A,B,difference, borrow);
initial 
    begin
    A=0;  
    B=0;
    #10
    A=0;  
    B=1;
    #10
    A=1;  
    B=0;
    #10
    A=1;  
    B=1;
    #10
  $finish;
  end
endmodule</pre>

Schematic:
![WhatsApp Image 2025-11-10 at 14 38 46_6bb5e5a9](https://github.com/user-attachments/assets/e4705026-119a-4901-a266-b120ba020071)

Simulation:
![WhatsApp Image 2025-11-10 at 14 37 44_5ee9b7bd](https://github.com/user-attachments/assets/fd4d346f-8700-48af-80f0-54e6d4169260)
________________________________________________________________________________________________________________________________________
   
<h4>10. Full Adder:</h4>

<h5>Code:</h5>
<h5>Design source file code:</h5>

<pre>`timescale 1ns / 1ps
module full_adder(
input A,B,C,
output sum,carry
    );
assign sum= ((A^B)^C);
assign carry= (A&B) | ((A^B)&C);
endmodule</pre>

<h5>Test bench file code:</h5>

<pre>`timescale 1ns / 1ps
module tb_full_adder(
    );
reg A,B,C;
wire sum,carry;
full_adder uut(A,B,C,sum,carry);
initial 
    begin
    A=0;B=0;C=0;
    #10
    A=0;B=0;C=1;
    #10
    A=0;B=1;C=0;
    #10
    A=0;B=1;C=1;
    #10
    A=1;B=0;C=0;
    #10
    A=1;B=0;C=1;
    #10
    A=1;B=1;C=0;
    #10
    A=1;B=1;C=1;
    #10
  $finish;
  end
endmodule</pre>

Schematic:
![WhatsApp Image 2025-11-10 at 14 49 01_a97ac7f9](https://github.com/user-attachments/assets/4e8241a1-a640-47d9-bc4e-fd4d56e3ce1a)

Simulation:
![WhatsApp Image 2025-11-10 at 14 48 04_845cb2b1](https://github.com/user-attachments/assets/0c4ab133-1653-4379-a29f-508e01313c53)
_______________________________________________________________________________________________________________________________________
   
<h4>11. Full Subtractor:</h4>

<h5>Code:</h5>
<h5>Design source file code:</h5>

<pre>`timescale 1ns / 1ps
module full_subtractor(
input A,B,C,
output difference,borrow
    );
assign difference = A ^ B ^ C;
assign borrow = (~A & B) | ((~(A ^ B)) & C);
endmodule</pre>

<h5>Test bench file code:</h5>

<pre>`timescale 1ns / 1ps
module tb_full_subtractor(
    );
reg A,B,C;
wire difference,borrow;
full_subtractor uut(A,B,C,difference,borrow);
initial 
    begin
    A=0;B=0;C=0;
    #10
    A=0;B=0;C=1;
    #10
    A=0;B=1;C=0;
    #10
    A=0;B=1;C=1;
    #10
    A=1;B=0;C=0;
    #10
    A=1;B=0;C=1;
    #10
    A=1;B=1;C=0;
    #10
    A=1;B=1;C=1;
    #10
  $finish;
  end
endmodule</pre>

Schematic:
![WhatsApp Image 2025-11-13 at 23 12 27_7036be44](https://github.com/user-attachments/assets/5de0ae88-c19d-4417-b748-aa83bb97c204)

Simulation:
![WhatsApp Image 2025-11-13 at 23 13 47_90bdeb01](https://github.com/user-attachments/assets/bcbb20b5-049a-4201-97e4-c6361ad7e9fd)
________________________________________________________________________________________________________________________________________

<h4>12. Universal Adder / Subtractor with Overflow Check:</h4>

<h5>Code:</h5>
<h5>Design source file code:</h5>

<pre>`timescale 1ns / 1ps


module universal_adder_subtractor(
input A0, A1, A2, A3, B0, B1, B2, B3, M,
output C4, S0, S1, S2, S3,V
    );
    assign C0= M;
    assign S0= A0 ^ (B0 ^ M) ^ C0;
    assign C1= (A0 & (B0 ^ M)) | (C0 & (A0 ^ (B0 ^ M)));
    
    assign S1= A1 ^ (B1 ^ M) ^ C1;
    assign C2= (A1 & (B1 ^ M)) | (C1 & (A1 ^ (B1 ^ M)));
    
    assign S2= A2 ^ (B2 ^ M) ^ C2;
    assign C3= (A2 & (B2 ^ M)) | (C2 & (A2 ^ (B2 ^ M)));
    
    assign S3= A3 ^ (B3 ^ M) ^ C3;
    assign C4= (A3 & (B3 ^ M)) | (C3 & (A3 ^ (B3 ^ M)));
    
    assign V= C3 ^ C4;
endmodule
</pre>

<h5>Test bench file code:</h5>

<pre>`timescale 1ns / 1ps


module tb_universal_adder_subtractor(

    );
reg A0, A1, A2, A3, B0, B1, B2, B3, M;
wire C4, S0, S1, S2, S3,V;

universal_adder_subtractor uut(A0, A1, A2, A3, B0, B1, B2, B3, M,C4, S0, S1, S2, S3,V);

initial begin
// ADD: 9 and 10 [1001 + 1010]
A3=1; A2=0; A1=0; A0=1; 
B3=1; B2=0; B1=1; B0=0; 
M=0;
#10

// SUBTRACT: 10 from 9 [1001- 1010]
A3=1; A2=0; A1=0; A0=1; 
B3=1; B2=0; B1=1; B0=0; 
M=1;
#10
$finish;

end
endmodule
</pre>

Schematic:
![WhatsApp Image 2025-11-18 at 23 01 01_68606018](https://github.com/user-attachments/assets/67e5fb1a-c9f5-4957-bf57-3e625fbfe480)

Simulation:
![WhatsApp Image 2025-11-18 at 22 59 38_9d1d4967](https://github.com/user-attachments/assets/9814d178-a66b-4111-b4ab-2434a2fd91e4)
________________________________________________________________________________________________________________________________________

<h4>13. SR Latch:</h4>

<h5>Code:</h5>
<h5>Design source file code:</h5>

<pre>`timescale 1ns / 1ps



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


endmodule</pre>

<h5>Test bench file code:</h5>

<pre>`timescale 1ns / 1ps

module tb_sr_latch(

    );
    
reg S,R;
wire Q, Qbar;


sr_latch uut(S,R,Q,Qbar);

initial 
    begin
    S=0;  
    R=1;
    #10
    S=1;  
    R=1;
    #10
    S=1;  
    R=0;
    #10
    S=1;  
    R=1;
    #10
    S=0;  
    R=0;
    #10
  $finish;
  end

endmodule</pre>

Schematic:
![WhatsApp Image 2025-11-19 at 00 04 35_c0ca73f1](https://github.com/user-attachments/assets/515060f1-6b55-4c91-93cb-909382a5c466)

Simulation:
![WhatsApp Image 2025-11-19 at 00 03 12_cd90a7e0](https://github.com/user-attachments/assets/bded6930-4550-4849-95d1-8dbbaf1a8f2a)
________________________________________________________________________________________________________________________________________

<h4>14. SR Flip Flop:</h4>

<h5>Code:</h5>
<h5>Design source file code:</h5>

<pre>`timescale 1ns / 1ps 

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


endmodule</pre>

<h5>Test bench file code:</h5>

<pre>`timescale 1ns / 1ps 

module tb_sr_ff( 
); 
reg S, R, CLK; 
wire Q, Qbar; 

sr_ff uut (S,R,CLK,Q,Qbar); 

initial begin 
CLK = 0; 
forever #5 CLK = ~CLK; 
end 

initial begin 
S = 0; R = 0;   
#12;            
S = 0; R = 1;   
#10; 
S = 0; R = 0;   
#10; 
S = 1; R = 0;   
#10; 
S = 0; R = 0;   
#10; 
S = 1; R = 1;   
#10; 
$finish; 
end 

endmodule</pre>

Schematic:
![WhatsApp Image 2025-11-19 at 00 21 23_4f43b269](https://github.com/user-attachments/assets/b61a409f-5345-4e5f-bff3-0d41d3759b93)

Simulation:
![WhatsApp Image 2025-11-19 at 00 17 52_d6a66df5](https://github.com/user-attachments/assets/a1960adb-c7e1-4a45-8283-f31d47558fef)
____________________________________________________________________________________________________________________________________

<h4>15. D Flip Flop:</h4>

<h5>Code:</h5>
<h5>Design source file code:</h5>

<pre>`timescale 1ns / 1ps 

//Positive edge triggered D Flip Flop

module d_ff( 
input  D, CLK, 
output reg Q, 
output Qbar 
); 


assign Qbar = ~Q;

always @(posedge CLK) begin
     Q <= D;
end


endmodule</pre>

<h5>Test bench file code:</h5>

<pre>`timescale 1ns / 1ps 

module tb_d_ff( 
); 
reg  D, CLK;  
wire Q, Qbar; 

d_ff uut (D,CLK,Q,Qbar); 

initial begin 
CLK = 0; 
forever #5 CLK = ~CLK; 
end 

initial begin 
D = 0;  #10;            
D = 1;  #10; 
$finish; 
end 

endmodule</pre>

Schematic:
![WhatsApp Image 2025-11-19 at 00 39 34_ba92f0e7](https://github.com/user-attachments/assets/af09957e-c29b-40af-bf60-23621372ae71)

Simulation:
![WhatsApp Image 2025-11-19 at 00 36 21_f83bbb05](https://github.com/user-attachments/assets/6832f0ef-cce0-408d-97a0-e45b2acaee5c)
________________________________________________________________________________________________________________________________________________

<h4>16. JK Flip Flop:</h4>

<h5>Code:</h5>
<h5>Design source file code:</h5>

<pre>`timescale 1ns / 1ps 

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


endmodule</pre>

<h5>Test bench file code:</h5>

<pre>`timescale 1ns / 1ps 

module tb_jk_ff( 
); 
reg J, K, CLK; 
wire Q, Qbar; 

jk_ff uut (J,K,CLK,Q,Qbar); 

initial begin 
CLK = 0; 
forever #5 CLK = ~CLK; 
end 

initial begin  
J = 0; K = 0;   
#12;           
J = 0; K = 1;   
#10; 
J = 0; K = 0;   
#10; 
J = 1; K = 0;   
#10; 
J = 0; K = 0;   
#10; 
J = 1; K = 1;   
#10; 
$finish; 
end 

endmodule</pre>

Schematic:
![WhatsApp Image 2025-11-19 at 00 57 47_4d73369b](https://github.com/user-attachments/assets/99c44e88-a5ef-411a-b209-b73365106a37)

Simulation:
![WhatsApp Image 2025-11-19 at 00 56 39_072380e3](https://github.com/user-attachments/assets/24734caf-f3f6-474c-87c4-e0056747d387)
________________________________________________________________________________________________________________________________________________

<h4>17. T Flip Flop:</h4>

<h5>Code:</h5>
<h5>Design source file code:</h5>

<pre>`timescale 1ns / 1ps 
 
//Positive edge triggered T Flip Flop

module t_ff( 
input  T, CLK, 
output reg Q, 
output Qbar 
); 


assign Qbar = ~Q;
initial Q=0;

always @(posedge CLK) begin
   case ({T}) 
     1'b1: Q <= Qbar;   // Toggle
     1'b0: Q <= Q;   // Hold
endcase
end


endmodule</pre>

<h5>Test bench file code:</h5>

<pre>`timescale 1ns / 1ps 

module tb_t_ff( 
); 
reg  T, CLK;  
wire Q, Qbar; 

t_ff uut (T,CLK,Q,Qbar); 

initial begin 
CLK = 0; 
forever #5 CLK = ~CLK; 
end 

initial begin 
T = 0;  #10;            
T = 1;  #10; 
T = 0;  #10;            
T = 1;  #10;
$finish; 
end 

endmodule</pre>

Schematic:
![WhatsApp Image 2025-11-19 at 01 22 29_13df9004](https://github.com/user-attachments/assets/90585adf-e0c3-4791-8d12-cd4f70157859)

Simulation:
![WhatsApp Image 2025-11-19 at 01 16 17_85f0dc64](https://github.com/user-attachments/assets/99bb42ea-ccbb-4ebe-a7bb-adf147f89d14)
________________________________________________________________________________________________________________________________________________
