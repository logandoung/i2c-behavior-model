`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2018 11:55:36 PM
// Design Name: 
// Module Name: test
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


module i2c_main_test;

    reg clk;
    reg reset;
    
    wire i2c_sda;
    wire i2c_scl;
    
i2c_main uut (
    .clk (clk),
    .reset(reset),
    .i2c_sda(i2c_sda),
    .i2c_scl(i2c_scl)
    );
    
initial begin
    clk = 0;
    forever begin
    clk = #1 ~clk;
    end
    end
    
    initial begin
    
    reset = 1;
    
    #10;
    
    reset = 0;
    
    #100;
    $finish;
    end
    
    endmodule

