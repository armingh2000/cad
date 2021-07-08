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
           input reset
    );

wire ALUSource, RegisterDestination, MemoryToRegister, MemoryRead, Zero, PCSource, RegisterWrite, MemoryWrite;                
wire [3:0] ALUControl;
wire [31:0] Instruction, WriteData, PC, ReadData, ALUResult;


// Instruction Memory

PCmemory instmem(PC,
                 Instruction);

// Control Unit

Control contr(Instruction[31:26], 
              Instruction[5:0], 
              Zero,MemoryToRegister,
              MemoryWrite,
              ALUSource, 
              RegisterDestination, 
              RegisterWrite, 
              MemoryRead, 
              PCSource, 
              ALUControl);

// Data Memory

Memory datamem(clk,
               MemoryWrite,
               MemoryRead,
               ALUResult, 
               WriteData, 
               ReadData);

// Datapath

Datapath dp(clk, 
            reset, 
            RegisterDestination, 
            RegisterWrite, 
            ALUSource,
            MemoryToRegister ,
            PCSource, 
            ALUControl, 
            ReadData, 
            Instruction, 
            PC, 
            Zero, 
            WriteData, 
            ALUResult);


endmodule