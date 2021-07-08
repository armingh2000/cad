`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:49:26 06/05/2021 
// Design Name: 
// Module Name:    SCC 
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
module SCC(input clk,
                input reset);
                
wire [31:0] PC, Instr, ReadData, WriteData, ALUResult;
wire RegDst,RegWrite, ALUSrc, MemRead, MemtoReg, PCSrc , Zero, MemWrite;
wire [3:0] ALUControl;

Datapath datapathcomp(clk, reset, RegDst,RegWrite, ALUSrc,MemtoReg ,
                     PCSrc,ALUControl,ReadData, Instr, PC, Zero, 
                     WriteData,ALUResult);


Control controller(Instr[31:26], Instr[5:0], Zero,MemtoReg,MemWrite,
                        ALUSrc, RegDst, RegWrite, MemRead, PCSrc, ALUControl);


Memory dmem(clk,MemWrite,MemRead,ALUResult, WriteData, ReadData);

PCmemory imem(PC,Instr);

endmodule