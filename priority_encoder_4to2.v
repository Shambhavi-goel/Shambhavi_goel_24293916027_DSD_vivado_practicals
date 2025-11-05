(* keep_hierarchy = "yes" *)
`timescale 1ns / 1ps

module priority_encoder_4to2(
    input I0, I1, I2, I3,    // Inputs (I3 has highest priority)
    output reg [1:0] Y,      // Encoded output
    output reg V             // Valid bit
    );

always @(*) begin
    // Default outputs
    Y = 2'b00;
    V = 1'b1;

    if (I3)       Y = 2'b11;   // Highest priority
    else if (I2)  Y = 2'b10;
    else if (I1)  Y = 2'b01;
    else if (I0)  Y = 2'b00;
    else begin
        V = 1'b0;              // No valid input
        Y = 2'b00;
    end
end

endmodule
