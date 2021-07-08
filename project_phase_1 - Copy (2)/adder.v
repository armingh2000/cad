`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:52:12 06/05/2021 
// Design Name: 
// Module Name:    adder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module adder (a,
              b,
              y
        );

parameter n=32;

input [n-1:0] a,b;
wire [n:0] w;
output [n-1:0] y;
assign w[0]=0;
genvar i;
generate 
for(i=0;i<=n-1;i=i+1) begin:adding
        FA FA_inst(.a(a[i]),.b(b[i]), .cin(w[i]), .cout(w[i+1]), .s(y[i]));
    end
endgenerate

endmodule

module FA(input a, 
			 input b, 
			 input cin, 
			 output cout, 
			 output s
	);

assign {cout,s}=a+b+cin;

endmodule
