`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:15:59 04/27/2021
// Design Name:   full_adder_structural
// Module Name:   E:/cad_code/hw2/full_adder_structural_tb.v
// Project Name:  hw2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: full_adder_structural
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module full_adder_structural_tb;

	// Inputs
	reg a;
	reg b;
	reg cin;
	wire s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	full_adder_structural uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.s(s), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

		// Wait 10 ns for global reset to finish
		#10;
        
		// Add stimulus here
		a = 1;
		
		#10
		
		b = 1;
		
		#10
		
		cin = 1;
		
		#10
		
		a = 0;
		b = 0;
		cin = 0;


	end
      
endmodule

