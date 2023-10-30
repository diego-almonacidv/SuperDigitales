`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2023 18:40:22
// Design Name: 
// Module Name: first_comand_dec
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


module first_comand_dec(
    input logic [7:0] rx_data,
    input logic rx_ready,
    input logic clk,rst,
    output logic write_en_a,write_en_b,
    output logic [7:0] data,
    output logic [9:0] address,
    output logic led1,led2,
    output logic [5:0] action_onehot
    );
    logic [9:0] element_count;
    logic sum,rst_counter,counter_done;
    enum logic [1:0] {idle,writing_a,writing_b} state,next_state;
    
    always_ff @(posedge clk) begin
        if (~rst)
            state <= idle;
        else
            state <= next_state;
    end
    
    always_comb begin
        address = element_count;
        next_state = idle;
        write_en_a = 1'b0;
        write_en_b = 1'b0;
        data = rx_data;
        rst_counter = 1'b1;
        sum = 1'b0;
        led1 = 1'b0;
        led2 = 1'b0;
        action_onehot=6'd0;
        case (state)
            idle: begin
                  rst_counter =1'b0;
                  if((rx_data==8'd97)&&rx_ready)
                    next_state = writing_a;
                  if((rx_data==8'd98)&&rx_ready)
                    next_state = writing_b;
                  if(rx_data==8'd99)
                    action_onehot[0]=rx_ready;
                  if(rx_data==8'd100)
                    action_onehot[1]=rx_ready;
                  if(rx_data==8'd101)
                    action_onehot[2]=rx_ready;
                  if(rx_data==8'd102)
                    action_onehot[3]=rx_ready;
                  if(rx_data==8'd103)
                    action_onehot[4]=rx_ready;
                  if(rx_data==8'd104)
                    action_onehot[5]=rx_ready;
                  end
            writing_a: begin
                  write_en_a = rx_ready; 
                  next_state = writing_a;
                  sum = rx_ready;
                  led1 = 1'b1;
                  if (counter_done && rx_ready)
                    next_state = idle;
                  end
            writing_b: begin
                  write_en_b = rx_ready; 
                  next_state = writing_b;
                  sum = rx_ready;
                  led2 = 1'b1;
                  if (counter_done && rx_ready)
                    next_state = idle;
                  end         
        endcase    
    end

    
    Counter #(.max_count(1023)) ELEMENT_COUNTER(
    .clk(clk),
    .rst(rst & rst_counter),
    .en(sum),
    .rev(1'b0),
    .count(element_count),
    .done(counter_done)
    );
    

endmodule
