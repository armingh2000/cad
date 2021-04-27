`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:10:45 04/27/2021
// Design Name:   full_adder_behaviral
// Module Name:   E:/cad_code/hw2/full_adder_behavioral_tb.v
// Project Name:  hw2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: full_adder_behaviral
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module full_adder_behavioral_tb;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire cout;
	wire s;

	// Instantiate the Unit Under Test (UUT)
	full_adder_behaviral uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.cout(cout), 
		.s(s)
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

