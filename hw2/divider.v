`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:27:53 05/06/2021 
// Design Name: 
// Module Name:    divider 
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
module divider #(parameter SIZE = 5) (start, busy, ready, a, b, q, r, clk
    );
	 input start;
	 output reg busy, ready;
	 input[SIZE-1:0] a, b;
	 output reg[SIZE-1:0] q, r;
	 input clk;

	 wire count;
	 
	 always @(posedge start) begin
		q = 0;
		r = 0;
	 end
	 
	 initial begin
		busy <= 1'b0;
		ready <= 1'b1;
	 end

	 assign count = (a - b * q) >= b;
	 
	 always @(posedge clk) begin
		if(start) begin
			if(count) begin
				q <= q + 1;
				ready <= 1'b0;
				busy <= 1'b1;
			end
			else begin
				r <= a - b * q;
				ready <= 1'b1;
				busy <= 1'b0;
			end
		end
	 end


endmodule
