`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Dov Kruger
// Cite: Help from Elya Capelian to create simplest possible example
// 
//////////////////////////////////////////////////////////////////////////////////


module adder_comb(
  input wire a_in,
  input wire b_in,
  input wire c_in,
  output wire s_out,
  output wire c_out
    );
    
  assign s_out = a_in ^ b_in ^ c_in;
  assign c_out = (a_in & b_in) | (a_in ^ b_in) & c_in;
endmodule
