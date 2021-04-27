`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:27:42 04/27/2021 
// Design Name: 
// Module Name:    full_adder 
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
module full_adder_dataflow(a, b, cin, cout, sum
    );
	 
	 input a, b, cin;
	 output cout, sum;
	 
	 wire[1:0] result;
	 
	 assign result = {1'b0,a} + {1'b0,b} + {1'b0,cin};
	 assign sum = result[0];
	 assign cout = result[1];
	 
endmodule
