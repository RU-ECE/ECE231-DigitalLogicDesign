`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Dov Kruger
//////////////////////////////////////////////////////////////////////////////////

module adder8_tb();
  logic [7:0] a;
  logic [7:0] b;
  logic [7:0] sum;
  logic carry;
  
  adder8 a1(
    .a_in(a),
    .b_in(b),
    .carry_in(0),
    .sum_out(sum),
    .carry_out(carry)  
  );
  
  initial begin
    // count from 1 to 255, then stop as it overflows back to 0
    b = 8'ha5;
    for (a = 1; a != 0; a++) begin
      #1;
      $display("a= %h, b = %h, sum= %h\n", a, b, sum);        
    end 
  end
endmodule
