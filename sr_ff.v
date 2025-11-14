`timescale 1ns / 1ps

module sr_ff(
    input S,R,clk,
    wire sg, rg,
    output q, q_bar
    );
    assign #1 sg = ~(S&clk);
    assign #1 rg = ~(R&clk);
    assign q_bar = ~(q&rg);
    assign q = ~(q_bar&sg);
endmodule