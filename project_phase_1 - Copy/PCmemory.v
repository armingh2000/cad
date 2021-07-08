`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:28:19 06/05/2021 
// Design Name: 
// Module Name:    PCmemory 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module PCmemory(adr,dout);

parameter depth =256;
parameter bits = 32;
parameter width = 32;


input [bits-1:0] adr;
output [width-1:0] dout;

reg [width-1:0] Imem[depth-1:0];
    
initial
    $readmemh("InstructionMemory.mem", Imem);
    
  assign dout= Imem[adr/4]; 



endmodule