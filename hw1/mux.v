`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:39:02 04/20/2021 
// Design Name: 
// Module Name:    mux 
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
module mux(
    input [31:0] inp1,
    input [31:0] inp2,
    input [31:0] inp3,
    input [31:0] inp4,
    output reg [31:0] out,
    input sel1,
    input sel2
    );
always @ (sel1 or sel2 or inp1 or inp2 or inp3 or inp4)
begin
	if (sel1 == 1'b0 && sel2 == 1'b0)
		out <= inp1;
	else if (sel1 == 1'b0 && sel2 == 1'b1)
		out <= inp2;
	else if (sel1 == 1'b1 && sel2 == 1'b0)
		out <= inp3;
	else
		out <= inp4;
end
endmodule
