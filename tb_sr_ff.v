`timescale 1ns / 1ps

module tb_sr_ff(

    );
    reg S,R,clk;
    wire q, q_bar;
    
sr_ff uut (
     .clk(clk),
    .S(S),
    .R(R),
    .q(q),
    .q_bar(q_bar)
);

    initial begin
    clk=0;
    forever #5 
    clk = ~clk;
    end
    
    initial begin 
    S = 0; R = 0; #10;
    S = 0; R = 1; #10;
    S = 1; R = 0; #10;
    S = 1; R = 1; #10;
    $finish;
end 
endmodule