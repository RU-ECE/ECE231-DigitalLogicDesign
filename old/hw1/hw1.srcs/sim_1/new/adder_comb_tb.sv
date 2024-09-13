`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Author: Dov Kruger
// Cite: Elya Kapelian
//////////////////////////////////////////////////////////////////////////////////

module adder_comb_tb();
  reg a,b,c;
  wire s_out, c_out;
  
  initial begin
    a = 0;
    b = 0;
    c = 0;
    #10 a = 1;  
  
    #10 a = 0;

    #10 b = 1;

    #10 b = 0;
    
    #10 c = 1;
  end
  
  adder_comb
    DUT
    (
      .a_in(a),
      .b_in(b),
      .c_in(c),
      .s_out(s_out),
      .c_out(c_out)
    );
  
endmodule
