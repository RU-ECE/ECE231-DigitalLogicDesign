`timescale 1ns/10ps

module clock_tb;
  logic a, b, c;
  logic F;
  initial begin
    $dumpfile("clock_tb.vcd");
    $dumpvars(0, clock_tb);
    a = 1;
    b = 0;
    c = 0;
    #5
    a = 0;
    #200
      $finish;
  end

  always begin
    #5
    a = ~a;
  end
  
  always begin
    #12
    b = ~b;
  end

endmodule
