`timescale 1ns / 1ps

module tb_decoder_3to8;

reg A0, A1, A2;
wire Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7;
integer i;

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

initial begin
    for (i = 0; i < 8; i = i + 1) begin
        {A2, A1, A0} = i;
        #10;
    end
    $finish;
end

endmodule
