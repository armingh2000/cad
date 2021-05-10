`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:34:44 05/09/2021 
// Design Name: 
// Module Name:    dff 
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
module dff(d, reset, set, enable, q, q_n, clk
    );
	 
	 input d, reset, set, enable, clk;
	 output q, q_n;
	 
	 reg tmp;
	 
	 always @(posedge clk, reset) begin
		if(reset) begin
			tmp <= 1'b0;
		end
		else if(set) begin
			tmp <= 1'b1;
		end
		else begin
			if(enable) begin
				tmp <= d;
			end
			else begin
				tmp <= 'bZ;
			end
		end
	 end
	 
	 assign q = enable ? tmp : 'bZ;
	 assign q_n = ~q;


endmodule
