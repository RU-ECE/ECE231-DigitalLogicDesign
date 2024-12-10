module ALU64_tb();
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
      $display("Error: expected %d, got %d", expected, result);
    end
  endtask

  initial begin
    test_operation(1, 2, 0, 3); // add
    test_operation(64'hFFFFFFFFFFFFFFFF, 1, 0, 0); // add (overflow)
    test_operation(3, 4, 1, 64'hFFFFFFFFFFFFFFFF); // sub (underflow)
    test_operation(64'hFFFFFFFFFFFFFFFF, 1, 1, 64'hFFFFFFFFFFFFFFFE); // sub
    test_operation(4, 5, 2, 20); // mul 4*5=20
    test_operation(3000000, 2000000, 2, 6000000000000); // mul (64 bit numbers are huge!)
    test_operation(64'h123456789ABCDEF0, 64'hFEDCBA9876543210, 3, 64'h11111110DC3A9144); // and
    test_operation(64'h5A5A5A5A5A5A5A5A, 64'hA5A5A5A5A5A5A5A5, 3, 0); // and
    test_operation(32'h5A5A5A5A, 32'hA5A5A5A5, 4, 64'h00000000FFFFFFFF); // or
    test_operation(32'h12345678, 64'h12345679, 5, 64'h0000000000000001); // xor
    test_operation(32'hFEDC4567, 64'hFEDC4567, 5, 0); // xor
    test_operation(32'h12345678, 64'h00000000, 6, 64'hFFFFFFFFEDCBA987); // not A
    // note: the above operation doesn't use the value of b at all
    // 0001 0010 0011 0100 0101 0110 0111 1010
    // left shift 1
    // 0010 0100 0110 1000 1010 1100 1111 0100
    test_operation(32'h1234567A, 1, 7, 64'h000000002468ACF4); // shift left by 1

    // 0001 0010 0011 0100 0101 0110 0111 1010
    // right shift 1
    // 0000 1001 0001 1010 0010 1011 0011 1101
    test_operation(32'h12345678, 1, 8, 64'h00000000091A2B3C); // shift right by 1
    test_operation(64'h0000000000000001, 1, 10, 64'h8000000000000000); // rotate right by 1
    test_operation(64'h0000000000000001, 2, 10, 64'h4000000000000000); // rotate right by 2
    test_operation(64'h4000000000000001, 1, 11, 64'h8000000000000002); // rotate left by 1
    test_operation(64'h4000000000000001, 2, 11, 64'h0000000000000005); // rotate left by 2
    $finish;
  end
endmodule
