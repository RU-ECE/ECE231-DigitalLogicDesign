`timescale 10ns/100ps

module clock_tb;
  logic a, b, c;
  logic F;
  initial begin
    $dumpfile("clock_tb.vcd");
    $dumpvars(0, clock_tb);
    a = 1;
    b = a;
    c = 0;
    #200
      $finish;
  end

  always begin
    #5            // T = 100ns  f = 1/T  10MHz  duty cycle=50%
    a = ~a;
  end
  
  always begin
    #12
    b = ~b;
  end

  always begin
    #6
    c = ~c;
    #18
    c = ~c;
  end

endmodule
