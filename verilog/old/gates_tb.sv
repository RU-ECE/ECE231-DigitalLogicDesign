`timescale 1ns/1ns

module gates_tb;
  reg [7:0] a;
  reg [7:0] b;

  initial begin
    a = 8'b10010110;
    b = 8'b01110000;

    $display("a = %b", a);
    $display("b = %b", b);
    $display("a & b = %b", a & b);
    $display("a | b = %b", a | b);
  end
endmodule