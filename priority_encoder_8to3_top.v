`timescale 1ns / 1ps

module priority_encoder_8to3_top(
    input I0, I1, I2, I3, I4, I5, I6, I7,
    output [2:0] Y,
    output V
    );

    // Instantiate the main encoder
    priority_encoder_8to3 uut (
        .I0(I0), .I1(I1), .I2(I2), .I3(I3),
        .I4(I4), .I5(I5), .I6(I6), .I7(I7),
        .Y(Y), .V(V)
    );

endmodule
