module nand_tb;
  reg a, b;
  wire y;    
  nand_gate uut (  // instantiate (create) the NAND gate 
    .a(a),
    .b(b),
    .y(y)
  );
  initial begin
    a = 0; b = 0; #1 $display("NAND(0,0) = %b", y);
    a = 0; b = 1; #1 $display("NAND(0,1) = %b", y);
    a = 1; b = 0; #1 $display("NAND(1,0) = %b", y);
    a = 1; b = 1; #1 $display("NAND(1,1) = %b", y);
    $finish;
  end
endmodule
