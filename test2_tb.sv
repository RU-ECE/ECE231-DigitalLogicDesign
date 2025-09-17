module test2_tb;
  logic a;
  logic b = 1;
  logic c = a ^ b;
  logic [3:0] x = 4'b1010;
  logic [3:0] y = 4'b0111;
  //                0010
  logic [3:0] ans1 = x & y;
  logic [3:0] ans2 = x ^ y;
  //                1101
  initial begin
    $display("%b", c);
    $display("ans1=%b", ans1);
    $display("ans2=%b", ans2);
  end

endmodule