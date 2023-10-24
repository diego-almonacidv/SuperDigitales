`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2023 15:14:14
// Design Name: 
// Module Name: driver_7seg
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module driver_7seg(
    input logic [3:0] A,B,C,D,E,F,G,H,
    input logic clk,rst,
    output logic [6:0] seven_seg,
    output logic [7:0] en,
    output logic dp
    );
    logic [2:0] count;
    logic [3:0] hex;
    logic new_clock;
    counter_3bit COUNT(
        .clk(new_clock),
        .rst(rst),
        .count(count),
        .seven_seg(en)
    );
    mux_3bit MUX(
        .Sel(count),
        .Out(hex),
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .E(E),
        .F(F),
        .G(G),
        .H(H)
    );
    hex_to_7seg HEX_7SEG(
        .In(hex),
        .Out(seven_seg)
    );
    divisor_frecuencia DIVISOR(
        .clk(clk),
        .rst_n(rst),
        .out(new_clock)
    );
    assign dp = 1;
endmodule
