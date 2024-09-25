`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Author: Dov Kruger
// Create Date: 10/31/2023 12:37:41 PM
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////

// this is a single-line comment
/*
  this is a c-style
  multi-line
  comment
  
  an identifier is a name for something
  identifiers start with a letter or underscore _
  identifiers continue with any number of letters, underscore, digits, $
  examples
  a123     123a   a_long_name   thisIsMyCamelCaseName
  WTF?   
  input0  INPUT
  
  keywords are not legal identifiers
  case sensitive
  there is no difference between 1 space and n spaces
  
  There are 4 values for most variables: 0, 1, x (unknown), z (high impedance)
*/
module adder(   
    input wire a,
    input wire b,
    input wire c_in,
    output reg c_out,
    output reg s
    );
    /* 
    comment in here
     does not work...
     
     a   b   c_in    c_out     s
     0   0   0         0            0
     0   0   1         0           1
     0   1   0         0            1
     0   1   1         1           0
     1   0   0         0            1
     1   0   1         1           0
     1   1   0         1            0
     1   1   1         1            1
    */
//    always @(posedge clock or negedge reset_n)
//    begin
/*
     s <= xor(a,b,c_in); // xor(xor(a, b), c_in)
//        s <= a + b + c_in;
     c_out <=
       or(and(xor(a,b),
                    c_in),
            and(a,b));     
   */ 
//    end
endmodule
