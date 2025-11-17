`timescale 1ns / 1ps
 
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
