module ALU8(
	    input logic [7:0]  a,
	    input logic [7:0]  b,
	    input logic [2:0]  op, // 8 possible operations
	    output logic [7:0] out);
   always_comb begin
      case(op)
	3'b000:   out = a + b;
	3'b001:   out = a - b;
	3'b010:   ;
	3'b011:   ;
	3'b100:   ;
	3'b101:   ;
	3'b110:   ;
	3'b111:   ;
	default:
	  // in case you forget something...
	  out = 0;
      endcase // case (op)
   end
endmodule // ALU8

module ALU8_tb;
   logic [7:0] a, b, out;
   logic [2:0] op;
   ALU8 uut(.a(a), .b(b), .op(op), .out(out));
   
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
      
      
   

