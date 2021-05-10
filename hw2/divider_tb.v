`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:20:25 05/06/2021
// Design Name:   divider
// Module Name:   E:/cad_code/hw2/divider_tb.v
// Project Name:  hw2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: divider
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module divider_tb;

	// Inputs
	reg start;
	reg [4:0] a;
	reg [4:0] b;
	reg clk;

	// Outputs
	wire busy;
	wire ready;
	wire [4:0] q;
	wire [4:0] r;

	// Instantiate the Unit Under Test (UUT)
	divider uut (
		.start(start), 
		.busy(busy), 
		.ready(ready), 
		.a(a), 
		.b(b), 
		.q(q), 
		.r(r), 
		.clk(clk)
	);
	
	always #5 clk = ~clk;

	initial begin
		// Initialize Inputs
		start = 0;
		a = 0;
		b = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		a = 7;
		b = 3;
		start = 1;
		
		#100;
		
		b = 7;
		start = 0;
		
		#100;
		
		start = 1;
		
		#100;
		
		a = 30;
		b = 5;

	end
      
endmodule

