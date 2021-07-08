`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:06:08 06/05/2021 
// Design Name: 
// Module Name:    Registerfile 
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
module Registerfile (input clk,
                    input wen, 
                    input reset,
                    input [4:0] reg1,
                    input [4:0] reg2,
                    input [4:0] wreg,
                    input [31:0] wdata,
                    output [31:0] data1, 
                    output [31:0] data2); 
                    
                    
reg [31:0] register [31:0];

assign data1 = register[reg1];
assign data2 = register[reg2];

integer i;

initial begin
    for (i=1; i<32; i=i+1) begin
         register[i] <= 32'd0;
    end
end
    
always @(posedge clk)
begin
    register[0]=0;
    if(reset) for(i = 0; i < 32; i = i + 1) register[i] = 32'd0;
    else if (wen)
        if(wreg != 0) register[wreg]= wdata;
    
end

endmodule
