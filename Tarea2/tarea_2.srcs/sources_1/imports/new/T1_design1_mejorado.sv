`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2023 20:18:47
// Design Name: 
// Module Name: T1_design1_mejorado
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


module T1_design1_mejorado(
input logic clk ,
input logic resetN ,
input logic PushButton ,
output logic IncPulse_out
);

enum logic[5:0] {S0,S1,S2,S3,S4} state, next_state;
logic counter_rst,time_done,counter_rst2,time_done2;

always_ff @(posedge clk) begin
    if (~resetN)
        state <= S0;
    else
        state <= next_state;
end
    
    
always_comb begin
    next_state = S0;
    IncPulse_out = 1'b0;
    counter_rst = 1'b0;
    counter_rst2 = 1'b0;
    case(state)
        S0: begin
            if (PushButton) begin
                next_state = S1;
            end
        end
        S1: begin
            counter_rst = 1'b1;
            if (PushButton) begin
                if (time_done)
                    next_state = S3;
                else
                    next_state = S1;
            end else
                next_state = S2;
        end
        S2: begin
            IncPulse_out = 1'b1;
            next_state = S0;
        end
        S3: begin
            IncPulse_out = 1'b1;
            if (PushButton) 
                next_state = S4;
            else
                next_state = S0;
        end
        S4: begin
            counter_rst2 = 1'b1;
            if (PushButton) begin
                if (time_done2)
                    next_state = S3;
                else
                    next_state = S4;
            end else
                next_state = S0;
        end
        default: next_state = S0;
    endcase
end

Counter #(.max_count(100000000-1)) COUNTER(
    .clk(clk),
    .rst(resetN && counter_rst),
    .done(time_done),
    .en(1'b1),
    .rev(1'b0)
);
Counter #(.max_count(50000000-1)) COUNTER2(
    .clk(clk),
    .rst(resetN && counter_rst2),
    .done(time_done2),
    .en(1'b1),
    .rev(1'b0)
);
endmodule
