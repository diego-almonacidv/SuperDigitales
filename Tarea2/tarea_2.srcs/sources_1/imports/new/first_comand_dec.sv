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
    output logic [7:0]  data_out,
    output logic [4:0] action_onehot
    );
    logic sum,rst_counter,counter_done;
    enum logic [1:0] {idle,writing_a,writing_b} state,next_state;
    
    always_ff @(posedge clk) begin
        if (rst)
            state <= idle;
        else
            state <= next_state;
    end
    
    always_comb begin
        next_state = idle;
        write_en_a = 1'b0;
        write_en_b = 1'b0;
        data_out = rx_data;
        rst_counter = 1'b0;
        sum = 1'b0;
        action_onehot=6'd0;
        case (state)
            idle: begin
                  rst_counter =1'b1;
                  if((rx_data==8'd97)&&rx_ready)//write_a
                    next_state = writing_a;
                  if((rx_data==8'd98)&&rx_ready)//write_b
                    next_state = writing_b;
                  if(rx_data==8'd99)//send_a
                    action_onehot[0]=rx_ready;
                  if(rx_data==8'd100)//send_b
                    action_onehot[1]=rx_ready;
                  if(rx_data==8'd101)//sum
                    action_onehot[2]=rx_ready;
                  if(rx_data==8'd102)//avf
                    action_onehot[3]=rx_ready;
                  if(rx_data==8'd103)//manhattan
                    action_onehot[4]=rx_ready;
                  end
            writing_a: begin
                  write_en_a = rx_ready; 
                  next_state = writing_a;
                  sum = rx_ready;
                  if (counter_done && rx_ready)
                    next_state = idle;
                  end
            writing_b: begin
                  write_en_b = rx_ready; 
                  next_state = writing_b;
                  sum = rx_ready;
                  if (counter_done && rx_ready)
                    next_state = idle;
                  end         
        endcase    
    end

    
    Counter #(.max_count(1023)) ELEMENT_COUNTER(
    .clk(clk),
    .rst(~rst && ~rst_counter),
    .en(sum),
    .rev(1'b0),
    .done(counter_done)
    );
    

endmodule
