module ALU64_testbench();
  reg [63:0] a,b; // these are the inputs
  reg [3:0] op;   // this is the operation for the ALU
  reg [63:0] result; // this is where the answer is stored
  reg clk;
  ALU64 uut(.a(a), .b(b), .op(op), .result(result), .clk(clk));

  task test_operation(input reg[63:0] testa, input reg[63:0] testb,
       input reg[3:0] testop,
      input reg[63:0] expected);
    a = testa;
    b = testb;
    op = testop;
    #5
    clk = 1;
    #5
    clk = 0;
    if (expected !== result) begin
      $display("Error: expected %d, got %d", expected, actual);
    end
  endtask

  initial begin
    test_operation(1, 2, 0, 3); // add
    test_operation(64'hFFFFFFFFFFFFFFFF, 1, 0, 0); // add (overflow)
    test_operation(3, 4, 1, 64'hFFFFFFFFFFFFFFFF); // sub
    // A = 1010
    // 5 = 0101
    test_operation(64'h5A5A5A5A5A5A5A5A, 64'hA5A5A5A5A5A5A5A5, 3, 0); // and
 end
endmodule