`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:59:59 07/04/2021 
// Design Name: 
// Module Name:    seq_detector 
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
module seq_detector(input clk,
						  input a,
						  output w 
    );
	 
	parameter  S1 		= 0,
				  S10 	= 1,
				  S101 	= 2,
				  FREEZE = 3;
				  
	reg[2:0] current_state, next_state;
	
	assign w = current_state == S101 ? 1 : 0;
	
	initial begin
		current_state <= FREEZE;
	end
	
	always @ (posedge clk) begin
		current_state <= next_state;
	end
	
	always @ (current_state or a) begin
    case (current_state)
      FREEZE : begin
        if (a) next_state = S1;
        else next_state = S10;
      end
      
      S1: begin
        if (a) next_state = FREEZE;
        else 	next_state = S10;
      end
      
      S10 : begin
        if (a) next_state = S101;
        else 	next_state = FREEZE;
      end
      
      S101 : begin
        next_state = FREEZE;
      end
    endcase
  end

endmodule
  
