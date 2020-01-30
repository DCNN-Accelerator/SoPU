classdef SoPU
    
    properties
        imgWindow
        kernelPatch
        
        kernelFull
        sopValid
        
        kernelRowPtr
        kernelColPtr
        
        KERNEL_MAX_SIZE
        IM_WINDOW_MAX
        
    end 
    
    
    methods 
        
        %Define Constructor 
        function obj = SoPU(imgWindow_size, kernelPatch_size)
            
            
            assert(imgWindow_size   > 0, 'SoPU:invalidConstructorArg','Invalid Argument for Image Window Size. Please input an integer greater than 0');
            assert(kernelPatch_size > 0, 'SoPU:invalidConstructorArg','Invalid Argument for Kernel Patch Size. Please input an integer greater than 0');
             
            % Define the two member objects to be zeroed out square matrices            
            obj.imgWindow   = zeros(imgWindow_size);
            obj.kernelPatch = zeros(kernelPatch_size); 
            
            % The SoPU - when instanitated - is automatically devoid of any kernel values
            % kernelFull will be set to True once the kernel window is loaded with valid kernel data from the UART Stream
            % sopValid will be asserted when there have been enough pixel reads to fill the ILB with valid data
        
            obj.kernelFull = false; 
            obj.sopValid   = false; 
            
            % Also setting the row/col write pointers for the Kernel to 1 since MATLAB does [1-N] indexing
            
            obj.kernelRowPtr   = 1; 
            obj.kernelColPtr   = 1;
            
            %Set limits on kernel max rows/cols object fields
            obj.KERNEL_MAX_SIZE = size(obj.kernelPatch);  
            obj.IM_WINDOW_MAX   = size(obj.imgWindow); 
            
        end 
        
        
        function obj =  kernel_write(obj,inputByte)
            
            %Make sure that we aren't reading or writing to invalid kernel locations
            
            assert(obj.kernelRowPtr <= obj.KERNEL_MAX_SIZE(1),'SOPU:invalidRowIndex','Kernel row write pointer is out of bounds');
            assert(obj.kernelColPtr <= obj.KERNEL_MAX_SIZE(2),'SOPU:invalidColIndex','Kernel col write pointer is out of bounds'); 
            
            %Making sure that the kernel isnt already full..
            assert(obj.kernelFull ~= true,'SOPU:kernelFullError','The kernel is already full with data'); 
            
            obj.kernelPatch(obj.kernelRowPtr,obj.kernelColPtr) = inputByte; 
            
            
            % Logic to increment Row/Col Pointers 
            if (obj.kernelRowPtr == obj.KERNEL_MAX_SIZE(1) && obj.kernelColPtr == obj.KERNEL_MAX_SIZE(2))
                obj.kernelFull = true; 
                
            elseif (obj.kernelColPtr == obj.KERNEL_MAX_SIZE(2) && obj.kernelRowPtr < obj.KERNEL_MAX_SIZE(1))
                obj.kernelColPtr = 1; 
                obj.kernelRowPtr = obj.kernelRowPtr + 1; 
                
            else 
                obj.kernelColPtr = obj.kernelColPtr + 1;  
                
            end 
                
        end
        
        
        function obj = imgWindow_Write(obj, inputByte, rowPosition, colPosition)
            
            % Writes to the object's image window given a (rowPostion, colPosition) coordinate
            % This function is generic so that we can reuse both for ILB writes and for the direct UART writes
            
            
            assert(rowPosition <= obj.IM_WINDOW_MAX(1),'SoPU:invalidImageWindowPointer','Invalid Image Window row index'); 
            assert(colPosition <= obj.IM_WINDOW_MAX(2),'SoPU:invalidImageWindowPointer','Invalid Image Window row index'); 

            obj.imgWindow(rowPosition,colPosition) = inputByte; 
            
            
            
        end 
        
        function img_window_element = imgWindow_Read(obj, rowPosition, colPosition)
            
            % Simple getter method for getting an element from the image window
            % Takes two parameters for the row/col values respectively, and returns the value at that position if the params are valid 
            
            assert(rowPosition <= obj.IM_WINDOW_MAX(1),'SoPU:invalidImageWindowPointer','Invalid Image Window row index'); 
            assert(colPosition <= obj.IM_WINDOW_MAX(2),'SoPU:invalidImageWindowPointer','Invalid Image Window row index'); 
            
            img_window_element = obj.imgWindow(rowPosition, colPosition); 
            
        end 
        
        
        function obj = imgWindowShift(obj)
            
            % Emulates Queue-style shifting for the image window where window[k+1] = window[k]
            % The last column gets completely overwritten
            
            for i = obj.IM_WINDOW_MAX(1)-1:-1:1
                obj.imgWindow(:,i+1) = obj.imgWindow(:,i); 
               
            end 
            
              
        end 
        
        function outputFM_element = run_conv(obj)
            
            % Computes the sum-of-products operation between the kernel patch and the image window and returns the output
            
            outputFM_element = sum(sum( obj.kernelPatch .* obj.imgWindow ) ); 
            
            
        end 
        
       
    end 
    
    
end