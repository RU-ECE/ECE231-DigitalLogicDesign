`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Author: Dov Kruger
// 
//////////////////////////////////////////////////////////////////////////////////


module datatypes_variables_constants();
  wire bit1 = 1'b0; // assigned to single bit false. just 0 would work
  reg bit2 = 1;
  reg highz;
  logic bit3 = 0;
  logic bit4; // unassigned, therefore 
  int a = 123; // signed 32-bit integer
  int b = -100_000_000; // underscores are legal separators in constant literals
  integer c = 1_234_567_890;
  longint d = 123_456_789; // TODO: lookup specfication of long literals: 123_456_789_012_345_678;
  bit signed [13:0] sbits = -1;
  bit unsigned [4:0] ubits = 15;

  shortreal f1 = 1.2345678; // single precision float. horrible name! like float in C, or f32 in rust
  shortreal f2 = 6.022E+23; // avagadro's number, approximately...
  shortreal f3 = 1.0 / 0.0; // dividing by zero in floating point is infinity
  shortreal f4 = -1.0 / 0.0;
  shortreal f5 = 0.0 / 0.0; // 0*anything = 0, but anything /0 is infinity.
  //What happens when these two titanic forces fight it out?
  real d1 = 1.23456789012345;      // double precision float. who came up with this idiocy!
  real d2 = $sqrt(-1.0);
  real d3 = $sqrt(1.0 / 0.0); // what is the square root of infinity?
  real d4 = $sin(1.0 / 0.0); // what is the sin of infinity?

  typedef logic [2:0] alu_control; // define a type called config
  alu_control control_in; // create a name for this 3-bit value
  initial begin
    $display("bit1 = %b\n", bit1);
    $display("a= %d\n", a);
    $display("b= %h\n", b);
    $display("c= %b\n", c);
    d = d * 12345; // this should be a bigger number than 32 bits, let's see what happens 
    $display("d= %h\n", d);
    $display("sbits= %h\n", sbits);
    $display("ubits= %b\n", ubits);

    $display("f1= %f\n", f1);
    $display("f2= %f\n", f2);
    $display("f3= %f\n", f3);
    $display("f4= %f\n", f4);
    $display("f5= %f\n", f5);
    $display("specifying digits: f5= %5.2f\n", f5);
    $display("d1= %f\n", d1);
    $display("d2= %f\n", d2);
    $display("d3= %f\n", d3);
    $display("d4= %f\n", d4);

  end
endmodule
