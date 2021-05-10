`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:44:25 05/09/2021
// Design Name:   dff
// Module Name:   E:/cad_code/quiz1/dff_tb.v
// Project Name:  quiz1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dff_tb;

	// Inputs
	reg d;
	reg reset;
	reg set;
	reg enable;
	reg clk;

	// Outputs
	wire q;
	wire q_n;

	// Instantiate the Unit Under Test (UUT)
	dff uut (
		.d(d), 
		.reset(reset), 
		.set(set), 
		.enable(enable), 
		.q(q), 
		.q_n(q_n), 
		.clk(clk)
	);
	
	always #10 clk = ~clk;

	initial begin
		// Initialize Inputs
		d = 0;
		reset = 0;
		set = 0;
		enable = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset = 1;
		
		#100;
		
		reset = 0;
		set = 1;
		
		#100;
		
		enable = 1;
		set = 0;
		d = 0;
		
		#100;
		
		d = 1;
		
		#100;
		
		enable = 0;

	end
      
endmodule

