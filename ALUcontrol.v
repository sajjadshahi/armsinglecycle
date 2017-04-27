`timescale 1ns / 1ps
module ALUcontrol(in, ALUOp, out);
	input [10:0] in;
	input [2:0] ALUOp;
	output reg [3:0] out;

	always @(ALUOp or in) begin

    case (ALUOp)
      2'b00 : out = 4'b0010;
      2'b01 : out = 4'b0111;
      2'b10 : begin
        case (in)
          11'b10001011000 : out = 4'b0010; // ADD
          11'b11001011000 : out = 4'b0110; // SUB
          11'b10001010000 : out = 4'b0000; // AND
          11'b10101010000 : out = 4'b0001; // ORR
        endcase
      end
    endcase

  end
endmodule
