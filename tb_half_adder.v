`timescale 1ns / 1ps

module tb_half_adder(

    );
    
reg A,B;
wire sum,carry;


half_adder uut(A,B,sum,carry);

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