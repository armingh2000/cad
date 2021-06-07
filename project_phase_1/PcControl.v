`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:48:48 06/05/2021 
// Design Name: 
// Module Name:    PCcontrol 
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
module PCcontrol (clk, rst, q,d);

parameter n=32;

input clk,rst;
input [n-1:0] d;
output reg [n-1:0] q;

always @ (posedge clk)

    if(!rst) q<=d;
    else q<=0;
    
endmodule
