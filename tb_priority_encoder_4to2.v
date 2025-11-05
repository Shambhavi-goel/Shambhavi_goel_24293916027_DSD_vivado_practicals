`timescale 1ns / 1ps

module tb_priority_encoder_4to2();

reg I0, I1, I2, I3;
wire [1:0] Y;
wire V;
integer i;

priority_encoder_4to2 uut (I0, I1, I2, I3, Y, V);

initial begin
    $monitor("Time=%0t | I3=%b I2=%b I1=%b I0=%b | Y=%b | V=%b",
              $time, I3, I2, I1, I0, Y, V);

    for (i = 0; i < 16; i = i + 1) begin
        {I3, I2, I1, I0} = i;
        #10;
    end

    $finish;
end

endmodule
