`timescale 1ns / 1ps

module tb_priority_encoder_8to3;

reg I0, I1, I2, I3, I4, I5, I6, I7;
wire [2:0] Y;
wire V;
integer i;

priority_encoder_8to3 uut (
    .I0(I0), .I1(I1), .I2(I2), .I3(I3),
    .I4(I4), .I5(I5), .I6(I6), .I7(I7),
    .Y(Y), .V(V)
);

initial begin
    // Initialize
    {I7, I6, I5, I4, I3, I2, I1, I0} = 8'b00000000;
    
    // Test all possible input combinations
    for (i = 0; i < 256; i = i + 1) begin
        {I7, I6, I5, I4, I3, I2, I1, I0} = i;
        #10;
    end
    $finish;
end

endmodule
