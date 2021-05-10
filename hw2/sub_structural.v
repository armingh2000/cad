`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:54:12 05/10/2021 
// Design Name: 
// Module Name:    sub_structural 
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

module sub_structrual(
    input [3:0] a,
    input [3:0] b,
    input cin,
    input sub,
    output [3:0] s,
    output cout
    );

	wire [2:0] c;
	wire ci_complement;
	wire [3:0] b_complement;
	
	xor (cin_complement, sub, cin);
	xor (b_complement[0], sub, b[0]);
	xor (b_complement[1], sub, b[1]);
	xor (b_complement[2], sub, b[2]);
	xor (b_complement[3], sub, b[3]);
	full_adder_structural(a[0], b_complement[0], cin_complement, s[0], c[0]);
	full_adder_structural(a[1], b_complement[1], cin_complement, s[1], c[1]);
	full_adder_structural(a[2], b_complement[2], cin_complement, s[2], c[2]);
	full_adder_structural(a[3], b_complement[3], cin_complement, s[3], cout);

endmodule

