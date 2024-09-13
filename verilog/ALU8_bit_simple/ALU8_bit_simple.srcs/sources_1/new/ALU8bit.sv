`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// AUthor: Dov Kruger
//////////////////////////////////////////////////////////////////////////////////


module alu_8bit(
    input wire [1:0] control_in,
    input wire [7:0] a_in,
    input wire [7:0] b_in,
    output reg [7:0] out
    );
    always @ *
    case (control_in)
    2'b00:    out = a_in + b_in;
    2'b01: ;
    2'b10: ;
    2'b11: ;
    endcase
    
endmodule
