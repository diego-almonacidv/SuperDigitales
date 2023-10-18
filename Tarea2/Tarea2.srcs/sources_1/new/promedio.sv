`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2023 20:56:49
// Design Name: 
// Module Name: promedio
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


module promedio(
    input logic [7:0] A,B,
    output logic [7:0] Y,X
    );
    logic [8:0] suma;
    always_comb begin
        suma=A+B;
        Y=suma >> 1;
        X=suma[7:0];
    end
endmodule
