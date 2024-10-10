# HW1: This is your first verilog homework!

Write an 8-bit ALU with the provided testbench
	000 = AND
	001 = OR
	010 = a'b' + ab   (either both zero or both 1 or... the same?)
        011 = 000000000   (TBD)
	100 = a AND NOT b
	101 = 000000000
	110 = 111111111
	111 = XOR

```verilog
/*
  Author: your name goes here...
  cite:  wherever you got help from
*/
module hw1_alu_tb;
  logic [7:0] a;
  logic [7:0] b;	
  logic [2:0] op; //3-bit operand

	initial begin
	  $monitor("a=%b, b=%b, op=%b, out=%b", a, b, op, out);
	  a = 8'b10101001;
	  b = 8'b11001011;
	  op = 3'b000
	#3
	  op = 3'b001
	#3
	  op = 3'b010
	#3
	  op = 3'b011
	#3
	  op = 3'b100
	#3
	  op = 3'b101
	#3
          op = 3'b110
	#3
          op = 3'b111
	#10
	  $finish;
	end	

endmodule
```	