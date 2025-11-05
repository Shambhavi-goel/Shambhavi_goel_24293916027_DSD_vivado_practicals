`timescale 1ns / 1ps

module tb_mux_8x1;

reg I0, I1, I2, I3, I4, I5, I6, I7;
reg S1, S2, S3;
wire Y;
integer i;

mux_8x1 uut (.I0(I0), .I1(I1), .I2(I2), .I3(I3),
             .I4(I4), .I5(I5), .I6(I6), .I7(I7),
             .S1(S1), .S2(S2), .S3(S3), .Y(Y));

initial begin
    $monitor("Time=%0t | S1=%b S2=%b S3=%b | I0=%b I1=%b I2=%b I3=%b I4=%b I5=%b I6=%b I7=%b | Y=%b",
              $time, S1, S2, S3, I0, I1, I2, I3, I4, I5, I6, I7, Y);

    for (i = 0; i < 2048; i = i + 1) begin
        {S1, S2, S3, I0, I1, I2, I3, I4, I5, I6, I7} = i;
        #10;
    end
    $finish;
end

endmodule
