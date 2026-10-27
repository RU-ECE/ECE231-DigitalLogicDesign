module ALU64(
	    input logic [63:0]  a,
	    input logic [63:0]  b,
	    input logic [3:0]  op, // 16 possible operations
	    output logic [127:0] out,
	     output logic cout, // 1=carry
	     );
   always_comb begin
      case(op)
	3'h0:;
	3'h1:;
	3'h2:;
	3'h3:;
	3'h4:;
	3'h5:;
	3'h6:;
	3'h7:;
	3'h8:;
	3'h9:;
 	3'hA:;
	3'hB:;
	3'hC:;
	3'hD:;
	3'hE:;
	3'hF:;
	3'h4:;
	3'h5:;
	default:
	  // in case you forget something...
	  out = 0;
      endcase // case (op)
   end
endmodule // ALU8

module ALU64_tb;
   logic [63:0] a, b;
   logic [127:0] out;
   logic [3:0] op;
   ALU64 uut(.a(a), .b(b), .op(op), .out(out));

/*
 unsigned
 ADD, SUB, MUL, DIV, MOD (remainder)
 Shift left  a << 52398752398; (ignore all but b[5:0] )
 Shift right  a >> 17; (ignore all but b[5:0] )

 Rotate left (a << b) | (a >> (64-b))
 Rotate right (a >> b) | (a << (64-b))
  
 AND, OR, XOR, NOT a,
 NAND, NOR, NOP (no operation)
 */

   
   initial begin
      $monitor("a=%d b=%d op=%d out=%b=%d", a, b, op, out, out);
      #1
      a = 1; b = 2; op = 0; // ADD
      #1
      op = 1; // SUB
      #1
      a = 5; b = 3;
      #1
	op = 2; // AND

      #1
	op = 3; // OR
      
	
   end
endmodule
      
      
   

