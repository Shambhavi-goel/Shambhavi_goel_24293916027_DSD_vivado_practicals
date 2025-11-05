`timescale 1ns / 1ps

module tb_mux_4x1;

reg I0, I1, I2, I3;
reg S1, S2;
wire Y;
integer i;

mux_4x1 uut (.I0(I0), .I1(I1), .I2(I2), .I3(I3),
             .S1(S1), .S2(S2), .Y(Y));

initial begin
    $monitor("Time=%0t | S1=%b S2=%b | I0=%b I1=%b I2=%b I3=%b | Y=%b",
              $time, S1, S2, I0, I1, I2, I3, Y);

    // Loop through all combinations (2^(4+2) = 64 total)
    for (i = 0; i < 64; i = i + 1) begin
        {S1, S2, I0, I1, I2, I3} = i;
        #10;
    end

    $finish;
end

endmodule
