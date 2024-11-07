/*
Java
  int[] a = new int[1024]; // array   a[0] ... a[1023]     a[9000] throws exception

C/C++
  int a[1024]; // a[0] ... a[1023]    a[9000] ERROR!!!

*/


module datatypes_tb;
  reg a;       // 1-bit unsigned number
  reg [3:0] b; // 4 bit unsigned number
  reg signed [3:0] c; // 4-bit signed number
  integer x; // 32-bit signed
  real w;
  reg [15:0] y[5:0]; // array of 32 16-bit registers unsigned

initial begin
  a = 0;
  b = 0;
  b = 15; // 4'hF
  c = -8;
  c = 7;
  //  -128..127
  x =   -2147483648;
  x = 2147483647; 
end
endmodule
