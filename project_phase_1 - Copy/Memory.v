`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:23:04 06/05/2021 
// Design Name: 
// Module Name:    Memory 
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
module Memory(clk,wen,ren,adr,din,dout);

parameter depth =128;
parameter bits = 32;
parameter width = 32;

input clk, wen, ren;
input [bits-1:0] adr;
input [width-1:0] din;

output reg[width-1:0] dout;

reg [width-1:0] Dmem [depth-1:0];
    
always @ (posedge clk) begin
	
    if (wen) 
		Dmem[adr] <= din;
	 if (ren)
		dout <= Dmem[adr]; 
end

endmodule
