`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.10.2023 18:14:23
// Design Name: 
// Module Name: UartHandler
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


module UartHandler(
        input logic clk,
        input logic reset_n,
        input logic rx,
        input logic pb,
        output logic tx,
        output logic led
    );
    logic tx_busy;
    logic reset;
    assign reset = ~reset_n;
    logic rx_ready;
    localparam nDatas = 'd10;
    logic dataCounter;
    logic dataCounterNext;
    
    logic tx_start ;
    logic[7:0] tx_data;
    logic[7:0] rx_data;
    logic[7:0] reg_rx_data;
    logic[7:0] reg_rx_data_next;
    logic pb_out;
    enum logic [3:0] {IDLE, RECV, WAIT_BUTTON,WAIT_TX_BUSY ,SEND_DATA} state, next_state;
    uart_basic uart(
        .clk(clk),
        .reset(reset),
        .rx(rx),
        .rx_data(rx_data),
        .rx_ready(rx_ready),
        .tx(tx),
        .tx_start(tx_start),
        .tx_data(tx_data),
        .tx_busy(tx_busy)
        );
    pb_debouncer debouncer(
        .clk(clk),
        .rst(reset),
        .pb(pb),
        .pb_state(pb_out)
    );
    always_ff @(posedge clk) begin
        if(reset) begin
           reg_rx_data<=0;
           state <= IDLE;
           dataCounter <= 0;
        end
        else begin
            reg_rx_data <= reg_rx_data_next;
            state <= next_state;
            dataCounter <= dataCounterNext;
        end
    end
    always_comb begin
    led=0;
    reg_rx_data_next = reg_rx_data; 
    tx_data=8'b0;
    tx_start = 'b0;
    next_state = IDLE;
    dataCounterNext = 0;
    case(state)
        IDLE:
            if(rx_ready)
                next_state = RECV;
        RECV: begin
            next_state = WAIT_BUTTON;
            reg_rx_data_next = rx_data;
            end
        WAIT_BUTTON:begin
            led=1;
            if(pb_out)
                next_state=SEND_DATA;
            else
                next_state=state;
        end
        WAIT_TX_BUSY:begin
            dataCounterNext = dataCounter;
            
            if(tx_busy) begin
                next_state = state;
            end else if (dataCounter==nDatas) begin
                next_state = IDLE;
            end else begin
                next_state = SEND_DATA;
                end
        end
        SEND_DATA:begin
            dataCounterNext = dataCounter + 'd1;
            next_state = WAIT_TX_BUSY;//Se asume que siempre que entre en este estado txbusy estara en 0
            tx_data = reg_rx_data;
            tx_start = 1;
        end
        default:
            next_state = IDLE;
    endcase
    
    end
endmodule
