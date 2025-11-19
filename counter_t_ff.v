
//Code for 0 -> 3 -> 5 -> 6 -> 0 counter with T Flip Flop

`timescale 1ns / 1ps
module t_ff(
input t,
input clk,
input reset,
output reg q
    );
    always @(posedge clk or posedge reset) begin
    if(reset)//always at posivitive edge
    q<=1'b0;
    else if(t)
    q<=~q;
    end 
    
endmodule

module counter_t_ff(
input clk, reset, output [2:0]q
    );
    wire t0,t1,t2;
    assign t0=~q[1];
    assign t1=1;
    assign t2=q[1];
    
    t_ff ff0(t0,clk,reset,q[0]);
    t_ff ff1(t1,clk,reset,q[1]);
    t_ff ff2(t2,clk,reset,q[2]);
    
endmodule

//Code for lockout (1 -> 2 -> 4 -> 7 -> 1) with T Flip Flop

/*`timescale 1ns / 1ps
module t_ff(
input t,
input clk,
input reset,
output reg q
    );
    always @(posedge clk or posedge reset) begin
    if(reset)//always at posivitive edge
    q<=1'b1;
    else if(t)
    q<=~q;
    end 
    
endmodule

module counter_t_ff(
input clk, reset, output [2:0]q
    );
    wire t0,t1,t2;
    assign t0=(~q[1]) & (q[0] ^ q[2]);
    assign t1=1;
    assign t2=(q[1]) & (~(q[0] ^ q[2]));
    
    t_ff ff0(t0,clk,reset,q[0]);
    t_ff ff1(t1,clk,reset,q[1]);
    t_ff ff2(t2,clk,reset,q[2]);
    
endmodule
*/

//Code for lockout solution (1 -> 2 -> 4 -> 7 -> 1) with T Flip Flop and Reset pulse un it

/*`timescale 1ns / 1ps

module t_ff(
    input t,
    input clk,
    input reset,
    output reg q
    );
    always @(posedge clk or posedge reset) begin
        if (reset)      
            q <= 1'b0;
        else if (t)
            q <= ~q;
        else
            q <= q;
    end
endmodule


module counter_t_ff(
    input clk,
    input reset,
    output [2:0] q
    );

    wire t0, t1, t2;
    wire parity, final_reset;
    
    assign t0 = (q[0] & q[2]) | (~q[1] & ~q[2]);
    assign t1 = q[1] | (q[0] & q[2]) | (~q[0] & ~q[2]);
    assign t2 = (q[0] & q[1]) | (q[2] & ~q[0]);

    assign parity = q[2] ^ q[1] ^ q[0];

    assign final_reset = reset | parity;

    t_ff ff0 (.t(t0), .clk(clk), .reset(final_reset), .q(q[0]));
    t_ff ff1 (.t(t1), .clk(clk), .reset(final_reset), .q(q[1]));
    t_ff ff2 (.t(t2), .clk(clk), .reset(final_reset), .q(q[2]));

endmodule
*/
