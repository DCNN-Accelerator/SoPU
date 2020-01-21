`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/16/2020 02:27:18 PM
// Design Name: 
// Module Name: kernel_bank
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


module kernel_bank
#
(parameter KERNEL_SIZE = 49)

(

input clk, 
input rst, 

input [7:0] new_kernel, //tethered with enable signal 
input kernel_write_enable,

//Output Kernels - streamed all 49 in parallel for maximum throughput
output [7:0] kernel_reg_0,
output [7:0] kernel_reg_1,
output [7:0] kernel_reg_2,
output [7:0] kernel_reg_3,
output [7:0] kernel_reg_4,
output [7:0] kernel_reg_5,
output [7:0] kernel_reg_6,
output [7:0] kernel_reg_7,
output [7:0] kernel_reg_8,
output [7:0] kernel_reg_9,
output [7:0] kernel_reg_10,
output [7:0] kernel_reg_11,
output [7:0] kernel_reg_12,
output [7:0] kernel_reg_13,
output [7:0] kernel_reg_14,
output [7:0] kernel_reg_15,
output [7:0] kernel_reg_16,
output [7:0] kernel_reg_17,
output [7:0] kernel_reg_18,
output [7:0] kernel_reg_19,
output [7:0] kernel_reg_20,
output [7:0] kernel_reg_21,
output [7:0] kernel_reg_22,
output [7:0] kernel_reg_23,
output [7:0] kernel_reg_24,
output [7:0] kernel_reg_25,
output [7:0] kernel_reg_26,
output [7:0] kernel_reg_27,
output [7:0] kernel_reg_28,
output [7:0] kernel_reg_29,
output [7:0] kernel_reg_30,
output [7:0] kernel_reg_31,
output [7:0] kernel_reg_32,
output [7:0] kernel_reg_33,
output [7:0] kernel_reg_34,
output [7:0] kernel_reg_35,
output [7:0] kernel_reg_36,
output [7:0] kernel_reg_37,
output [7:0] kernel_reg_38,
output [7:0] kernel_reg_39,
output [7:0] kernel_reg_40,
output [7:0] kernel_reg_41,
output [7:0] kernel_reg_42,
output [7:0] kernel_reg_43,
output [7:0] kernel_reg_44,
output [7:0] kernel_reg_45,
output [7:0] kernel_reg_46,
output [7:0] kernel_reg_47,
output [7:0] kernel_reg_48,


output reg kernel_full
);

//Verilog Array Bank for storing kernel values 
reg [7:0] kernel_regs [48:0]; 


//Acts as a counter and a write pointer.. every time a new kernel value is written in, the counter gets incremented 
// and the next kernel value will go into the next kernel spot

// i.e for the first write, the kernel_write_ptr == 0, so the first kernel will get written to kernel_regs[kernel_write_ptr] | where kernel_write_ptr = 0
// for the next write, it will get written at kernel_write_ptr == 1, and so on

//The kernel bank will get consistently assigned to the output wire modules (i.e output [7:0] kernel_reg_{}) so the multiplier block
//can pull it at whim

reg [5:0] kernel_write_ptr;

integer i;  

always @ (posedge clk or negedge rst)

    begin
        
        if (!rst) //Reset Initialization
            begin
                
                kernel_write_ptr <= 0; 
                
                for (i = 0; i < 49; i = i +1)
                    begin
                        kernel_regs[i] <= 0;     
                    end
                
                
            end
    
    else 
    
        begin
        
        /*
        if (enable) 
            - check if kernel is full
                - if kernel is full (aka write_ptr == 48)
                    - assign kernel_full = 1
                    
                - if kernel is not full
                    - write new_kernel to kernel_regs[kernel_write_ptr]
                    - increment kernel_write_ptr by 1
       else 
            - hold kernel as is
        
        
        
        */
        
        if (kernel_write_enable)
            begin
            
                if (kernel_write_ptr == 48)
                    kernel_full <= 1; 
                else
                    begin
                        kernel_regs[kernel_write_ptr] <= new_kernel; 
                        kernel_write_ptr <= kernel_write_ptr + 1; 
                    end 
            
            
            end  //if kernel_enable block end
      
        else 
        
            //Holder logic, if kernel_write_enable != 1, hold kernel regs as is
            begin
            
                for (i = 0; i < 49; i = i + 1) 
                begin
                    kernel_regs[i] <= kernel_regs[i];
                end 
             
            
            end 
                    
        end 




end //clocked block end


//Continous assignment for output wires

assign kernel_reg_0 = kernel_regs[0] ;
assign kernel_reg_1 = kernel_regs[1] ;
assign kernel_reg_2 = kernel_regs[2] ;
assign kernel_reg_3 = kernel_regs[3] ;
assign kernel_reg_4 = kernel_regs[4] ;
assign kernel_reg_5 = kernel_regs[5] ;
assign kernel_reg_6 = kernel_regs[6] ;
assign kernel_reg_7 = kernel_regs[7] ;
assign kernel_reg_8 = kernel_regs[8] ;
assign kernel_reg_9 = kernel_regs[9] ;

assign kernel_reg_10 = kernel_regs[10] ;
assign kernel_reg_11 = kernel_regs[11] ;
assign kernel_reg_12 = kernel_regs[12] ;
assign kernel_reg_13 = kernel_regs[13] ;
assign kernel_reg_14 = kernel_regs[14] ;
assign kernel_reg_15 = kernel_regs[15] ;
assign kernel_reg_16 = kernel_regs[16] ;
assign kernel_reg_17 = kernel_regs[17] ;
assign kernel_reg_18 = kernel_regs[18] ;
assign kernel_reg_19 = kernel_regs[19] ;

assign kernel_reg_20 = kernel_regs[20] ;
assign kernel_reg_21 = kernel_regs[21] ;
assign kernel_reg_22 = kernel_regs[22] ;
assign kernel_reg_23 = kernel_regs[23] ;
assign kernel_reg_24 = kernel_regs[24] ;
assign kernel_reg_25 = kernel_regs[25] ;
assign kernel_reg_26 = kernel_regs[26] ;
assign kernel_reg_27 = kernel_regs[27] ;
assign kernel_reg_28 = kernel_regs[28] ;
assign kernel_reg_29 = kernel_regs[29] ;

assign kernel_reg_30 = kernel_regs[30] ;
assign kernel_reg_31 = kernel_regs[31] ;
assign kernel_reg_32 = kernel_regs[32] ;
assign kernel_reg_33 = kernel_regs[33] ;
assign kernel_reg_34 = kernel_regs[34] ;
assign kernel_reg_35 = kernel_regs[35] ;
assign kernel_reg_36 = kernel_regs[36] ;
assign kernel_reg_37 = kernel_regs[37] ;
assign kernel_reg_38 = kernel_regs[38] ;
assign kernel_reg_39 = kernel_regs[39] ;

assign kernel_reg_40 = kernel_regs[40] ;
assign kernel_reg_41 = kernel_regs[41] ;
assign kernel_reg_42 = kernel_regs[42] ;
assign kernel_reg_43 = kernel_regs[43] ;
assign kernel_reg_44 = kernel_regs[44] ;
assign kernel_reg_45 = kernel_regs[45] ;
assign kernel_reg_46 = kernel_regs[46] ;
assign kernel_reg_47 = kernel_regs[47] ;
assign kernel_reg_48 = kernel_regs[48] ;




endmodule
