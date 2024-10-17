`timescale 1ns/10ps
module ALU_8bit_tb();
  reg [7:0] a;
  reg [7:0] b;
  reg [2:0] op;
  wire [7:0] out;
  string op_str[8];
  ALU_8bit uut(.a(a), .b(b), .op(op), .out(out));
  initial begin
    integer i;
    op_str[0] = "add";
    op_str[1] = "sub";
    op_str[2] = "and";
    op_str[3] = "or ";
    op_str[4] = "xor";
    op_str[5] = "not"; // A
    op_str[6] = "shl"; // A shl B[2:0]
    op_str[7] = "shr"; // A shl B[2:0]
    a = 13;
    b = 37;
    op = 0;
    for (i = 0; i < 8; i++) begin
      #3
      $display("%s op=%b out=%b", op_str[op], op, out);
      op++;
    end
  #3
    a = 22;
    b = 19;
    op = 0;
    for (i = 0; i < 8; i++) begin
      #3
      $display("%s op=%b out=%b", op_str[op], op, out);
      op++;
    end
    $finish;
  end
endmodule