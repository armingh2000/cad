`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:05:34 07/04/2021 
// Design Name: 
// Module Name:    seq_mult 
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
module mult(a, b, start, clk, r, done
    );
	input [7:0] a,b;
	input start, clk;
	output [15:0] r;
	output done;
	reg [7:0] abuf, bbuf;
	reg [15:0] r;
	reg [15:0]    A;
	reg [31:0]    B;
	reg [4:0] r_b; 
	wire ready = !r_b;

	initial r_b = 0;

	always @( posedge clk )

		if( ready && start ) begin

		  r_b = 16;
		  r = 0;
		  B = { 16'd0, b };
		  A = a;
		  
		end else if( r_b ) begin

		  if( A[0] == 1'b1 ) r = r + B;

		  A = A >> 1;
		  B = B << 1;
		  r_b = r_b - 1;

		end
endmodule


   
