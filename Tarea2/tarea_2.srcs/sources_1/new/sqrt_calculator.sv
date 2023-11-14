`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2023 17:19:39
// Design Name: 
// Module Name: sqrt_calculator
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


module sqrt_calculator(
    input logic clk,rst_n,in_tvalid,
    input logic [25:0] data_in,
    output logic out_tvalid,
    output logic [15:0] data_out
    );
    logic [15:0] count,next_count,next_out;
    enum logic [1:0] {idle,calculating,finish} state,next_state;
    always_ff @(posedge clk) begin
        if(~rst_n) begin
            state <= idle;
            count <= 16'd0;
            data_out <= 16'd0;
            end
        else begin
            state <= next_state;
            count <= next_count;
            data_out <= next_out;
            end
    end
    always_comb begin
        next_count = 16'd0;
        next_out = data_out;
        out_tvalid = 1'b0;
        next_state = idle;
        case(state)
            idle: if(in_tvalid)
                    next_state = calculating;
            calculating: if(count*count <= data_in) begin
                            next_state = calculating;
                            next_count = count + 1;
                            end
                         else begin
                            next_out = count - 1;
                            next_state = finish;
                            end
            finish: out_tvalid = 1'b1;
        endcase
    end
endmodule
