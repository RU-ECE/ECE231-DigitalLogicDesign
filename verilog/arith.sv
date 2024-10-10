module arith;
   reg [2:0] a;
   integer 	     age;
   
   initial begin
      $monitor("a=%d, bin=%b", a, a);

      a = 7; // 111
      #3
      a = a + 1;
      #3
	age = 58 * 365 * 24 * 60 * 60;
      $display("age=%d", age);
      #3
	age = 68 * 365 * 24 * 60 * 60;
      $display("age=%d", age);
      #3
	age = 69 * 365 * 24 * 60 * 60;
      $display("age=%d", age);
      
	$finish;

   end
endmodule

      
