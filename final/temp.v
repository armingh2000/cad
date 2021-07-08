`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:37:36 07/04/2021 
// Design Name: 
// Module Name:    temp 
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
module temp(A,B,C,D);	 
	input D;
	
	 output reg A,B,C;
	 
	 initial begin
		A <= 0;		
		B <= 0;
		C <= 0;

	 end
	 
	 always @(D) 
	 begin
		A <= #5 1;
		B <= A + 1;
		C <= #10 B;
	 end


endmodule
