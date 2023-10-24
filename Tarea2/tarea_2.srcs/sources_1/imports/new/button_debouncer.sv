`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2023 19:12:07
// Design Name: 
// Module Name: button_debouncer
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


module button_debouncer(
    input logic button,clk,rst,
    output logic out
    );
    
    logic [1:0] state,next_state;
    logic timer_done,timer_rst;
    
    always_ff @(posedge clk, negedge rst) begin
        if (~rst)
            state <= 0;
        else
            state <= next_state;
    end
    
    always_comb begin
        next_state = 0;
        case(state)
            0: if (~button)
                   next_state = 0;
               else if (button)
                   next_state = 1;
            1: if (~button)
                   next_state = 0;
               else if (button & ~timer_done)
                   next_state = 1;
               else if (button & timer_done)
                   next_state = 2;
            2: if (~button)
                   next_state = 3;
               else if (button)
                   next_state = 2;
            3: if (button)
                   next_state = 2;
               else if (~button & ~timer_done)
                   next_state = 3;
               else if (~button & timer_done)
                   next_state = 0;
            default: next_state = 0;
        endcase
    end
    
    assign timer_rst = (state == 1) | (state == 3);
    assign out = (state == 2) | (state == 3);
    
    divisor_frecuencia #(.OFF_MS(5)) COUNTER(
        .clk(clk),
        .rst_n(timer_rst & rst),
        .out(timer_done)
    );
    
endmodule
