`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:47:22 07/04/2021
// Design Name:   temp
// Module Name:   E:/cad_code/final/temp_tb.v
// Project Name:  final
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: temp
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module temp_tb;

	// Inputs
	reg D;

	// Outputs
	wire A;
	wire B;
	wire C;

	// Instantiate the Unit Under Test (UUT)
	temp uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D)
	);

	initial begin
		// Initialize Inputs
		D = 0;

		// Wait 100 ns for global reset to finish
		#20;
		
		D = 1;
        
		// Add stimulus here

	end
      
endmodule

