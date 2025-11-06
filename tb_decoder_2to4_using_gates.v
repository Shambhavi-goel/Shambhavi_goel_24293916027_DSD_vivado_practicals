`timescale 1ns / 1ps

module tb_decoder_2to4_using_gates(

    );
    
reg A,B;
wire D0,D1,D2,D3;


decoder_2to4_using_gates uut(A,B,D0,D1,D2,D3);

initial 
    begin
    A=0;  
    B=0;
    #10
    A=0;  
    B=1;
    #10
    A=1;  
    B=0;
    #10
    A=1;  
    B=1;
    #10
  $finish;
  end

endmodule