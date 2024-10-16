module mux2_8bit_tb;

logic [7:0] a, b;
logic sel;
wire [7:0] y;

mux2_8bit uut( .a(a), .b(b), .sel(sel), .y(y) );

initial begin
   $monitor("At time %0t, a = %h, b = %h, sel = %h, y = %h", $time, a, b, sel, y);
   a = 8'b00000000;
   b = 8'b00000001;
   sel = 0;
   #5
   sel = 1;
   #5
   $finish;
end
endmodule