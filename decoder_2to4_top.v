`timescale 1ns / 1ps

module decoder_2to4_top(
    input A0, A1,
    output Y0, Y1, Y2, Y3
    );

    // Instantiate decoder
    decoder_2to4 uut (
        .A0(A0),
        .A1(A1),
        .Y0(Y0),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3)
    );

endmodule
