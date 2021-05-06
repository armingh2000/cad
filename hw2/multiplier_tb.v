`timescale 1ns / 1ps



module multiplier_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire [7:0] c;

	// Instantiate the Unit Under Test (UUT)
	multiplier uut (
		.a(a), 
		.b(b), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		a = 2;
		b = 3;
		
		#100;
		a = 7;
		b = 5;
        
		// Add stimulus here

	end
      
endmodule

