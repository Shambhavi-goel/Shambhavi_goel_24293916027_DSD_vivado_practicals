`timescale 1ns / 1ps

module decoder_3to8_top(
    input A0, A1, A2,
    output Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7
    );

    // Instantiate main decoder
    decoder_3to8 uut (
        .A0(A0),
        .A1(A1),
        .A2(A2),
        .Y0(Y0),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3),
        .Y4(Y4),
        .Y5(Y5),
        .Y6(Y6),
        .Y7(Y7)
    );

endmodule
