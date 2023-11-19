`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2023 22:00:10
// Design Name: 
// Module Name: procesing_core
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


module procesing_core #(parameter NINPUTS = 1024)(
    input logic [7:0] mem_a [NINPUTS-1:0],mem_b [NINPUTS-1:0],
    output logic [7:0] suma_arr_out[NINPUTS-1:0],
    output logic [7:0] avg_arr_out[NINPUTS-1:0],
    output logic [$clog2(NINPUTS)+7:0] manhattan,
    input logic clk,rst
    );
    
    logic [8:0] suma_arr [NINPUTS-1:0];
    logic [7:0] diff_arr_out [NINPUTS-1:0];
    
    
    
    always_comb begin
        for(int i=0; i<NINPUTS; i++) begin
            suma_arr[i] = mem_a[i] + mem_b[i];
            suma_arr_out[i] = suma_arr[i][7:0];
            avg_arr_out[i] = suma_arr[i][8:1];
            diff_arr_out[i] = mem_a[i] < mem_b[i] ? mem_b[i]-mem_a[i] : mem_a[i]-mem_b[i];
        end
    end
    
    pipelined_add_tree #(.NINPUTS(NINPUTS), .IWIDTH(8)) ADD_TREE(
        .data_in(diff_arr_out),
        .data_out(manhattan),
        .clk(clk),
        .rst(rst)
    );

endmodule
