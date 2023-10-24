`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2023 20:20:02
// Design Name: 
// Module Name: abs_res
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


module abs_res(
    input logic [7:0] A,B,
    output logic [7:0] Y
    );
    always_comb begin
    if (A>B)
        Y=A-B;
    else
        Y=B-A;
    end
endmodule
