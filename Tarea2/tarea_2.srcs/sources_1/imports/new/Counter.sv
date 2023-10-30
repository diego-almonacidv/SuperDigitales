`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2023 10:58:03
// Design Name: 
// Module Name: Counter
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


module Counter #(parameter max_count = 8)(
    input logic clk,rst,en,rev,
    output logic [$clog2(max_count+1)-1:0] count,
    output logic done
    );
    logic [$clog2(max_count+1)-1:0] next_count;
    
    always_ff @(posedge clk) begin
        if (~rst)
            count <= 0;
        else
            count <= next_count;
    end
    
    always_comb begin
        done = 1'b0;
        next_count = count;
        if (count == max_count)
            done = 1'b1;
        if (en) begin
            if (rev) begin
                if (count == 0)
                    next_count = max_count;
                else
                    next_count = count - 1;
            end
            else begin
                if (count == max_count)
                    next_count = 0;
                else
                    next_count = count + 1;
            end
        end
    end
    
endmodule
