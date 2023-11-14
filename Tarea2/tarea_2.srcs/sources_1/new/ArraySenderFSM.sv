`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2023 00:56:59
// Design Name: 
// Module Name: ArraySenderFSM
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


module ArraySenderFSM(
        input logic StartSending,
        input logic [9:0] Done_Counter_Reg,
        input logic [9:0] Count,
        input logic Tx_Busy,
        output logic increment, reset, Tx_Start
    );
endmodule
