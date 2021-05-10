`timescale 1ns / 1ps



module multiplier_tb;

	// Inputs
	reg [3:0] num1;
	reg [3:0] num2;

	// Outputs
	wire [7:0] c;

	// Instantiate the Unit Under Test (UUT)
	multiplier uut (
		.num1(num1), 
		.num2(num2), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		num1 = 0;
		num2 = 0;
		
		#100;
		num1 = 2;
		num2 = 3;

		#100;
		num1 = 7;
		num2 = 7;
		
		#100;
		num1 = 11;  //-5
		num2 = 2;
		
		#100;
		num1 = 12;  //-4
		num2 = 13;   //-3
       

	end
      
endmodule

