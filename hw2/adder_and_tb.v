`timescale 1ns / 1ps



module adder_and_tb;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;

	// Outputs
	wire [7:0] c;

	// Instantiate the Unit Under Test (UUT)
	adder_and uut (
		.c(c), 
		.a(a), 
		.b(b)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a = 2;
		b = 3;
		
		#300;
		 a = 2;
		 b = 4;
        
		// Add stimulus here

	end
      
endmodule

