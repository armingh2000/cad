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
module Datapath(input 			clk,
                input 			reset,
                input 			RegisterDestination,
                input 			RegisterWrite,
                input 			ALUSource,
                input 			MemoryToRegister,
                input 			PCSource,
                input [3:0] 	ALUControl,
                input [31:0] 	ReadData,
                input [31:0] 	Instruction,
                output [31:0] PC,
                output 			ZeroFlag,
                output [31:0] WriteData, 
                output [31:0] ALUResult
    );


wire [31:0] PCNext, PCplus4, PCBranch;
wire [31:0] extendedimm, extendedimmafter, MUXresult, dataone, aluop2;
wire [4:0] writereg;

// PC 

PCcontrol #(32) PCregister(clk,
                           reset, 
                           PC,
                           PCNext);

// For getting next instruction

adder #(32) PCadd4(PC, 
                   32'd4,
                   PCplus4);

// For shifting wrt sign, so it's devided by 4

slt2 shifteradd2(extendedimm,
                 extendedimmafter);

// For adding the jump amount to next instruction

adder #(32) PCaddsigned(extendedimmafter,
                        PCplus4,
                        PCBranch);

// For choosing whether to branch or not (setting PC)

mux2 #(32) branchmux(PCplus4, 
                     PCBranch, 
                     PCSource, 
                     PCNext);

// Register File 

Registerfile RF(clk,
                RegisterWrite, 
                reset, 
                Instruction[25:21], 
                Instruction[20:16], 
                writereg, 
                MUXresult, 
                dataone,
                WriteData); 

// For choosing whether to write in register file

mux2 #(5) writeopmux(Instruction[20:16],
                     Instruction[15:11],
                     RegisterDestination, 
                     writereg);

// For choosing what to write in register file

mux2 #(32) resultmux(ALUResult, 
                     ReadData, 
                     MemoryToRegister,
                     MUXresult);

// ALU

ALU alucomp(dataone, 
            aluop2, 
            ALUControl, 
            Instruction[10:6], 
            ALUResult, 
            ZeroFlag);

// For extending instruction address wrt sign

signext immextention(Instruction[15:0],
                     extendedimm);

// For choosing input to give to alu

mux2 #(32) aluop2sel(WriteData,
                     extendedimm, 
                     ALUSource, 
                     aluop2);


endmodule
