module alu_8bit_v0_tb;
   reg [7:0] a;
   reg [7:0] b;
   reg [1:0] op;
   wire [7:0] out;   
   alu_8bit_v0 uut(.a(a), .b(b), .op(op), .out(out) );
   initial begin
      $monitor("a=%b, b=%b, op=%b, out=%b", a, b, op, out);
      
      a = 8'b 01011010;   // 01011010 & b11001001 = 
      b = 8'b11001001;                       //     01001000
      op = 2'b00;
      #5
      a = 8'b11011010;      //b =    11001001   or=   11011011
      #5	
	op = 2'b01;
     #5
       $finish;
   end
endmodule
