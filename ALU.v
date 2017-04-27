`timescale 1ns / 1ps
module ALU(in1, in2, control, zero, out);
	input [31:0] in1;
	input [31:0] in2;
	input [3:0] control;
	output zero;
	output reg [31:0]out;

	always @(control or in1 or in2) begin
	case (control)
		4'b0000 : out = in1 & in2;
		4'b0001 : out = in1 | in2;
		4'b0010 : out = in1 + in2;
		4'b0110 : out = in1 - in2;
		4'b0111 : out = in2;
		4'b1100 : out = ~(in1 | in2);
			endcase
	end
	assign zero=(out==0);
endmodule
