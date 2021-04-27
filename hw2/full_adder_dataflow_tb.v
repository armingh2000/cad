`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:12:42 04/27/2021
// Design Name:   full_adder_dataflow
// Module Name:   E:/cad_code/hw2/full_adder_dataflow_tb.v
// Project Name:  hw2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: full_adder_dataflow
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module full_adder_dataflow_tb;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire cout;
	wire sum;

	// Instantiate the Unit Under Test (UUT)
	full_adder_dataflow uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.cout(cout), 
		.sum(sum)
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

