module hello();
  logic x;
 // reg x; // unsigned, 1 bit  (0 or 1)
  reg z;
  //wire y;
  //logic z;
  //int w;
initial
begin
   z = 1;
   x = z;
    x = 3; // x=1
    //   <  <= ==  >  >=  !=


  x <= 0; // asynchronous assign
//  y <= 1;
  if (x == 3) begin
    $display("hello");
    $display("x is equal to 3");
  end else
    $display("x is NOT equal to 3");

  for (int i = 0; i < 3; i=i+1)
    $display("%0d", i);
end


endmodule
