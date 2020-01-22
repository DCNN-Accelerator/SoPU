`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2020 02:31:11 PM
// Design Name: 
// Module Name: inner_mod_tb
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


module inner_mod_tb();

/*

Testbench for the "inner module" of the SoPU (the Kernel Bank, the Image Window, and the SoPU multipliers)


- Procedure 1: 
    - Fill the Kernel Bank with Q0.7 FP Values
    - Assert that kernel_full = 1
    - Check that the UUT values are equal to the holder array values in the testbench

- Procedure 2: 
    - Fill the Image Window with Valid Pixel Data
    - Assert that the Image Window matches the pixel data in the testbench 

- Procedure 3: 
    - Stream the kernel and image window values to the SoPU unit
    - Assert that the output computation matches the value computed by MATLAB
    
*/









endmodule
