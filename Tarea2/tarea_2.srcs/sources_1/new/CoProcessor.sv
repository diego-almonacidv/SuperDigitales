`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2023 17:43:48
// Design Name: 
// Module Name: CoProcessor
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


module CoProcessor(
        input logic clock,
        input logic reset_n,
        input logic rx,
        //input logic PBup,
        output logic tx,
        output logic dp,
        output logic [6:0] seven_seg,
        output logic [7:0] en
    );
    logic[7:0] rx_data, tx_data;
    logic rst;
    assign rst = ~reset_n;
    logic tx_start, rx_ready;
    logic tx_busy;
    logic clk;
    
    /*
    clk_wiz_0 ClkDivider(
        .reset(rst),
        .clk_in1(clock),
        .clk_out1(clk)
    );
    */
    assign clk = clock;
    
    uart_basic uart(
      .clk(clk),
      .reset(rst),
      .rx(rx),//1bit  
      .rx_data(rx_data),//8bits
      .rx_ready(rx_ready),
      .tx(tx),
      .tx_start(tx_start),
      .tx_data(tx_data),//8bits
      .tx_busy(tx_busy)
    );
    logic write_en_a, write_en_b;
    logic[7:0] data_out;
    logic [4:0] Action;
    first_comand_dec CommandDecoder(
        .rx_data(rx_data),
        .rx_ready(rx_ready),
        .clk(clk),
        .rst(rst),
        .write_en_a(write_en_a),
        .write_en_b(write_en_b),
        .data_out(data_out),
        .action_onehot(Action)
    );
    logic [7:0] dataArrayA [1023:0];
    logic [7:0] dataArrayB [1023:0];
    
    Memory SIPO_memory_A (
        .data_in(data_out),//8 bits
        .write_en(write_en_a),//1 bit
        .clk(clk),
        .rst(rst),
        .data_out(dataArrayA)//1024 Bytes
    );
    Memory SIPO_memory_B (
        .data_in(data_out),//8 bits
        .write_en(write_en_b),//1 bit
        .clk(clk),
        .rst(rst),
        .data_out(dataArrayB)//1024 Bytes
    );
    logic[9:0] DoneCounter;
    logic StartSending, SaveData, ShowSum;
    logic[2:0] OpCode,OpCode2;
    logic UpdateDisplay;
    ActionController ActionControllerModule(
        .Action(Action),//5 bits
        .DoneCounter(DoneCounter),//10 bits
        .SaveData(SaveData),//1 bit
        .OpCode(OpCode2),//3 bits
        .ShowSum(ShowSum),//1 bit
        .StartSending(StartSending),
        .clk(clk),
        .rst(rst)
    );
    logic[7:0] Sum_Array[1023:0];
    logic[7:0] Avg_Array[1023:0];
    logic[7:0] Manhattan[2:0];
    procesing_core #(.NINPUTS(1024)) CORE(
        .mem_a(dataArrayA),
        .mem_b(dataArrayB),
        .suma_arr_out(Sum_Array),
        .avg_arr_out(Avg_Array),
        .manhattan({Manhattan[2][1:0],Manhattan[1],Manhattan[0]}),
        .rst(rst),
        .clk(clk)
    );
    assign Manhattan[2][7:2]=6'd0;
    logic[7:0] muxOut[1023:0];
    
    always_ff @(posedge clk)begin
        if (rst)
            OpCode<=3'b000;
        else if (SaveData)
            OpCode<=OpCode2;
    end
    //----------------Mux logic----------------------
    always_comb begin
    case(OpCode)
    3'b000:
        muxOut = Sum_Array;
    3'b010:
        muxOut = {Sum_Array[1023:3],Manhattan[2:0]};
    3'b001:
        muxOut = Avg_Array;
    3'b011:
        muxOut = dataArrayB;
    3'b100:
        muxOut = dataArrayA;
    default:
        muxOut = Sum_Array;   
    endcase
    end
    //------------End Mux Logic--------------------
    SendingManager SendingManagerModule (
        .Array(muxOut),
        .DoneCounter(DoneCounter),
        .StartSending(StartSending),
        .clk(clk),
        .rst(rst),
        .Tx_Data(tx_data),
        .Tx_Start(tx_start),
        .Tx_Busy(tx_busy)
    );

    CoprocesorSevenSegDriver SevenSegDriver(
        .ShowSum(ShowSum),
        .clk(clk),
        .rst(rst),
        .Manhattan(muxOut[2:0]),
        .seven_seg(seven_seg),
        .en(en),
        .dp(dp)
    );
    
endmodule
