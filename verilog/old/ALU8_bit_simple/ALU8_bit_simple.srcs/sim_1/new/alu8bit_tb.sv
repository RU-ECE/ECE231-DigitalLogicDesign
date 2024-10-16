`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Author: Dov Kruger
// 
//////////////////////////////////////////////////////////////////////////////////


module alu8bit_tb();
  logic [1:0] control;
  logic [7:0] a;
  logic [7:0] b;
  logic [7:0] out;
  
  alu_8bit alu(
    .control_in(control),
    .a_in(a),
    .b_in(b),
    out(out)
  );
  
  initial begin
    control = 0; // 00=add, 01 = AND 10=XOR  11 = OR

    #1
        a = 8'hA5; // 10100101 
    b = 8'h79; // 01111001
  
  end
endmodule
