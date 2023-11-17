`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2023 20:47:24
// Design Name: 
// Module Name: SendingManager
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


module SendingManager(
    input logic StartSending, SaveData,
    input logic[9:0] DoneCounter,
    input logic[7:0] Array[1023:0],
    input logic Tx_Busy,
    input logic clk, rst,
    output logic[7:0] Tx_Data,
    output logic Tx_Start
    );
    logic[7:0] savedArray[1023:0];
    logic[9:0] Done_Counter_Reg;
    always_ff @(posedge clk) begin
    if(rst)begin
        Done_Counter_Reg = 0;
        for(int i=0; i<1024; i++) 
                savedArray[i] <= 0;   
                
    end  
    else begin
        if(StartSending)begin
            Done_Counter_Reg<=DoneCounter;
        end
        if(SaveData)begin
              savedArray <= Array;
        end
    end 
    end
    logic[9:0] Sel;
    logic ResetCounter;
    logic Increment;
    logic[9:0] Count;
    always_comb begin
        Sel = Count;
        Tx_Data = savedArray[Sel];
    end
    Counter #(.max_count(1023)) CounterModule(
        .clk(clk),
        .rst(~rst && ~ResetCounter),
        .en(Increment),
        .rev(1'b0),
        .count(Count)
    );
    ArraySenderFSM ArraySenderFSMModule(
        .StartSending(StartSending),
        .Count(Count),
        .Increment(Increment),
        .ResetCounter(ResetCounter),
        .clk(clk),
        .rst(rst),
        .Done_Counter_Reg(Done_Counter_Reg),
        .Tx_Busy(Tx_Busy),
        .Tx_Start(Tx_Start)
    );
    
endmodule
