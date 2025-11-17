`timescale 1ns / 1ps

module tb_d_ff(

    );
    reg D,clk;
    wire q, q_bar;
    
d_ff uut (
     .D(D),
     .clk(clk),
    .q(q),
    .q_bar(q_bar)
);

    initial begin
    clk=0;
    forever #5 
    clk = ~clk;
    end
    
    initial begin 
    D = 0; #10;
    D = 1; #10;
    $finish;
end 
endmodule