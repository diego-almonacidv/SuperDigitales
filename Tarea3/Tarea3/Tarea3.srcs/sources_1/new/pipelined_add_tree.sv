`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2023 22:26:57
// Design Name: 
// Module Name: pipelined_add_tree
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


module pipelined_add_tree #(parameter NINPUTS=8, parameter IWIDTH=8)(
        input logic clk, rst, 
        input logic [IWIDTH-1:0] data_in [NINPUTS-1:0],
        output logic [$clog2(NINPUTS)+IWIDTH-1:0] data_out 
    );
    
    localparam NSTAGES = $clog2(NINPUTS);
    localparam PWIDTH = 1<<NSTAGES;
    localparam NSUMS = PWIDTH-1;
    localparam SWIDTH = IWIDTH+NSTAGES;
    
    logic[SWIDTH-1:0] sum [NSUMS-1:0]; 
    logic[SWIDTH-1:0] next_sum [NSUMS-1:0];
    integer i;
    always_ff @(posedge clk) begin
    if(rst)begin
        for(int i=0; i<NSUMS; i++) begin
            sum[i] <= 0;
        end
    end
    else
        sum <= next_sum ;
    end
    int prev_index;
    int curr_index;
    int num_sums;
    
    always_comb begin
            num_sums = PWIDTH>>1;
            for(int j = 0; j<num_sums ; j++) begin
                if(2*j + 1 <= NINPUTS-1)
                    next_sum[j] = data_in[2*j] + data_in[2*j+1]; 
                else if(2*j == NINPUTS-1)
                    next_sum[j] = data_in[2*j]; 
            end
            prev_index = 0;
            curr_index = num_sums;
            num_sums = num_sums>>1;
            for(int i = 0; i<NSTAGES ; i++) begin
                for(int j = 0; j<num_sums ; j++) begin
                    next_sum[curr_index + j] = sum[prev_index + 2*j] + sum[prev_index + 2*j + 1];
                end
                prev_index = curr_index;
                curr_index = curr_index + num_sums;
                num_sums = num_sums>>1;
            end
            data_out = sum[NSUMS-1];
    end
endmodule
