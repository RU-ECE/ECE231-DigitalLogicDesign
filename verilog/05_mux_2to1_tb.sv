/*
 Author: Dov Kruger
 cite: no help
 Example of a 2:1 one-bit mux
 The output y = either a or b depending on the selector input sel
 if sel = 0 then y = a otherwise y = b
 */
module mux_2to1_tb;
   logic a, b;
   logic sel;
   wire  y;

   mux_2to1 uut( .a(a), .b(b), .sel(sel), .y(y) );

   initial begin
      $monitor("At time %0t, a = %h, b = %h, sel = %h, y = %h", $time, a, b, sel, y);
   a = 0;
   b = 1;
   sel = 0;
   #5
   sel = 1;
   #5
   $finish;
end
   
endmodule
