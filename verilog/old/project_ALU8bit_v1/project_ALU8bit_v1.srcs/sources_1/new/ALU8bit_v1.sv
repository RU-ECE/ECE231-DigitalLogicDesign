`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Author: Dov Kruger
// cite: I had help from the entire class to do this!
//////////////////////////////////////////////////////////////////////////////////

module ALU8bit_v1(
    input wire [2:0] op_in,
    input wire [7:0] a_in,
    input wire [7:0] b_in,
    output reg [7:0] out
   );
   always @ *
       case (op_in)
       3'b000: // add
            out = a_in + b_in;
       3'b001: // sub
            out = a_in - b_in;
       3'b010: // a AND b
            out = a_in & b_in;
       3'b011: ;// a OR b
       3'b100: ;// NOT a
       3'b101: ;// a AND NOT b
       3'b110: ;// a XOR b
       3'b111: ;// NOT (a XOR b)
       endcase
      //assign out = a_in + b_in;
      //out = a_in + b_in;
      //out <= a_in + b_in; 
      
endmodule

/*
    & AND
    |  OR
    ^  XOR
    ~  bitwise NOT    DO NOT USE !

*/