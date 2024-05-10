module equal(
  input wire [1:0] a_in,
  input wire [1:0] b_in,
  output reg 	   out	     
	     );
//   a_in[1]   a_in[0]   b_in[1]   b_in[0]
   always @ *
   //   10                 11
   //   01                 00
   logic     high = (a_in[1] & b_in[1]) | (~a_in[1] & ~b_in[1]);
   logic     low = (a_in[0] & b_in[0]) | (~a_in[0] & ~b_in[0]);
   out = high & low;


   out = ((a_in[1] & b_in[1]) | (~a_in[1] & ~b_in[1])) &
         ((a_in[0] & b_in[0]) | (~a_in[0] & ~b_in[0]));

   out = ~(a_in[1] ^ b_in[1]) & ~(a_in[0] ^ b_in[0]);
endmodule // equal

//  10001     10000
module equal2(
  input wire [15:0] a_in,
  input wire [15:0] b_in,
  output reg 	   out	     
	      );
   always @ *
//     out = ~(a_in ^ b_in) == 16'b1111_1111_1111_1111;
//   out = a_in == b_in;
  end 

   
   
