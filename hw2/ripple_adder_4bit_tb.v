`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:25:44 05/05/2021
// Design Name:   ripple_adder_4bit
// Module Name:   E:/cad_code/hw2/ripple_adder_4bit_tb.v
// Project Name:  hw2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple_adder_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ripple_adder_4bit_tb;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg cin;

	// Outputs
	wire cout;
	wire [3:0] SUM;

	// Instantiate the Unit Under Test (UUT)
	ripple_adder_4bit uut (
		.A(A), 
		.B(B), 
		.cin(cin), 
		.cout(cout), 
		.SUM(SUM)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		A = 2;
		B = 10;
		
		#100;
		
		A = 15;
		
		#100;
		
		A = 1;
		cin = 1;
		
		#100;
		
		B = 2;
		
		#100;
		
		B = 15;
		A = 15;

	end
      
endmodule

