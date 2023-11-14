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
    input logic clk, reset,
    output logic tx,
    output logic tx_start,
    output logic[7:0] savedArray[1023:0],
    output logic[7:0] Data
    );
    //logic[7:0] savedArray[1023:0];
    always_ff @(posedge clk) begin
    if(reset)
        for(int i=0; i<1024; i++) 
                savedArray[i] <= 0;     
    else
        if(SaveData)
              savedArray <= Array;
    end
    logic[9:0] Sel;
    //logic[7:0] Data;
    always_comb begin
        Data = savedArray[Sel];
    end
endmodule
