`timescale 1ns / 1ps


module jkff(
    input J, K, clk,
    output Q,
    output Qnot
    
    );
    wire D;
    assign D = (J & Qnot) | (~K & Q);
    
dff dffinst(
    .D(D),
    .clk(clk),
    .Q(Q),
    .Qnot(Qnot)
    
    );
        



endmodule
