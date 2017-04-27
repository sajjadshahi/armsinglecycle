`timescale 1ns / 1ps
module main(clk, reset, pcIn, pcOut, addOut, instruction, reg2Loc, jump, memRead, memtoReg, memWrite, ALUSrc, regWrite, beq, bne,
  ALUOp, mux5ToReg, mux32ToReg, readData1, readData2, extend, addIn, jumpExtend, jumpAddress, addRst, ALUcontrol, mux32ToALU, zero, ALURst
  , readMemoryData, branchTomux32, mux32Tomux32);
	input clk, reset;
	parameter four=4;
	output wire [31:0]pcIn;
	output wire [31:0]pcOut;
	output wire [31:0]addOut;
	output wire [31:0]instruction;
	output wire reg2Loc, jump, memRead, memtoReg, memWrite, ALUSrc, regWrite, beq, bne;
	output wire [2:0] ALUOp;
	output wire [4:0]mux5ToReg;
	output wire [31:0]mux32ToReg;
	output wire [31:0]readData1;
	output wire [31:0]readData2;
	output wire [31:0]extend;
	output wire [31:0]addIn;
	output wire [27:0]jumpExtend;
	output wire [31:0]jumpAddress;
	output wire [31:0]addRst;
	output wire [3:0]ALUcontrol;
	output wire [31:0]mux32ToALU;
	output wire zero;
	output wire [31:0]ALURst;
	output wire [31:0]readMemoryData;
	output wire branchTomux32;
	output wire [31:0]mux32Tomux32;

	pc pc1(clk, reset, pcIn, pcOut);
	add add1(pcOut, four, addOut);
	instrMemory instrMemory1(pcOut, instruction);
	control control1(instruction[31:21], reg2Loc, jump, memRead, memtoReg, ALUOp, memWrite, ALUSrc, regWrite, beq, bne);
	mux5 mux51(instruction[20:16], instruction[4:0], reg2Loc, mux5ToReg);
	registers registers1(instruction[9:5], mux5ToReg, instruction[4:0], mux32ToReg, readData1, readData2, regWrite, clk);
	signExtend signExtend1(instruction[15:0], extend);
	shiftLeft2 shiftLeft21(extend, addIn);
	shiftLeft226 shiftLeft2261(instruction[25:0], jumpExtend);
	assign jumpAddress={addOut[31:28], jumpExtend};
	add add2(addOut, addIn, addRst);
	ALUcontrol ALUcontrol1(instruction[31:21], ALUOp, ALUcontrol);
	mux32 mux321(readData2, extend[31:0], ALUSrc, mux32ToALU);
	ALU ALU1(readData1, mux32ToALU, ALUcontrol, zero, ALURst);
	dataMemory dataMemory1(ALURst, readData2, memWrite, memRead, readMemoryData, clk);
	branch branch1(beq, bne, zero, branchTomux32);
	mux32 mux322(ALURst, readMemoryData, memtoReg, mux32ToReg);
	mux32 mux323(addOut, addRst, branchTomux32, mux32Tomux32);
	mux32 mux324(mux32Tomux32, jumpAddress, jump, pcIn);
endmodule
