`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:13:27 04/27/2021 
// Design Name: 
// Module Name:    full_adder_structural 
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
module full_adder_structural(a, b , cin, s, cout
    );
	 input a, b, cin;
	 output cout, s;
	 wire w1, w2, w3;
	 
	 xor (w1, a, b);
	 and (w2, w1, cin);
	 and (w3, a, b);
	 or (cout, w2, w3);
	 xor (s, w1, cin);

endmodule
