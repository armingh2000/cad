`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:59:29 06/05/2021 
// Design Name: 
// Module Name:    signext 
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

module signext( input  [15:0] a,
                output [31:0] y 
                );

    assign y = { {16{a[15]}} , a };
    
endmodule
