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
module Memory(clk,
				  writeenable,
				  readenable,
				  address,
				  datain,
				  dataout
	);

parameter depth =128;
parameter bits = 32;
parameter width = 32;

input clk, writeenable, readenable;
input [bits-1:0] address;
input [width-1:0] datain;

output reg[width-1:0] dataout;

reg [width-1:0] Dmem [depth-1:0];
    
always @ (posedge clk) begin
	
    if (writeenable) 
		Dmem[address] <= datain;
	 if (readenable)
		dataout <= Dmem[address]; 
end

endmodule
