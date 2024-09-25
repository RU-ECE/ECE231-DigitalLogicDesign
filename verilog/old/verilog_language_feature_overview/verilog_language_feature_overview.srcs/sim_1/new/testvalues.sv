`timescale 1ns / 1ns
/*
  Author: Dov Kruger
*/

module testvalues();
  int test_values[] = {0, 1, 2, 3, 4, 15, 23, 32'h80, 32'hff, 256, 300, 512, 1024, 4095, 
                        32'hffff, 32'h10000, 32'h20000, 32'h40000, 32'h80000,
                        32'hfffff, 32'hffffff, 32'hfffffff, 32'hffffffff};
  int a,b;
             
  initial begin
    foreach (test_values[i]) begin
      a = test_values[i];
      foreach (test_values[j]) begin
        b = test_values[j];
      end
    end
  end
endmodule
