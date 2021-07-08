`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:01:11 07/04/2021
// Design Name:   seq_detector
// Module Name:   E:/cad_code/final/seq_detector_tb.v
// Project Name:  final
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seq_detector
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module seq_detector_tb;

	// Inputs
	reg clk;
	reg a;

	// Outputs
	wire w;

	// Instantiate the Unit Under Test (UUT)
	seq_detector uut (
		.clk(clk), 
		.a(a), 
		.w(w)
	);
	
	always #10 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		a = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		@(posedge clk) a <= 1;
		@(posedge clk) a <= 0;
		@(posedge clk) a <= 1;	// pattern is 101
		@(posedge clk) a <= 1; 		
		@(posedge clk) a <= 0;
		@(posedge clk) a <= 0;
		@(posedge clk) a <= 1;
		@(posedge clk) a <= 1;
		@(posedge clk) a <= 0;
		@(posedge clk) a <= 1;	// pattern is 101
		@(posedge clk) a <= 1; 
			  
		#100 $finish;
	end
      
endmodule

