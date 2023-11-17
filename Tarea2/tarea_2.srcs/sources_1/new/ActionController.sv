`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2023 17:47:22
// Design Name: 
// Module Name: ActionController
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


module ActionController(
    input logic [4:0] Action,
    output logic StartSending, SaveData, ShowSum,
    output logic [9:0] DoneCounter,
    output logic [4:0] OpCode,
    input logic clk, rst
    );
    logic Valid;
    logic PotentialShowSum;
    always_comb begin
    case(Action)
    5'b00001:
        begin
        StartSending=1'b1;
        DoneCounter=10'd1023;
        SaveData=1'b0;
        OpCode=3'b100;
        PotentialShowSum=1'b0;
        Valid=1'b1;
        end
    5'b00010:
        begin
        StartSending=1'b1;
        DoneCounter=10'd1023;
        SaveData=1'b0;
        OpCode=3'b011;
        PotentialShowSum=1'b0;
        Valid=1'b1;
        end
    5'b00100:
        begin
        StartSending=1'b1;
        DoneCounter=10'd1023;
        SaveData=1'b1;
        OpCode=3'b000;
        PotentialShowSum=1'b0;
        Valid=1'b1;
        end
    5'b01000:
        begin
        StartSending=1'b1;
        DoneCounter=10'd1023;
        SaveData=1'b1;
        OpCode=3'b001;
        PotentialShowSum=1'b0;
        Valid=1'b1;
        end
    5'b10000:
        begin
        StartSending=1'b1;
        DoneCounter=10'd2;
        SaveData=1'b1;
        OpCode=3'b010;
        PotentialShowSum=1'b1;
        Valid=1'b1;
        end
    default:
        begin
        StartSending=1'b0;
        DoneCounter=10'd0;
        SaveData=1'b0;
        OpCode=3'b000;
        PotentialShowSum=1'b0;
        Valid=1'b1;
        end
    endcase
    end
    
    always_ff @(posedge clk) begin
    if(rst)
        ShowSum = 0;
    else
        ShowSum = PotentialShowSum;
    end
endmodule
