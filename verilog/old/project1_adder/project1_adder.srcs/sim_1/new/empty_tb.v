`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Author: Dov Kruger
// cite: I received MASSIVE HELP from Elya Kapelian
// Create Date: 11/01/2023 05:36:32 PM
// 
//////////////////////////////////////////////////////////////////////////////////


module adder_tb();
    reg clock;
    initial begin
    // = is blocking assignment
        clock = 1'b0;
        
       
        forever
          #5 clock = !clock;
    end
endmodule
