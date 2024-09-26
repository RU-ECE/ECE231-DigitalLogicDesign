`timescale 1ns/1ns

module first_example;
  reg a, b;
  wire result;
  assign result = a & b; // AND gate

  initial begin
    $monitor("Time = %0t : a = %b, b = %b, result = %b", $time, a, b, result);
    a = 0; b = 0;
    #10 a = 0; b = 1;
    #10 a = 1; b = 0;
    #10 a = 1; b = 1;
    #10 $finish;
  end
endmodule
