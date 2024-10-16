/*
 Author: _______
 Cite:
*/

module ALU_8bit(input wire[7:0] a, input wire[7:0] b, input wire[2:0] op, output reg[7:0] out);
always @(*) begin
case(op)
3'b000: out = a + b;
  // add in your code to make the ALU works as shown
3'b001:          ; // sub
3'b010:          ; // and
3'b011:          ; // or
3'b100:          ; // xor
3'b101:          ; // not
3'b110:          ; // shl
3'b111: ; // shr
default: out = 0;
endcase
end
endmodule
