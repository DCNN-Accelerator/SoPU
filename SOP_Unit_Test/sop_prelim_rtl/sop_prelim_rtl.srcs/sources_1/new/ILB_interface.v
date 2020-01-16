`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2019 11:44:50 PM
// Design Name: 
// Module Name: ILB_interface
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

//Interface to read line buffer values in
module ILB_interface_in
(

input clk,
input rst, 

output reg sop_to_ilb_rtr, 
output reg bytes_recieved, 

input sop_to_ilb_rts, 
input ilb_read_enable, 




input [7:0] ilb_byte_0,
input [7:0] ilb_byte_1,
input [7:0] ilb_byte_2,
input [7:0] ilb_byte_3,
input [7:0] ilb_byte_4,
input [7:0] ilb_byte_5,

output reg  [7:0] byte_0,
output reg  [7:0] byte_1,
output reg  [7:0] byte_2,
output reg  [7:0] byte_3,
output reg  [7:0] byte_4,
output reg  [7:0] byte_5


);




localparam IDLE  = 3'b0;
localparam WAIT_FOR_DATA = 3'b1;
localparam LATCH_BYTES = 3'd2 ;

reg [3:0] state; 
 
reg [2:0] ctr; 

 
always @ (posedge clk) 
begin

    if (!rst) 
        begin
        
        sop_to_ilb_rtr <= 0; 
        bytes_recieved <= 0; 
        
        byte_0 <= 0; 
        byte_1 <= 0; 
        byte_2 <= 0; 
        byte_3 <= 0; 
        byte_4 <= 0; 
        byte_5 <= 0; 
        
        
        state <= IDLE; 
        
        ctr <= 0; 
        
        end //reset block end
        
    else 
        begin
        
            case(state)
            
                IDLE: begin
                        
                    sop_to_ilb_rtr <= 0; 
                    bytes_recieved <= 0; 
                
                    byte_0 <= 0; 
                    byte_1 <= 0; 
                    byte_2 <= 0; 
                    byte_3 <= 0; 
                    byte_4 <= 0; 
                    byte_5 <= 0; 
                    
                  
                    ctr <= 0; 
                        
                        if (ilb_read_enable) 
                            state <= WAIT_FOR_DATA; 
                        else 
                            state <= IDLE; 
                        
                
                            
                      end //IDLE case end
       
                WAIT_FOR_DATA: begin
                
                                sop_to_ilb_rtr <= 0; 
                                bytes_recieved <= 0; 
                            
                                byte_0 <= 0; 
                                byte_1 <= 0; 
                                byte_2 <= 0; 
                                byte_3 <= 0; 
                                byte_4 <= 0; 
                                byte_5 <= 0; 
                
                                if (sop_to_ilb_rts)
                                    state <= LATCH_BYTES; 
                                else    
                                    state <= WAIT_FOR_DATA; 
                                    
                
                
                               end //Wait for data case end
                               
                LATCH_BYTES:    begin
                                
                                sop_to_ilb_rtr <= 0; 
                                bytes_recieved <= 1;  
                               
                                                           
                                   byte_0 <= ilb_byte_0; 
                                   byte_1 <= ilb_byte_1; 
                                   byte_2 <= ilb_byte_2; 
                                   byte_3 <= ilb_byte_3; 
                                   byte_4 <= ilb_byte_4; 
                                   byte_5 <= ilb_byte_5; 
                                
                
                                  if (ctr == 1) 
                                     state <= IDLE; 
                                  else 
                                     ctr <= ctr + 1;   
                                       
                
                
                               end //Latch Byte case end
            
            endcase
       
        end  //else-not-reset block end


end 
 

















endmodule
