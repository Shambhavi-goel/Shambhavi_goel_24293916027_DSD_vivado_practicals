`timescale 1ns / 1ps


module universal_adder_subtractor(
input A0, A1, A2, A3, B0, B1, B2, B3, M,
output C4, S0, S1, S2, S3,V
    );
    assign C0= M;
    assign S0= A0 ^ (B0 ^ M) ^ C0;
    assign C1= (A0 & (B0 ^ M)) | (C0 & (A0 ^ (B0 ^ M)));
    
    assign S1= A1 ^ (B1 ^ M) ^ C1;
    assign C2= (A1 & (B1 ^ M)) | (C1 & (A1 ^ (B1 ^ M)));
    
    assign S2= A2 ^ (B2 ^ M) ^ C2;
    assign C3= (A2 & (B2 ^ M)) | (C2 & (A2 ^ (B2 ^ M)));
    
    assign S3= A3 ^ (B3 ^ M) ^ C3;
    assign C4= (A3 & (B3 ^ M)) | (C3 & (A3 ^ (B3 ^ M)));
    
    assign V= C3 ^ C4;
endmodule
