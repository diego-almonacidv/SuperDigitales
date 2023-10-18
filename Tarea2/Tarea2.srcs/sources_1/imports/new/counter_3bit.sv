`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.08.2023 21:03:22
// Design Name: 
// Module Name: counter_4bit
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


module counter_3bit(
    input logic clk, rst,
    output logic [2:0] count,
    output logic [7:0] seven_seg
    );

    always @(posedge clk, negedge rst) begin
        if (~rst) begin
            count <= 3'b000;
        end else begin
            count <= count + 1;
        end
    end    
    always@(*)
    begin
     case(count)
     0:  seven_seg = 8'b11111110;
     1:  seven_seg = 8'b11111101;
     2:  seven_seg = 8'b11111011;
     3:  seven_seg = 8'b11110111;
     4:  seven_seg = 8'b11101111;
     5:  seven_seg = 8'b11011111;
     6:  seven_seg = 8'b10111111;
     7:  seven_seg = 8'b01111111;
     default:  seven_seg = 8'b11111111;
     endcase
    end

endmodule
