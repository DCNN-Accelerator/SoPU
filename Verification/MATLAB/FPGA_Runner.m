%% Header

% Hussain Khajanchi
% DCNN Senior Project 

% FPGA Runner module

% Description - This module emulates the end-to-end functionality of the convolution hardware on the FPGA by testing the UART input/output 
% Uses MATLAB class implementations of the SoPU, ILB, and UART read/write modules to packetize image/kernel data, compute the SOP,  and to rebuild feature map data


    
%% MATLAB Implementation
function [x] = FPGA_Runner(img_size, kernel_size)

    %% Setup for FPGA Convolution 

  
    % Create random integer matrix for test image and random float matrix for test kernel
    test_img    = randi(255, img_size);
    %test_kernel = rand(kernel_size);
    
    for(i = 1 : img_size)
        if(i == 1 || i == img_size)
           for(x = 1 : img_size)
               test_img((i - 1) * img_size + x) = 0;
           end
        else
            test_img((i-1) * img_size + 1) = 0;
            test_img((i-1) * img_size + img_size) = 0;
        end
    end
    test_kernel = zeros(kernel_size);
    test_kernel(((kernel_size - 1)/2 * kernel_size + (kernel_size + 1)/2)) = 1; 
    
    % Create FPGA Module Objects for full HW design emulation
    inputUART  = UART(test_img, test_kernel); 
    SoPU_obj   = SoPU(kernel_size, kernel_size); 
    ILB_obj    = ILB(kernel_size-1, img_size); 
    outputUART = UART( zeros(img_size),[] ); 
    
    disp('Image')
    test_img
    
    disp('Kernel')
    test_kernel
    
    %% Convolution Algorithm Execution
    
    %%% 
        % Algorithm for FPGA-based convolution
        
        % 1) Read UART bytes until Kernel is filled 
        
        % 2) For byte in UART:
        %    - shift SoPU image window
        %    - write uart byte to image window
        %    - write uart byte to ILB
        %    - read ILB bytes into SoPU 
        %    - compute conv and output FM value
        %    - write to output UART stream
        
        % 3) Unpack output UART stream into 2D Feature Map 
        
    
    %%%
    
  
    % Fill Kernel in SoPU
    
    kernel_length = kernel_size * kernel_size; 
    
    for i = 1:kernel_length
        
        uartByte  = inputUART.readByte();        
        SoPU_obj  = SoPU_obj.kernel_write(uartByte);     
        inputUART = inputUART.incrementReadPtr(); 
        
    end 

    % Step 2 of Convolution Algorithm
    
    sopu_ctr = 0; 
    
    for i = kernel_length+1:1:numel(inputUART.uart_stream)-1
        
        currentPixel = inputUART.readByte();
        
        SoPU_obj     = SoPU_obj.imgWindowShift(); 
        
        SoPU_obj     = SoPU_obj.imgWrite_UART(currentPixel);  
        
        curr_ilb_bytes = ILB_obj.readBytes(); 
        
        SoPU_obj = SoPU_obj.imgWrite_ILB(curr_ilb_bytes); 
        
        ILB_obj      = ILB_obj.writeByte(currentPixel); 
        
        currentFM = SoPU_obj.run_conv();
            
        outputUART = outputUART.writeByte(currentFM); 
        
        
        disp('Image')
        test_img
        
        disp('Current Image Window');
        SoPU_obj.imgWindow
        
        disp('Current ILB array'); 
        ILB_obj.ILB_ARRAY
        
        %pause(5) 
        %clc
        
        
        inputUART = inputUART.incrementReadPtr(); 
        

    end 
    
    arr = outputUART.uart_stream;
    
    x = test_img
    output_FM_actual = conv2(test_img,test_kernel,'same') 
    
    output_FM_test   = transpose(reshape(arr, [6 6]))





end 
