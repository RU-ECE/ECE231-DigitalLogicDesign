`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Author: Dov Kruger
// cite: 
//////////////////////////////////////////////////////////////////////////////////

// A testbench has no parameters
// we are using system verilog, which has a suffix .sv
module adder_tb();
  logic clock;
  initial begin
    #5 clock = 1'b0; // wait 5n then set to zero (what is it before?)
    
    forever begin
      #5 clock = not(clock);
     end
  end
endmodule
