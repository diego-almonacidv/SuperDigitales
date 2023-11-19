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
        input logic clk, rst,
        input logic StartSending,
        input logic [9:0] Done_Counter_Reg,
        input logic [9:0] Count,
        input logic Tx_Busy,
        output logic Increment, ResetCounter, Tx_Start,SaveData
    );
    enum logic [3:0] {IDLE, ACTIVATE_UART, INCREMENT_COUNTER, WAITING_UART,SAVE_NEW_DATA} state, state_next;
    always_ff @(posedge clk)begin
        if(rst)
            state = IDLE;
        else
            state = state_next;
    end
    always_comb begin
        Tx_Start = 0;
        Increment = 0;
        ResetCounter = 0;
        state_next = IDLE;
        SaveData = 1'b0;
        case(state)
        IDLE:begin
            ResetCounter = 1;
            if(StartSending==1'b1)
                state_next = SAVE_NEW_DATA;
        end
        SAVE_NEW_DATA:begin
            SaveData = 1'b1;
            state_next = ACTIVATE_UART;
        end
        ACTIVATE_UART:begin
            Tx_Start = 1'b1;
            state_next = WAITING_UART;
        end
        WAITING_UART:begin
            if(~Tx_Busy && Count==Done_Counter_Reg)
                state_next = IDLE;
            else if(~Tx_Busy && Count!=Done_Counter_Reg)
                state_next = INCREMENT_COUNTER;
            else
                state_next = WAITING_UART;
        end
        INCREMENT_COUNTER:begin
            Increment = 1'b1;
            state_next = SAVE_NEW_DATA;
        end
        default:begin
            state_next = IDLE;
            ResetCounter=1'b1;
        end
        endcase
    end
endmodule
