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


module procesing_core(
    input logic [5:0] action,
    input logic [7:0] mem_a,mem_b,
    input logic clk,rst,tx_busy,
    output logic [7:0] data_out,
    output logic [9:0] address_out,
    output logic tx_start
    );
    enum logic [3:0] {idle,send_a,send_b,busy_a,busy_b,send_suma,busy_suma,send_prom,busy_prom} state,next_state;
    logic rst_counter,rst_delay,sum,counter_done,delay_ready;
    logic [7:0] prom,suma;
    
    always_ff @(posedge clk) begin
        if (~rst)
            state <= idle;
        else
            state <= next_state;
    end
    
    always_comb begin
        data_out=8'd0;
        tx_start=1'b0;
        rst_counter=1'b0;
        sum=1'b0;
        next_state=idle;
        rst_delay=1'b0;
        case(state)
            idle: begin
                  if(action==6'b000001)
                    next_state = send_a;
                  if(action==6'b000010)
                    next_state = send_b;
                  if(action==6'b000100)
                    next_state = send_suma;
                  if(action==6'b001000)
                    next_state = send_prom;
                  end
            send_a: begin
                    data_out=mem_a;
                    rst_counter=1'b1;
                    rst_delay=1'b1;
                    if(delay_ready) begin
                        tx_start=1'b1;
                        next_state = busy_a;
                        end
                    else
                        next_state = send_a;
                    end
            busy_a: begin
                    data_out=mem_a;
                    rst_counter=1'b1;
                    if(tx_busy)
                        next_state=busy_a;
                    else begin
                        if(~counter_done)begin
                            next_state = send_a;
                            sum=1'b1;
                            end
                        else
                            next_state = idle;
                        end
                    end
            send_b: begin
                    data_out=mem_b;
                    rst_counter=1'b1;
                    rst_delay = 1'b1;
                    if(delay_ready) begin
                        tx_start=1'b1;
                        next_state = busy_b;
                        end
                    else
                        next_state = send_b;
                    end
            busy_b: begin
                    data_out=mem_b;
                    rst_counter=1'b1;
                    if(tx_busy)
                        next_state=busy_b;
                    else begin
                        if(~counter_done)begin
                            next_state = send_b;
                            sum=1'b1;
                            end
                        else
                            next_state = idle;
                        end
                    end
            send_suma: begin
                    data_out=suma;
                    rst_counter=1'b1;
                    rst_delay = 1'b1;
                    if(delay_ready) begin
                        tx_start=1'b1;
                        next_state = busy_suma;
                        end
                    else
                        next_state = send_suma;
                    end
            busy_suma: begin
                    data_out=suma;
                    rst_counter=1'b1;
                    if(tx_busy)
                        next_state=busy_suma;
                    else begin
                        if(~counter_done)begin
                            next_state = send_suma;
                            sum=1'b1;
                            end
                        else
                            next_state = idle;
                        end
                    end
            send_prom: begin
                    data_out=prom;
                    rst_counter=1'b1;
                    rst_delay = 1'b1;
                    if(delay_ready) begin
                        tx_start=1'b1;
                        next_state = busy_prom;
                        end
                    else
                        next_state = send_prom;
                    end
            busy_prom: begin
                    data_out=prom;
                    rst_counter=1'b1;
                    if(tx_busy)
                        next_state=busy_prom;
                    else begin
                        if(~counter_done)begin
                            next_state = send_prom;
                            sum=1'b1;
                            end
                        else
                            next_state = idle;
                        end
                    end
            default: next_state = idle;
        endcase
    end
    
    assign address_out[9:2]=8'd0;
    
    Counter #(.max_count(3)) ELEMENT_COUNTER(
    .clk(clk),
    .rst(rst & rst_counter),
    .en(sum),
    .rev(1'b0),
    .count(address_out[1:0]),
    .done(counter_done)
    );
    
    Counter #(.max_count(3)) DELAY(
    .clk(clk),
    .rst(rst & rst_delay),
    .en(1'b1),
    .rev(1'b0),
    .done(delay_ready)
    );
    
    promedio PROM(
    .A(mem_a),
    .B(mem_b),
    .Y(prom),
    .X(suma)
    );
endmodule
