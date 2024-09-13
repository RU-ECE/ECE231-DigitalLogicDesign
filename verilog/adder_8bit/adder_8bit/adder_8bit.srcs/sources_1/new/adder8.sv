`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Author: Dov Kruger 
//////////////////////////////////////////////////////////////////////////////////

// your comment should express what your code does, consisely
// below is a single line expressed as a command in English, what I expect
// the circuit to do. You can also explain any issues or problems.
// if there is any problems, remind yourself with TODO:
// TODO: is just a convention in comments, not part of the language


// Add two 8-bit numbers.
// TODO: code does not check when value is complete
module adder8(
    input wire [7:0] a_in,
    input wire [7:0] b_in,
    input wire carry_in,
    output reg [7:0] sum_out,
    output reg carry_out
    );
    reg [8:0] temp; // temp has an extra bit for carry out
always @ *
     assign temp = a_in + b_in + carry_in;
     assign sum_out = temp[7:0];
     assign carry_out = temp[8];
endmodule
