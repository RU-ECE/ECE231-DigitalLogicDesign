module hello();
endmodule // hello

module a();
endmodule // a
   
module adder(
  input wire a_in,
  input wire b_in,
  input wire carry_in,
  output reg carry_out,
  output reg s_out	     
);
   logic     x = 1;
   logic [7:0] y = 8'b10100100;//  128 + 32 + 4 = 164
   logic [31:0] z = 32'd92; // 0000000000000000000000001011100

   unsigned int w = 123_456;
   int 		q = -928_276_123;
   
   always @ *
   s_out = a_in ^ b_in ^ carry_in;
   
endmodule

/*
 legal identifiers
 a      hello   abc123
 hello$   show_me_the$$$
 thisIsATest   my_module  MODULE
 hello_there  _testing  _testing123
  
 illegal identifiers
 123       $1123      module   input output wire reg
   
 */  


// fill in the blank module
module abc(
	   ______ wire [7:0] a_in;



	   out = a_in ____ b_in;
