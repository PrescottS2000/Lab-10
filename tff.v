`timescale 1ns / 1ps



module tff(
    input T, clk,
    output Q,
    output Qnot
    
    );
    
jkff jinst(
    .J(T),
    .K(T),
    .clk(clk),
    .Q(Q),
    .Qnot(Qnot)
    
    );


endmodule
