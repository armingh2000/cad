`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:06:53 04/27/2021 
// Design Name: 
// Module Name:    full_adder_behavioral 
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
module full_adder_behaviral(a, b, cin, cout, s);
	input a, b, cin;
	output reg cout, s;
	reg w1, w2, w3;
	
	always @(a or b or cin)
	begin
		w1 = a^b;
		w2 = w1 & cin;
		w3 = a & b;
		cout = w2 | w3;
		s = w1 ^ cin;
	end
	
endmodule