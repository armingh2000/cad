`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:55:02 06/05/2021 
// Design Name: 
// Module Name:    mux2 
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
module mux2 (d0,
				 d1,
				 s,
				 y
	);

parameter n=32;

input [n-1:0] d0;
input [n-1:0] d1;
input s;
output [n-1:0] y;

assign y = s ? d1 : d0;

endmodule
