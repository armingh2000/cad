`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:28:18 04/25/2021 
// Design Name: 
// Module Name:    fifo 
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
module fifo(input_data, output_data, read, write, ready, overflow, clk
    );
	 input[7:0] input_data;
	 input read, write, clk;
	 output reg[7:0] output_data;
	 output reg ready, overflow;
	 
	 integer read_ptr = 0, write_ptr = 0, filled = 0;
	 reg[7:0] ram[7:0];
	 
	 
	 always @(posedge clk) begin
		 if(read) begin
			output_data <= ram[read_ptr];
			read_ptr = read_ptr + 1;
			if(read_ptr == 64)
				read_ptr = 0;
			filled = filled - 1;
			if(overflow)
				overflow <= 1'b0;
		 end
		 if(write) begin
			if(~overflow) begin
				ram[write_ptr] <= input_data;
				write_ptr = write_ptr + 1;
				filled = filled + 1;
				if(filled == 64)
					overflow <= 1'b1;
			end
		 end
	 end
	

endmodule
