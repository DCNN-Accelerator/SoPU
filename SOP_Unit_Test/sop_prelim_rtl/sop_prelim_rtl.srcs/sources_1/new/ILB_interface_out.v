`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 12:01:40 AM
// Design Name: 
// Module Name: ILB_interface_out
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


module ILB_interface_out
(

 input clk,
input rst,

input send_enable,

input [7:0] byte_to_ILB,

input sop_to_ILB_rtr,

output reg sop_to_ILB_rts,

output reg byte_sent,
output reg [7:0] uart_byte_out
);



localparam IDLE  = 3'b0;
localparam WAIT_FOR_UART = 3'b1;
localparam SEND_BYTE = 3'd2 ;

reg [3:0] state; 
 
reg [2:0] ctr;

always @ (posedge clk) 
begin

    if (!rst) 
        begin
        sop_to_ILB_rts <= 0; 
        byte_sent <= 0; 
        
        uart_byte_out <= 0; 
        
        state <= IDLE; 
        
        ctr <= 0; 
        
        end //reset block end
        
    else 
        begin
        
            case(state)
            
                IDLE: begin
                        
                        sop_to_ILB_rts <= 0; 
                        byte_sent <= 0; 
                        uart_byte_out <= 0; 
                        ctr <= 0; 
                        
                        
                        if (send_enable) 
                            state <= WAIT_FOR_UART; 
                        else 
                            state <= IDLE; 
                        
                
                            
                      end //IDLE case end
       
                WAIT_FOR_UART: begin
                                
                                sop_to_ILB_rts <= 1; 
                                byte_sent <= 0; 
                                uart_byte_out <= 0; 
                                
                
                                if (sop_to_ILB_rtr)
                                    state <= SEND_BYTE; 
                                else    
                                    state <= WAIT_FOR_UART; 
                                    
                
                
                               end //Wait for data case end
                SEND_BYTE:    begin
                                
                                   sop_to_ILB_rts <= 0; 
                                   byte_sent <= 1;  
                                   
                                   uart_byte_out <= byte_to_ILB;  
                    
                                  if (ctr == 1) 
                                     state <= IDLE; 
                                  else 
                                     ctr <= ctr + 1;   
                                                   
                               end //Latch Byte case end
            
            
            
            
            endcase
       
        end  //else-not-reset block end


end 

















endmodule
