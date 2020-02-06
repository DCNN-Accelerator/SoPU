%% Header

% Hussain Khajanchi
% DCNN Senior Project 

% FPGA Runner module

% Description - This module emulates the end-to-end functionality of the convolution hardware on the FPGA by testing the UART input/output 
% Uses MATLAB class implementations of the SoPU, ILB, and UART read/write modules to packetize image/kernel data, compute the SOP,  and to rebuild feature map data


    
%% MATLAB Implementation
function [output_test, output_real, FM_count, sopu_ctr_ret] = FPGA_Runner(img_size, kernel_size, verbose)

    %% Setup for FPGA Convolution 

  
    % Create random integer matrix for test image and random float matrix for test kernel
    test_img    = randi(255, img_size);
        
    % Zero Pad the image for full convolution
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
        
    sopu_ctr = 0;            % keeps track of when the SoPU outputs are valid 
    numFM = numel(test_img); % for same convolution, we need the number of 
    
    FM_ctr = 0; 
    
    % Need to wait
    sop_valid_threshold = (floor (kernel_size/2) * img_size) + (floor(kernel_size/2) + 1);
    
    for i = kernel_length+1:1:numel(inputUART.uart_stream)
        
        currentPixel = inputUART.readByte();
        
        SoPU_obj     = SoPU_obj.imgWindowShift(); 
        
        SoPU_obj     = SoPU_obj.imgWrite_UART(currentPixel);  
        
        curr_ilb_bytes = ILB_obj.readBytes(); 
        
        SoPU_obj = SoPU_obj.imgWrite_ILB(curr_ilb_bytes); 
        
        ILB_obj      = ILB_obj.writeByte(currentPixel); 
        
        
        currentFM = SoPU_obj.run_conv();
        
        if (sopu_ctr >= sop_valid_threshold) % this is where the sopu starts becoming valid
            
            outputUART = outputUART.writeByte(currentFM);
            FM_ctr = FM_ctr + 1; 
            
        end 
        
        
        sopu_ctr  = sopu_ctr + 1; % increment SoPU counter to keep track of valid
        
        if (inputUART.readPtr < (numel(test_img) + numel(test_kernel) )) 
            inputUART = inputUART.incrementReadPtr(); 
        end  
            

    end 
    
    % now that the input UART bytes are done, we need to keep running the SoPU until we have all the output FM values
    fms_computed_prev = FM_ctr;
    
    for i = fms_computed_prev:1:numFM
        
        SoPU_obj  = SoPU_obj.imgWindowShift(); 
        curr_ilb_bytes = ILB_obj.readBytes();
        SoPU_obj = SoPU_obj.imgWrite_ILB(curr_ilb_bytes); 
        
        currentFM = SoPU_obj.run_conv();
        
        if (outputUART.writePtr < numel(test_img))
            outputUART = outputUART.writeByte(currentFM); 
        end 
        
        FM_ctr = FM_ctr + 1; 
       
    end 
    
    
    arr = outputUART.uart_stream;
    
    assert (numel(outputUART.uart_stream) == numel(test_img)); % Checks if the 'same' convolution actually did its job
    
    if (verbose)
        % Display outputs ..
        output_real   = conv2(test_img,test_kernel,'same')

        output_test   = transpose( reshape(arr, size(test_img)) )
        
    else 
        % to not display outputs.. 
       output_real      = conv2(test_img,test_kernel,'same');

       output_test      = transpose( reshape(arr, size(test_img)) );       
        
    end 
    
   

    if (isequal(output_real,output_test))
        disp ("Test Passed!"); 
    else 
        disp ("Test Failed"); 
    end 
    
    FM_count     = FM_ctr; 
    sopu_ctr_ret = sopu_ctr;



end 
