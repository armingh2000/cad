`timescale 1ns / 1ps

module xor_3(output d,input a,input b,input c);
	wire w1, w2, w3, w4;
	nand(w1, ~a, ~b, c);
	nand(w2, ~a, b, ~c);
	nand(w3, a, ~b, ~c);
	nand(w4, a, b, c);
	nand(d, w1, w2, w3, w4);
endmodule

module xor_2(output c,input a,input b);
	wire w1, w2;
	nand(w1, ~a, ~b);
	nand(w2, a, b);
	and(c, w1, w2);
endmodule

module absolute_4(output [3:0] b, input [3:0] a, input sign);
	wire [3:0] w;
	wire [3:0] cout;
	//negate a (if sign == 1)
	xor_2 x1 (w[0], a[0], sign);
	xor_2 x2 (w[1], a[1], sign);
	xor_2 x3 (w[2], a[2], sign);
	xor_2 x4 (w[3], a[3], sign);
	// add a with sign
	fulladder_and f1 (w[0], 1'b0, sign, b[0], cout[0]); 
	fulladder_and f2 (w[1], 1'b0, cout[0], b[1], cout[1]); 
	fulladder_and f3 (w[2], 1'b0, cout[1], b[2], cout[2]); 
	fulladder_and f4 (w[3], 1'b0, cout[2], b[3], cout[3]); 
endmodule

module absolute_8(output [7:0] b, input [7:0] a, input sign);
	wire [7:0] w;
	wire [7:0] cout;
	//negate a (if sign == 1)
	xor_2 x1 (w[0], a[0], sign);
	xor_2 x2 (w[1], a[1], sign);
	xor_2 x3 (w[2], a[2], sign);
	xor_2 x4 (w[3], a[3], sign);
	xor_2 x5 (w[4], a[4], sign);
	xor_2 x6 (w[5], a[5], sign);
	xor_2 x7 (w[6], a[6], sign);
	xor_2 x8 (w[7], a[7], sign);
	// add a with sign
	fulladder_and f1 (w[0], 1'b0, sign, b[0], cout[0]); 
	fulladder_and f2 (w[1], 1'b0, cout[0], b[1], cout[1]); 
	fulladder_and f3 (w[2], 1'b0, cout[1], b[2], cout[2]); 
	fulladder_and f4 (w[3], 1'b0, cout[2], b[3], cout[3]); 
	fulladder_and f5 (w[4], 1'b0, cout[3], b[4], cout[4]); 
	fulladder_and f6 (w[5], 1'b0, cout[4], b[5], cout[5]); 
	fulladder_and f7 (w[6], 1'b0, cout[5], b[6], cout[6]); 
	fulladder_and f8 (w[7], 1'b0, cout[6], b[7], cout[7]); 
endmodule

module fulladder_and(input a, input b, input cin, output s, output cout);
	wire w1, w2, w3;
	xor_3 x1 (s, a, b, cin);
	nand(w1, a, b);
	nand(w2, a, cin);
	nand(w3, b, cin);
	nand(cout, w1, w2, w3);
	
endmodule

module adder_and(output [7:0] c,input [7:0] a,input [7:0] b);
	wire [7:0] cout; 
	fulladder_and f1 (a[0], b[0], 1'b0, c[0], cout[0]);
	fulladder_and f2 (a[1], b[1], cout[0], c[1], cout[1]);
	fulladder_and f3 (a[2], b[2], cout[1], c[2], cout[2]);
	fulladder_and f4 (a[3], b[3], cout[2], c[3], cout[3]);
	fulladder_and f5 (a[4], b[4], cout[3], c[4], cout[4]);
	fulladder_and f6 (a[5], b[5], cout[4], c[5], cout[5]);
	fulladder_and f7 (a[6], b[6], cout[5], c[6], cout[6]);
	fulladder_and f8 (a[7], b[7], cout[6], c[7], cout[7]);	
endmodule


module multiplier(input [3:0] num1, input [3:0] num2, output [7:0] c);
	wire [7:0] s1=8'b0000????;
	wire [7:0] s2=8'b000????0;
	wire [7:0] s3=8'b00????00;
	wire [7:0] s4=8'b0????000;
	
	wire [7:0] ans1;
	wire [7:0] ans2;
	wire [7:0] ans3;
	
	wire [3:0] a;
	wire [3:0] b;
	
	wire sign;
	
	// get multiplication sign
	xor_2 sign_xor (sign, num1[3], num2[3]);
	
	// absolute numbers
	absolute_4 abs1 (a, num1, num1[3]);
	absolute_4 abs2 (b, num2, num2[3]);
	
	
	// calcute multiple of numbers
	and h1 (s1[0], b[0], a[0]);
	and h2 (s1[1], b[0], a[1]);
	and h3 (s1[2], b[0], a[2]);
	and h4 (s1[3], b[0], a[3]);
	
	
	and h5 (s2[1], b[1], a[0]);
	and h6 (s2[2], b[1], a[1]);
	and h7 (s2[3], b[1], a[2]);
	and h8 (s2[4], b[1], a[3]);

	and h9 (s3[2], b[2], a[0]);
	and h10 (s3[3], b[2], a[1]);
	and h11 (s3[4], b[2], a[2]);
	and h12 (s3[5], b[2], a[3]);

	and h13 (s4[3], b[3], a[0]);
	and h14 (s4[4], b[3], a[1]);
	and h15 (s4[5], b[3], a[2]);
	and h16 (s4[6], b[3], a[3]);
	
	
	adder_and a1 (ans1, s1, s2);
	adder_and a2 (ans2, ans1, s3);
	adder_and a3 (ans3, ans2, s4);
	
	absolute_8 abs3 (c, ans3, sign);

endmodule
