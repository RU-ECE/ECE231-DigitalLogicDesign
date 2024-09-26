module datatypes_overview_tb;
  reg [7:0] a;
  reg [15:0] b;
  logic signed [15:0] c;
  logic signed [31:0] d;
  logic signed [63:0] e;

initial begin
  a = 8'hAA;
  b = 16'h5555;
  c = 16'hFFFF;
  d = 123;
  e = 64'h1234567812345678;

  $display("byte (8-bit):      %b", a);
  $display("shortint (16-bit): %b", b);
  $display("shortint (16-bit): %b", c);
  $display("int (32-bit):      %d", d);
  $display("longint (64-bit):  %h", e);
  $finish;
end
endmodule
