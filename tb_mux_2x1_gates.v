`timescale 1ns / 1ps

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
