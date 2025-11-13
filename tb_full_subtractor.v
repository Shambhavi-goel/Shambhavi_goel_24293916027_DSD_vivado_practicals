`timescale 1ns / 1ps

module tb_full_subtractor(

    );
    
reg A,B,C;
wire difference,borrow;


full_subtractor uut(A,B,C,difference,borrow);

initial 
    begin
    A=0;B=0;C=0;
    #10
    A=0;B=0;C=1;
    #10
    A=0;B=1;C=0;
    #10
    A=0;B=1;C=1;
    #10
    A=1;B=0;C=0;
    #10
    A=1;B=0;C=1;
    #10
    A=1;B=1;C=0;
    #10
    A=1;B=1;C=1;
    #10
  $finish;
  end

endmodule