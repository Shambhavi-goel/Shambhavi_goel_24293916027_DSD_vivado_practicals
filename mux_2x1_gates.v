`timescale 1ns / 1ps



module mux_2x1_gates(
input I0,I1,S,
output Y
    );
    

assign Y= ((~S) & I0) | (S & I1);

endmodule