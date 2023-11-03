`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Author: Dov Kruger
// cite: 
//////////////////////////////////////////////////////////////////////////////////

// A testbench has no parameters
// we are using system verilog, which has a suffix .sv
module adder_tb();
  logic clock;
  logic clock2;
  logic result;
  and_thing 
    a1 (.a(clock), .b(clock2), .out(result) );
  initial begin
    #5 clock = 1'b0; // wait 5n then set to zero (what is it before?)
      
      /*
      c code: anything that isn't 0 is TRUE
       int  x = 0;
             x = !x; // x = 1
             x = !x; // x = 0
             x = 15;
             x = !x; // x = 0
       int x = 0xCA; // 1100 1010
       x = ~x;           // 0011 0101
      
      */
    forever begin
//      #5 clock = !clock; // clock = NOT clock
        #5 clock = ~clock;
     end     
  end
  
  initial begin
     clock2 = 0; // 1'b0
       forever begin
       #8 clock2 = ~clock; // bitwise NOT use this for more than one bit    
     end
  end
  
endmodule
