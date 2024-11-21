module ALU64_testbench();
  reg [63:0] a,b; // these are the inputs
  reg [3:0] op;   // this is the operation for the ALU
  reg [63:0] result; // this is where the answer is stored

  reg[63:0] test_input1[4];
  reg[63:0] test_input2[4];
  reg[3:0]  test_ops[4];
  reg[63:0] expected_answer[4];

  ALU64 uut(.a(a), .b(b), .op(op), .result(result), .clk(clk));

  task verify_result(input reg[63:0] testa, input reg[63:0] testb,
       input reg[3:0] testop,
      input reg[63:0] expected);
    a = testa;
    b = testb;
    op = testop;
    #5
    if (expected !== result) begin
      $display("Error: expected %d, got %d", expected, actual);
    end
  endtask

  initial begin
   // test_input1 = {0, 1, 64'hFFFFFFFFFFFFFFFF}; 
   test_input1[0] = 0;
   test_input1[1] = 1;
   test_input1[2] = 64'hFFFFFFFFFFFFFFFF;
   test_input1[3] = 5;
   test_input2[0] = 0;
   test_input2[1] = 2;
   test_input2[2] = 64'hFFFFFFFFFFFFFFFF;
   test_input2[3] = 8;

    a = 1; b = 2; op = 0; clk = 1; // add
    // verify that result = 3
   #5
    clk = 0;
    a = 64'hFFFFFFFFFFFFFFFF; b = 1; op = 0; clk = 1; // add
    // verify that result = 0
   #5
   clk = 1;
   #5
   clk = 0;
