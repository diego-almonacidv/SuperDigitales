`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2023 14:38:56
// Design Name: 
// Module Name: hex_to_7seg
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


module hex_to_7seg(
    input logic [3:0] In,
    output logic [6:0] Out
    );
    always@(*) begin
        case(In)
            0: Out = 7'b1000000;
            1: Out = 7'b1111001;
            2: Out = 7'b0100100;
            3: Out = 7'b0110000;
            4: Out = 7'b0011001;
            5: Out = 7'b0010010;
            6: Out = 7'b0000010;
            7: Out = 7'b1111000;
            8: Out = 7'b0000000;
            9: Out = 7'b0010000;
            'hA: Out = 7'b0001000;
            'hB: Out = 7'b0000011;
            'hC: Out = 7'b1000110;
            'hD: Out = 7'b0100001;
            'hE: Out = 7'b0000110;
            'hF: Out = 7'b0001110;
            default: Out = 7'b1000000;
        endcase
    end
endmodule
