`timescale 1ns / 1ps



module priority_encoder_4to2_using_gates(
input D0,D1,D2,D3,
output A,B,V
    );
    

assign A= D2 | D3;
assign B= (D1 & (~D2)) | D3;
assign V= D0 | D1 | D2 | D3; 

endmodule