`timescale 1ns/10ps
module ALU_8bit_tb();
  reg [7:0] a;
  reg [7:0] b;
  reg [2:0] op;
  wire [7:0] out;
  string op_str[8] = {"add", "sub", "and", "or", "xor", "not", "shl", "shr"};
  ALU_8bit uut(.a(a), .b(b), .op(op), .out(out));
  initial begin
    integer i;
    a = 13;
    b = 37;
    op = 0;
    for (i = 0; i < 8; i++) begin
      #3
      $display("op=%b out=%b", op, out);
      op++;
    end
  #3
    a = 22;
    b = 19;
    op = 0;
    for (i = 0; i < 8; i++) begin
      #3
      $display("op=%b out=%b", op, out);
      op++;
    end
    $finish;
  end
endmodule