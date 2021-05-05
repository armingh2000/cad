`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:44:57 05/05/2021 
// Design Name: 
// Module Name:    carry_lookahead_adder 
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
module carry_lookahead_adder_16(a, b, cin, cout, sum
    );
	 input[15:0] a, b;
	 input cin;
	 output[15:0] sum;
	 output cout;
	 
	 wire carry[4:0];
	 assign carry[0] = cin;
	 assign cout = carry[4];
	 
	 genvar i;
	 
	 generate
		 for(i=0; i<16; i=i+4) begin : carry_lookahead_adders
			carry_lookahead_adder_4 cla4(a[i+3:i], b[i+3:i], carry[i/4], carry[i/4+1], sum[i+3:i]);
		 end
	 endgenerate

endmodule
