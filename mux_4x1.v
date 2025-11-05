`timescale 1ns / 1ps

module mux_4x1(
    input I0, I1, I2, I3,   // 4 data inputs
    input S1, S2,           // 2 select lines
    output reg Y            // output
    );
 
always @(*) begin
    case ({S1, S2})
        2'b00: Y = I0;
        2'b01: Y = I1;
        2'b10: Y = I2;
        2'b11: Y = I3;
        default: Y = 1'bx;  // undefined (optional)
    endcase
end

endmodule
