/*
  Author: Andy Yang
  Cite: Dov Kruger told me exactly what to do 
*/
module ALU_8bit(
  input logic [7:0] a,
  input logic [7:0] b,
  input logic [1:0] op, // op=0 AND, op=1 OR, op=2 add, op=3 NOT A
  output logic [7:0] out
);

always @(*) begin
  case (op)
    2'b00: out = a & b; // replace with AND
    2'b01: out = a | b; // replace with OR
    2'b10: out = a + b; // replace with add
    2'b11: out = ~a; // replace with NOT A
    default: out = 8'bx; // optional safety
  endcase
end
endmodule
