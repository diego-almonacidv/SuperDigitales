`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2023 19:02:50
// Design Name: 
// Module Name: divisor_frecuencia
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


module divisor_frecuencia(
    input clk,
    input rst_n,
    output out
    );
    
    parameter CLK_RATE = 100000000;
    parameter OFF_MS = 1;    
    
    parameter ON_CYCLES = 1;
    parameter OFF_CYCLES = CLK_RATE*OFF_MS/1000;
    
    logic [31:0] counter;
    logic on_off_flag;
       
    always_ff@(posedge clk, negedge rst_n) begin
       if (rst_n == 0) begin
           counter <= 0;
           on_off_flag <= 0;
           
       end
       else begin
           if (on_off_flag) begin
               if (counter < ON_CYCLES-1) begin
                   counter <= counter + 1;
                   
               end  
               else begin
                   counter <= 0;
                   on_off_flag <= ~on_off_flag;
                   
               end
           end
           else begin
               if (counter < OFF_CYCLES-1) begin
                   counter <= counter + 1;
                   
               end  
               else begin
                   counter <= 0;
                   on_off_flag <= ~on_off_flag;
               
               end
           end  
       end
    end
    
    assign out = on_off_flag;
        
endmodule