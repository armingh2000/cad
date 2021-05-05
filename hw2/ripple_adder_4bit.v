`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:06:55 05/05/2021 
// Design Name: 
// Module Name:    ripple_adder_4bit 
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

module ripple_adder_4bit(A, B, cin, cout, SUM
    );
	 input[3:0] A, B;
	 output[3:0] SUM;
	 input cin;
	 output cout;
	 
	 genvar i;
	 wire[4:0] carry;
	 assign carry[0] = cin;
	 assign cout = carry[3];
	 
	 generate
		for (i=0; i<4; i=i+1) begin : full_adders
			full_adder_dataflow fad(A[i], B[i], carry[i], carry[i+1], SUM[i]);
		end
	 endgenerate

endmodule
