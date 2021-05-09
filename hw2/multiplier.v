`timescale 1ns / 1ps

module xor_3(output d,input a,input b,input c);
	wire w1, w2, w3, w4;
	nand(w1, !a, !b, c);
	nand(w2, !a, b, !c);
	nand(w3, a, !b, !c);
	nand(w4, a, b, c);
	nand(d, w1, w2, w3, w4);
endmodule

module xor_2(output c,input a,input b);
	wire w1, w2;
	nand(w1, !a, !b);
	nand(w2, a, b);
	and(c, w1, w2);
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
	fulladder_and f1 (a[0], b[0], 0, c[0], cout[0]);
	fulladder_and f2 (a[1], b[1], cout[0], c[1], cout[1]);
	fulladder_and f3 (a[2], b[2], cout[1], c[2], cout[2]);
	fulladder_and f4 (a[3], b[3], cout[2], c[3], cout[3]);
	fulladder_and f5 (a[4], b[4], cout[3], c[4], cout[4]);
	fulladder_and f6 (a[5], b[5], cout[4], c[5], cout[5]);
	fulladder_and f7 (a[6], b[6], cout[5], c[6], cout[6]);
	fulladder_and f8 (a[7], b[7], cout[6], c[7], cout[7]);	
endmodule


module multiplier(input [3:0] a, input [3:0] b, output [7:0] c);
	wire [7:0] s1=0;
	wire [7:0] s2=0;
	wire [7:0] s3=0;
	wire [7:0] s4=0;
	
	wire [7:0] ans1=0;
	wire [7:0] ans2=0;
	
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
	adder_and a3 (c, ans2, s4);
	

endmodule
