`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Author: Dov Kruger
// Create Date: 10/31/2023 01:16:11 PM
//////////////////////////////////////////////////////////////////////////////////


// your testbench does not take any parameters!
module adder_tb();
logic clock; // easier to assign, use instead of wire
logic reset_n;

logic [7:0] input_a, input_b;
logic enable;

logic [7:0] output_c;
logic data_valid;

initial begin
    clock <= 1'b0; // value =0 b means binary size = 1 bit
    //    8'b0100    16'hFE2    16'o7726 = 16'b0000111_111_010_110
    forever
        #5 clock <= !clock; //flip the clock after 5 time units.  Therefore it is 10 MHz clock.
end 


endmodule




//wire foo; //wires must be set using assign
//reg bar;

