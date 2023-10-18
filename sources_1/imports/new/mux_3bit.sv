`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2023 15:02:46
// Design Name: 
// Module Name: mux_3bit
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


module mux_3bit(
    input logic [3:0] A,B,C,D,E,F,G,H,
    input logic [2:0] Sel,
    output logic [3:0] Out
    );
    always@(*) begin
        case(Sel)
            0: Out = A;
            1: Out = B;
            2: Out = C;
            3: Out = D;
            4: Out = E;
            5: Out = F;
            6: Out = G;
            7: Out = H;
        endcase
    end
endmodule
