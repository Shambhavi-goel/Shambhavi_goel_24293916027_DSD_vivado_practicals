`timescale 1ns / 1ps

module tb_half_subtractor(

    );
    
reg A,B;
wire difference, borrow;


half_subtractor uut(A,B,difference, borrow);

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