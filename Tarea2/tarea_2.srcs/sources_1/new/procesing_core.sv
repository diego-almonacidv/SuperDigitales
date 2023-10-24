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
    enum logic [4:0] {idle,send_a,send_b,busy_a,busy_b,send_suma,busy_suma,send_prom,busy_prom,adding_man,busy_man,send_man_1,send_man_2,send_man_3,adding_euc,busy_euc,sqrt_calculating,send_euc_1,send_euc_2} state,next_state;
    logic rst_counter,rst_delay,sum,counter_done,delay_ready,in_tvalid,out_tvalid;
    logic [7:0] prom,suma,man;
    logic [17:0] suma_manhattan,next_manhattan;
    logic [25:0] suma_euclediana,next_euclediana;
    logic [15:0] cuadrado;
    logic [15:0] salida_euc;
    
    always_ff @(posedge clk) begin
        if (~rst) begin
            state <= idle;
            suma_manhattan <= 18'd0;
            suma_euclediana <= 26'd0;
        end
        else begin
            suma_euclediana <= next_euclediana;
            suma_manhattan <= next_manhattan;
            state <= next_state;
        end
    end
    
    always_comb begin
        data_out=8'd0;
        tx_start=1'b0;
        rst_counter=1'b0;
        sum=1'b0;
        next_state=idle;
        rst_delay=1'b0;
        next_manhattan = 18'd0;
        next_euclediana = 26'd0;
        in_tvalid = 1'b0;
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
                  if(action==6'b010000)
                    next_state = adding_man;
                  if(action==6'b100000)
                    next_state = adding_euc;
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
            adding_man: begin
                    next_manhattan=suma_manhattan;
                    rst_counter=1'b1;
                    rst_delay = 1'b1;
                    if(delay_ready) begin
                        next_manhattan=suma_manhattan + man;
                        next_state = busy_man;
                        end
                    else
                        next_state = adding_man;
                    end
            busy_man: begin
                    next_manhattan=suma_manhattan;
                    rst_counter=1'b1;
                    if(~counter_done)begin
                        next_state = adding_man;
                        sum=1'b1;
                        end
                    else
                        next_state = send_man_1;
                    end
            send_man_1: begin
                    next_manhattan=suma_manhattan;
                    data_out=suma_manhattan[7:0];
                    rst_delay = 1'b1;
                    if(delay_ready) begin
                        tx_start=1'b1;
                        next_state = send_man_2;
                        rst_delay = 1'b0;
                        end
                    else
                        next_state = send_man_1;
                    end
            send_man_2: begin
                    next_manhattan=suma_manhattan;
                    data_out=suma_manhattan[15:8];
                    rst_delay = 1'b1;
                    if(delay_ready) begin
                        tx_start=1'b1;
                        next_state = send_man_3;
                        rst_delay = 1'b0;
                        end
                    else
                        next_state = send_man_2;
                    end
            send_man_3: begin
                    next_manhattan=suma_manhattan;
                    data_out={6'd0,suma_manhattan[17:16]};
                    rst_delay = 1'b1;
                    if(delay_ready) begin
                        tx_start=1'b1;
                        next_state = idle;
                        end
                    else
                        next_state = send_man_3;
                    end
            adding_euc: begin
                    next_euclediana=suma_euclediana;
                    rst_counter=1'b1;
                    rst_delay = 1'b1;
                    if(delay_ready) begin
                        next_euclediana=suma_euclediana + cuadrado;
                        next_state = busy_euc;
                        end
                    else
                        next_state = adding_euc;
                    end
            busy_euc: begin
                    next_euclediana=suma_euclediana;
                    rst_counter=1'b1;
                    if(~counter_done)begin
                        next_state = adding_euc;
                        sum=1'b1;
                        end
                    else begin
                        next_state = sqrt_calculating;
                        in_tvalid=1'b1;
                        end
                    end
            sqrt_calculating: begin
                    next_euclediana=suma_euclediana;
                    if(out_tvalid)
                        next_state = send_euc_1;
                    else
                        next_state = sqrt_calculating;
                    end
            send_euc_1: begin
                    next_euclediana=suma_euclediana;
                    data_out=salida_euc[7:0];
                    rst_delay = 1'b1;
                    if(delay_ready) begin
                        tx_start=1'b1;
                        next_state = send_euc_2;
                        rst_delay = 1'b0;
                        end
                    else
                        next_state = send_euc_1;
                    end
            send_euc_2: begin
                    next_euclediana=suma_euclediana;
                    data_out=salida_euc[15:8];
                    rst_delay = 1'b1;
                    if(delay_ready) begin
                        tx_start=1'b1;
                        next_state = idle;
                        end
                    else
                        next_state = send_euc_2;
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
    
    abs_res MANHATTAN(
    .A(mem_a),
    .B(mem_b),
    .Y(man)
    );
    
    assign cuadrado=man*man;
    
    cordic_0 CORDIC(
    .aclk(clk),
    .s_axis_cartesian_tvalid(in_tvalid),
    .s_axis_cartesian_tdata({6'd0,suma_euclediana}),
    .m_axis_dout_tdata(salida_euc),
    .m_axis_dout_tvalid(out_tvalid)
    );
endmodule
