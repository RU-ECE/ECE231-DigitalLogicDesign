/*
    2B OR ~2B = FF
2B=     0010 1011
~2B=    1101 0100
-----------------
        1111 1111

0000 = 0
0001 = 1
0010 = 2
0011 = 3
0100 = 4
0101 = 5
0110 = 6
0111 = 7
1000 = 8
1001 = 9
1010 = A
1011 = B
1100 = C
1101 = D
1110 = E
1111 = F
 xxxxxxxxxxxxxxxxxxxxxxxxxxxx00000



7FFFF8012B0
7FFFF8012B8


8-bitnumber 0 .. 255
-128 .. 127

10000000 = -128
1111111
01111111 = 127
       1
======== 
00000000

*/


module integers;
    int a = 5; // 32-bit signed integer
    // int a = 3'b101;
    // int a = 3'h5;
    reg [31:0] b = 32'hFEDC1234; // 32-bit unsigned integer
    longint c = 64'h0123456789ABCDEF; // 64-bit signed integer
    //longunsigned d = 20; // 64-bit unsigned integer
    shortint e = -10; // 16-bit signed integer
    shortint f = 16'o677; // octal 110 111 111
    shortint g = 16'b0000101000001010; //2+8+512+2048=2560+10 = 2570 
    shortint h = 16'b1000000000001010; // -32768 +10+8= -32758
     //              0111111111110101
     //              0111111111110110 

// 01110101 = 117 = 64 + 32 + 16 + 4 + 1 = 117 
// 11000001 = -128 + 64+1 = -63 
// 00111111
// xxxxxx111

// -32768 .. 32767 = 16 bit number
// g  = 32762 + 10;
/*
    11
    1010
    1110
========
   11000

   111
    999
   +999
   ====
   1998

HALF ADDER WHY?
A    B    ADD   CARRY
0    0     0      0
0    1     1      0
1    0     1      0
1    1     0      1 

FULL ADDER
A    B    CIN   ADD   CARRY
0    0     0      0      0
0    0     1      1      0
0    1     0      1      0
0    1     1      0      1
1    0     0      1      0
1    0     1      0      1
1    1     0      0      1
1    1     1      1      1

 01101011
+01101011


*/

    initial begin
        $display("b = %0h, c = %0H", b, c);
        $display("b = %0d, c = %0d", b, c);
        $display("g=%d", g);
        $display("h=%d", h);
    end

endmodule
