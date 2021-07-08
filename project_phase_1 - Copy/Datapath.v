`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:18:52 06/05/2021 
// Design Name: 
// Module Name:    Datapath 
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
module Datapath(input clk,
                input reset,
                input RegDst,
                input RegWrite,
                input ALUSrc,
                input MemtoReg,
                input PCSrc,
                input [3:0] ALUControl,
                input [31:0] ReadData,
                input [31:0] Instr,
                output [31:0] PC,
                output ZeroFlag,
                output [31:0] WriteData, 
                output [31:0] ALUResult);


wire [31:0] PCNext, PCplus4, PCbeforeBranch;
wire [31:0] extendedimm, extendedimmafter, MUXresult, dataone, aluop2;
wire [4:0] writereg;

// PC 
PCcontrol #(32) PCregister(clk,reset, PC,PCNext);
adder #(32) pcadd4(PC, 32'd4 ,PCplus4);
slt2 shifteradd2(extendedimm,extendedimmafter);
adder #(32) pcaddsigned(extendedimmafter,PCplus4,PCbeforeBranch);
mux2 #(32) branchmux(PCplus4 , PCbeforeBranch, PCSrc, PCNext);

// Register File 

Registerfile RF(clk,RegWrite, reset, Instr[25:21], Instr[20:16], writereg, MUXresult, dataone,WriteData); 
mux2 #(5) writeopmux(Instr[20:16],Instr[15:11],RegDst, writereg);
mux2 #(32) resultmux(ALUResult, ReadData, MemtoReg,MUXresult);

// ALU

ALU alucomp(dataone, aluop2, ALUControl, Instr[10:6], ALUResult, ZeroFlag);
signext immextention(Instr[15:0],extendedimm);
mux2 #(32) aluop2sel(WriteData,extendedimm, ALUSrc, aluop2);


endmodule
