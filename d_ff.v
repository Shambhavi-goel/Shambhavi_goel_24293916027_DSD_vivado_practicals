`timescale 1ns / 1ps

module d_ff(
    input D,clk,
    wire D_bar,sg, rg,
    output q, q_bar
    );
    assign D_bar= ~D;
    assign #1 sg = ~(D&clk);
    assign #1 rg = ~(D_bar&clk);
    
    assign q_bar = ~(q&rg);
    assign q = ~(q_bar&sg);
endmodule