`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:22:34 06/01/2021 
// Design Name: 
// Module Name:    ALU 
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
module ALU( input [31:0] a, 
            input [31:0] b,
            input [3:0] func,
            input [4:0] shamt,
            output reg [31:0] y, 
            output reg zero
	);

always @ (*) begin

    case (func)
        4'b0000: y = a + b;                             // ADD
        4'b0001: y = a - b;                             // SUB
        4'b0010: y = a & b;                             // AND
        4'b0011: y = a | b;                             // OR
        4'b0100: y = a ^ b;                             // XOR
        4'b0101: y = b << shamt;                        // SLL
        4'b0110: y = b >> shamt;                        // SRL
        4'b0111: y = $signed($signed(b) >>> shamt);     // SRA
        4'b1000: y = {b[15:0], 16'b0};                  // LUI
    endcase
         zero = (y==8'b0);
     end
endmodule
