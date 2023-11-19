`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2023 20:56:31
// Design Name: 
// Module Name: CoprocesorSevenSegDriver
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


module CoprocesorSevenSegDriver(
    input logic ShowSum,clk, rst,
    input logic [7:0] Manhattan [2:0],
    output logic [7:0] en,
    output logic [6:0] seven_seg,
    output logic dp
    );
    logic[3:0] A,B,C,D,E,F,G,H;
    logic busy, init_conversion;
    logic[31:0] unsigned_input, bcd_output;
    logic [7:0] prevManhattan [2:0];
    logic [7:0] prevManhattan_next [2:0];
    logic reset_n = ~rst;
    //Mux logic in order to show sum
    always_comb begin
        if(~ShowSum)
            {A,B,C,D,E,F} = 0;
        else
            {F,E,D,C,B,A} = bcd_output[23:0]; 
    end
    logic busy_n;
    always_comb begin
        unsigned_input = {8'd0,prevManhattan[2],prevManhattan[1],prevManhattan[0]};
        busy = ~busy_n;
    end
    
    unsigned_to_bcd BCD_converter(
        .clk(clk),
        .reset(rst),
        .trigger(init_conversion),
        .in(unsigned_input),
        .idle(busy_n),
        .bcd(bcd_output)
    );
    driver_7seg Segs(
        .seven_seg(seven_seg),
        .en(en),
        .clk(clk),
        .rst(reset_n),
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .E(E),
        .F(F),
        .G(4'd0),
        .H(4'd0),
        .dp(dp)
    );

    always_comb begin
        if(prevManhattan!=Manhattan && ShowSum && ~busy)begin
            prevManhattan_next = Manhattan;
            init_conversion = 1'b1;
        end
        else begin
            prevManhattan_next = prevManhattan;
            init_conversion = 1'b0;
        end
    end
    always_ff @(posedge clk) begin
    if(rst) begin
        for(int i=0; i<3; i++)begin 
            prevManhattan[i] = 0;
        end
    end
    else begin
        prevManhattan<=prevManhattan_next;
    end
    end
endmodule
