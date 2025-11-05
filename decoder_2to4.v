`timescale 1ns / 1ps

(* keep_hierarchy = "yes" *)
module decoder_2to4(
    input A0, A1,
    output reg Y0, Y1, Y2, Y3
    );

    always @(*) begin
        // Default all outputs to 0
        Y0 = 0; Y1 = 0; Y2 = 0; Y3 = 0;

        case ({A1, A0})
            2'b00: Y0 = 1;
            2'b01: Y1 = 1;
            2'b10: Y2 = 1;
            2'b11: Y3 = 1;
            default: ;
        endcase
    end

endmodule
