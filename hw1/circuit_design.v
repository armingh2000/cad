`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:31:31 04/24/2021 
// Design Name: 
// Module Name:    circuit_design 
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
module sr_latch(
	s, r, q, qn, clk
    );
	 input s,r, clk;
	 output q, qn;
	 
	 reg q, qn;
	 
	 always @(clk) begin
		if (clk) begin
			if(s & r) begin
				q <= 1'bx;
				qn <= 1'bx;
			end
			else begin
				q <= ~(r | qn);
				qn <= ~(s | q);
			end
		end
	 end
endmodule

module d_latch(
	d, q, qn, clk
	);
	input d, clk;
	output q, qn;
	
	sr_latch sr(.s (d), .r (~d), .q (q), .qn (qn), .clk (clk));
	
endmodule

module d_flipflop(
	d, q, qn, clk
	);
	input clk, d;
	output q, qn;
	
	always @(posedge clk)
		d_latch(.d (d), .q (q), .qn (qn), .clk (1));
	
endmodule
