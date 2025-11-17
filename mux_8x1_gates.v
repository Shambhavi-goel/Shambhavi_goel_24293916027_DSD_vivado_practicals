`timescale 1ns / 1ps

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
