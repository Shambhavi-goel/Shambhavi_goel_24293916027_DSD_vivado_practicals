`timescale 1ns / 1ps

module priority_encoder_4to2_top(
    input I0, I1, I2, I3,   // input ports visible in schematic
    output [1:0] Y,         // output port visible in schematic
    output V
    );

    // Instantiate your encoder
    priority_encoder_4to2 uut (
        .I0(I0), .I1(I1), .I2(I2), .I3(I3),
        .Y(Y), .V(V)
    );

endmodule
