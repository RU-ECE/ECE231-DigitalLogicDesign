`timescale 1ns / 1ns
/*
  Author: Dov Kruger
*/

module alu32(
    input wire [2:0] control_in,
    input wire [31:0] a_in,
    input wire [31:0] b_in,
    output reg [31:0] out
    );
    always @ *
    case(control_in)
    3'b000: out = a_in + b_in;
    3'b001: out = a_in - b_in;
    3'b010: out = a_in & b_in;
    default: out = 0; 
    endcase
endmodule
