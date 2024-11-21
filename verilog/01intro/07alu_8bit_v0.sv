module alu_8bit_v0
  (input wire [7:0] a,
   input wire [7:0]  b,
   input wire [1:0]  op,
   output reg [7:0] out);

always @(*) begin
  case (op)
    2'b00: out = a&b;
    2'b01: out = a|b;
    2'b10: out = a^b;
    2'b11:out = ~a; 
    default: out = 0;
    endcase
end
endmodule
