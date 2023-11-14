`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2023 19:20:18
// Design Name: 
// Module Name: Memory
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


module Memory(
    input logic [7:0] data_in,
    input logic write_en,
    input logic clk,rst,
    output logic [7:0] data_out [1023:0]
    );
    always_ff @(posedge clk) begin
        if(rst)begin
            for(int i=0;i<1024;i++) begin
                data_out[i]<=8'd0;
            end
        end else if (write_en) begin
            data_out[1023]<=data_in;
            for(int i=0;i<1023;i++) begin
                data_out[i]<=data_out[i+1];
            end
        end
    end
endmodule
