module loops();
initial
begin
  for (int i = 2; i < 10; i += 2) // i= i +2
    $display("%d", i);
  for (int i = 5; i > 0; i--)
    $display("%h", i);
//  for (int i = 0; i < 5; i--)
//    $display("%0d", i);
  for (int i = 5; i < 5; i++)
    $display("%d", i);
  for (int i = 10; i < 0; i--)
    $display("%d", i);


  for (int i = 1; i < 1000; i = i * 2)
    $display("%d", i);
  for (int i = 1; i < 1000; i *= 2)
    $display("%d", i);
  for (int i = 1; i < 1000; i = i << 1)
    $display("%d", i);
  for (int i = 100; i > 0; i = i / 3 - 1)
    $display("%d", i);
end


endmodule
