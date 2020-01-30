/* Senior Project UART Echo PowerShell Script */

param (

[int]$baudRate = $ (throw "Baud Rate is Required!"),
[string]$FPGA_Port = $(throw "FPGA Port is required in the form - COM#"),
[string]$echo_cmd = $(throw "Echo string is required!"),

[switch]$displayPorts = $false

)


// Get Port Names for current runtime - FPGA should be COM4/5
if ($displayPorts = True)
{
    [System.IO.Ports.SerialPort]::GetPortNames()
}


// Begin Echo Testing.. 

Write-Output $("Beginning FPGA Echo Testing...")

$FPGA = new-Object  System.IO.Ports.SerialPort $FPGA_Port, $baudRate, None, 8, one

assert($FPGA.IsOpen())

$FPGA.open()

$FPGA.WriteLine($echo_cmd)

$FPGA.ReadLine()

$FPGA.close()


// End of Echo testing ...


