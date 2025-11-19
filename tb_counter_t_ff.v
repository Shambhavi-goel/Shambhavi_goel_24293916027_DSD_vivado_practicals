`timescale 1ns / 1ps
module tb_counter_t_ff(
    );
    
    reg clk,reset;
    wire [2:0]q;
    
    counter_t_ff uut(clk,reset,q);
    initial
    begin
    clk=0;
    #5
    forever #5 clk=~clk;
    end
    
    initial 
    begin
    reset =1;
    #10
    reset=0;
    #50
    $finish;
    end
    
endmodule
