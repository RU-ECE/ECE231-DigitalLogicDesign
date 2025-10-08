`timescale  1ns/100ps

module hw02_tb;
  logic [7:0] a,b;
  logic [1:0] op;
  logic [7:0] out;
  `include "common.svh"

  ALU_8bit uut(.a(a), .b(b), .op(op), .out(out));

  initial begin
    load_file("hw02.txt");
    for (int i = 0; i < 4; i++) begin
        a = read_8bit();
        b = read_8bit();
        op = read_8bit();
        #1;
        $display("a=%b, b=%b, op=%b, out=%b", a, b, op, out);        
    end
  end
endmodule