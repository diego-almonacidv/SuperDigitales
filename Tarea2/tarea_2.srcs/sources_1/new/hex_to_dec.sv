`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2023 13:08:50
// Design Name: 
// Module Name: hex_to_dec
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


module hex_to_dec(
    input logic [17:0] hex_in,
    output logic [23:0] dec_out
    );
    
    always_comb begin
        for(int i=1;i<26115;i++) begin
            if ((hex_in>=(i-1)*10)&&(hex_in<(i)*10))
                dec_out = hex_in + (6*(i-1));
        end
    end
endmodule