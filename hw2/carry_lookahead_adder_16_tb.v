`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:03:29 05/06/2021
// Design Name:   carry_lookahead_adder_16
// Module Name:   E:/cad_code/hw2/carry_lookahead_adder_16_tb.v
// Project Name:  hw2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: carry_lookahead_adder_16
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module carry_lookahead_adder_16_tb;

	// Inputs
	reg [15:0] a;
	reg [15:0] b;
	reg cin;

	// Outputs
	wire cout;
	wire [15:0] sum;

	// Instantiate the Unit Under Test (UUT)
	carry_lookahead_adder_16 uut (
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

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		a = 2;
		b = 10;
		
		#100;
		
		a = 15;
		
		#100;
		
		a = 1;
		cin = 1;
		
		#100;
		
		b = 2;
		
		#100;
		
		b = 15;
		a = 15;
		
		#100;
		
		a = 512;
		b = 512;
		cin = 0;
		
		a = 16'b1000000000000000;
		b = 16'b1000000000000000;
		cin = 1;

	end
      
endmodule

