`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:55:30 06/05/2021
// Design Name:   SCC
// Module Name:   E:/cad_code/project_phase_1/SCC_tb.v
// Project Name:  project_phase_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SCC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SCC_tb;

	// Inputs
	reg clk;
	reg reset;

	// Instantiate the Unit Under Test (UUT)
	SCC uut (
		.clk(clk), 
		.reset(reset)
	);
	
	always #50 clk=!clk;

	initial begin
		$dumpfile("dump.vcd"); $dumpvars;
		// Initialize Inputs
		clk = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		repeat(17) begin
			reset=0;
			#100;
		end
      $finish;
  	end
      
endmodule

