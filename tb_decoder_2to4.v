`timescale 1ns / 1ps

module tb_decoder_2to4;

reg A0, A1;
wire Y0, Y1, Y2, Y3;
integer i;

decoder_2to4 uut (
    .A0(A0),
    .A1(A1),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

initial begin
    for (i = 0; i < 4; i = i + 1) begin
        {A1, A0} = i;
        #10;
    end
    $finish;
end

endmodule
