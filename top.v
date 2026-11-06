`timescale 1ns / 1ps



module top(

    input [3:0] sw,
    input btnC,
    
    output [5:0] led
    
    
    );
    
    dff part1(
        .D(sw[0]),
        .clk(btnC),
        .Q(led[0]),
        .Qnot(led[1])
    );
    
    jkff part2(
        .J(sw[1]),
        .K(sw[2]),
        .clk(btnC),
        .Q(led[2]),
        .Qnot(led[3])
     );
     
     tff part3(
        .T(sw[3]),
        .clk(btnC),
        .Q(led[4]),
        .Qnot(led[5])
     );
     
        
endmodule
