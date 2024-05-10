`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Author: Dov Kruger 
//////////////////////////////////////////////////////////////////////////////////


module statements();
  logic a;
  initial begin
    a = 1;
    if (a) begin
      $display("a is true!\n");
    end
    
    a = 0;
    if (!a) begin
      $display("not a is true\n");
    end
    
    // count 10 times, flipping bit a each time
    for (int i = 0; i < 10; i++) begin
      a = !a;
      $display("a=%d ", a);
    end
  end
endmodule
