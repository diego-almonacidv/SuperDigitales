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
    
    logic [17:0] salida_display;
    logic [3:0] A,B,C,D,E,F;
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
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .E(E),
        .F(F),
        .G(4'd0),
        .H(4'd0),
        .dp(dp)
    );
    
    blk_mem_gen_0 BRAMA (
        .addra(address),
        .addrb(address_out),
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
        .addra(address),
        .addrb(address_out),
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
        .tx_start(tx_start),
        .last_display(salida_display)
    );
   logic trigger;
   logic[31:0] BCDin;
   logic idle;
   logic [32:0] outputBCD;
   unsigned_to_bcd BCDConverter(
        .clk(clk),
        .reset(reset),
        .trigger(trigger),
        .in(BCDin),
        .idle(idle),
        .bcd(outputBCD)
   );
   always_comb begin
        trigger = (outputBCD != {14'b0,salida_display}) && idle;
        BCDin = {14'b0,salida_display};
        {F,E,D,C,B,A} = outputBCD[23:0];
   end
endmodule
