`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:31:07 06/01/2021 
// Design Name: 
// Module Name:    Control 
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
module Control(input [5:0]           Opcode, 
               input [5:0]           Func,
               input                 Zero,
               output reg 	     MemtoReg,
               output reg            MemWrite,
               output reg            ALUSrc,
               output reg            RegDst,
               output reg            RegWrite,
	       output reg            MemRead,
               output 		     PCSrc,
               output reg  [3:0]     ALUControl
               );
               
reg [7:0] temp;
reg Branch,B;

always @(*) begin 

    case (Opcode) 
        6'b000000: begin                          // R-type
                    temp <= 8'b11000000;        

                    case (Func)
                    6'b100000: ALUControl <= 4'b0000;    // ADD
                    6'b100010: ALUControl <= 4'b0001;    // SUB
                    6'b100100: ALUControl <= 4'b0010;    // AND
                    6'b100101: ALUControl <= 4'b0011;    // OR
                    6'b100110: ALUControl <= 4'b0100;    // XOR
                    6'b000000: ALUControl <= 4'b0101;    // SLL
                    6'b000010: ALUControl <= 4'b0110;    // SRL
                    6'b000011: ALUControl <= 4'b1000;    // SRA
						  
                endcase

            end

        6'b100011: begin                          // LW
                        temp <= 8'b10100101;
                        ALUControl <= 4'b0000;
                    end

        6'b101011: begin                          // SW
                         temp <= 8'b00101000;      
                         ALUControl <= 4'b0000;
                    end  

        6'b000100: begin                          // BEQ
                         temp <= 8'b00010000;      
                        ALUControl <= 4'b0001; 
                    end      

        6'b000101: begin                          // BNE
                        temp <= 8'b00010010;  
                        ALUControl <= 4'b0001; 
                    end

        6'b001000: begin                          // ADDI
                        temp <= 8'b10100000;  
                        ALUControl <= 4'b0000; 
                    end  

        6'b001100: begin                          // ANDI
                        temp <= 8'b10100000;  
                        ALUControl <= 4'b0010; 
                    end 

        6'b001101: begin                          // ORI
                        temp <= 8'b10100000;  
                        ALUControl <= 4'b0011; 
                    end  

        6'b001110: begin                          // XORI
                        temp <= 8'b10100000;  
                        ALUControl <= 4'b0100; 
                    end       
                        
        6'b001111:  begin                         // LUI
                        temp <= 8'b10100000;  
                        ALUControl <= 4'b1000; 
                    end          
        default:   temp <= 12'bxxxxxxxxxxxx;      // NOP
    endcase
   

    
    {RegWrite,RegDst,ALUSrc,Branch,MemWrite,MemtoReg,B,MemRead} = temp;

end 

assign PCSrc = Branch & (Zero ^ B);

endmodule

