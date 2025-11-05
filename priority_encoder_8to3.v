`timescale 1ns / 1ps

module priority_encoder_8to3(
    input I0, I1, I2, I3, I4, I5, I6, I7,
    output reg [2:0] Y,
    output reg V
    );

    always @(*) begin
        casez ({I7, I6, I5, I4, I3, I2, I1, I0})
            8'b1???????: begin Y = 3'b111; V = 1; end
            8'b01??????: begin Y = 3'b110; V = 1; end
            8'b001?????: begin Y = 3'b101; V = 1; end
            8'b0001????: begin Y = 3'b100; V = 1; end
            8'b00001???: begin Y = 3'b011; V = 1; end
            8'b000001??: begin Y = 3'b010; V = 1; end
            8'b0000001?: begin Y = 3'b001; V = 1; end
            8'b00000001: begin Y = 3'b000; V = 1; end
            default:     begin Y = 3'b000; V = 0; end
        endcase
    end

endmodule
