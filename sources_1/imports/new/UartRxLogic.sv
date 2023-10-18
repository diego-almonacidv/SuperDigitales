`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.10.2023 18:14:23
// Design Name: 
// Module Name: UartRxHandler
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


module UartRxHandler(
        input logic clk,
        input logic reset_n,
        input logic rx,
        //input logic PBup,
        output logic tx,led1,led2,
        output logic dp,
        output logic [6:0] seven_seg,
        output logic [7:0] en
    );
    logic tx_busy,tx_start;
    logic reset;
    assign reset = ~reset_n;
    logic rx_ready;
    
    logic[7:0] tx_data;
    logic[7:0] rx_data;
    
    //logic debounced,add;
    //logic [1:0] addrb;
    logic [7:0] mem_out_a,mem_out_b;
    logic [5:0] action;
    
    logic write_en_a,write_en_b;
    logic [7:0] data,data_out;
    logic [9:0] address,address_out;
    
    uart_basic uart(
        .clk(clk),
        .reset(reset),
        .rx(rx),
        .rx_data(rx_data),
        .rx_ready(rx_ready),
        .tx(tx),
        .tx_start(tx_start),
        .tx_data(data_out),
        .tx_busy(tx_busy)
        );
    
    first_comand_dec command(
        .rx_data(rx_data),
        .rx_ready(rx_ready),
        .clk(clk),
        .rst(reset_n),
        .write_en_a(write_en_a),
        .write_en_b(write_en_b),
        .data(data),
        .address(address),
        .led1(led1),
        .led2(led2),
        .action_onehot(action)
    );
    
    driver_7seg Segs(
        .seven_seg(seven_seg),
        .en(en),
        .clk(clk),
        .rst(reset_n),
        .A(mem_out_a[3:0]),
        .B(mem_out_a[7:4]),
        .C(mem_out_b[3:0]),
        .D(mem_out_b[7:4]),
        .E(4'd0),
        .F(4'd0),
        .G(4'd0),
        .H(address[3:0]),
        .dp(dp)
    );
    
    blk_mem_gen_0 BRAMA (
        .addra(address[1:0]),
        .addrb(address_out[1:0]),
        .clka(clk),
        .clkb(clk),
        .dina(data),
        .dinb(8'd0),
        .doutb(mem_out_a),
        .ena(1'b1),
        .enb(1'b1),
        .wea(write_en_a),
        .web(1'b0)
    );
    
    blk_mem_gen_0 BRAMB (
        .addra(address[1:0]),
        .addrb(address_out[1:0]),
        .clka(clk),
        .clkb(clk),
        .dina(data),
        .dinb(8'd0),
        .doutb(mem_out_b),
        .ena(1'b1),
        .enb(1'b1),
        .wea(write_en_b),
        .web(1'b0)
    );
    
    procesing_core CORE(
        .action(action),
        .clk(clk),
        .rst(reset_n),
        .mem_a(mem_out_a),
        .mem_b(mem_out_b),
        .tx_busy(tx_busy),
        .address_out(address_out),
        .data_out(data_out),
        .tx_start(tx_start)
    );
   
   /*
    T1_design1_mejorado T1(
        .clk(clk),
        .resetN(reset_n),
        .PushButton(debounced),
        .IncPulse_out(add)
    );
    button_debouncer DEBOUNCER(
        .button(PBup),
        .clk(clk),
        .rst(reset_n),
        .out(debounced)
    );
    Counter #(.max_count(3)) ADDRB(
        .clk(clk),
        .rst(reset_n),
        .en(add),
        .rev(1'b0),
        .count(addrb)
    );
    */
endmodule
