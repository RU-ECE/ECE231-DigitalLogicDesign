# System Verilog 2012 Quick Reference

## Data Types

```verilog
reg [7:0] r;          // 8-bit signed integer
reg signed [7:0] r2;  // 8-bit signed integer
wire my_wire;         // 1-bit wire
logic my_logic;       // 1-bit boolean
bit my_bit;          // 1-bit boolean
int my_int;          // 32-bit signed integer
integer  my_integer;  // 32-bit signed integer
real  r64;            // 64-bit floating point
shortreal r32;        // 32-bit floating point

time my_time;         // 64-bit signed integer
byte my_byte;
shortint my_shortint; // 16-bit signed integer
longint my_longint;   // 64-bit signed integer
reg [63:0] x;         // 64-bit unsigned int
```

## Operators

```verilog
// Arithmetic Operators
+   // Addition
-   // Subtraction
*   // Multiplication
/   // Division
%   // Modulus

// Relational Operators
==  // Equal to
!=  // Not equal to
<   // Less than
<=  // Less than or equal to
>   // Greater than
>=  // Greater than or equal to


// Logical Operators
&&  // Logical AND
||  // Logical OR
!   // Logical NOT

// Bitwise Operators
&   // Bitwise AND
|   // Bitwise OR
^   // Bitwise XOR
~   // Bitwise NOT
<<  // Left shift
>>  // Right shift
>>> // Unsigned right shift
<<< // Unsigned right shift

// Assignment Operators
=   // Assign
+=  // Add and assign
-=  // Subtract and assign
*=  // Multiply and assign
/=  // Divide and assign
%=  // Modulus and assign
&=  // Bitwise AND and assign
|=  // Bitwise OR and assign
^=  // Bitwise XOR and assign
<<= // Left shift and assign
>>= // Right shift and assign
```

## Control Structures

```verilog
if (condition) begin
    // statements
end

if (condition) begin
    // statements
end else begin
    // statements
end

case (condition)
    0: begin
        // statements
    end
    1: begin
        // statements
    end
endcase

while (condition) begin
    // statements
end

forever begin               // for ( ; ; ) { infinite loop }
    // statements
end

repeat (n) begin
    // statements
end

// for loop with delay
for (int i = 0; i < 10; i++) begin
    // statements
    #1;
end

// foreach loop
foreach (array[i]) begin
    // statements
end

// Do-while loop
do begin
    // statements
end while (condition);
```

## Example of foreach loop

```verilog
int array[10];

foreach (array[i]) begin
    array[i] = i;
end
```

## Tasks and Functions

// Tasks and functions are both used to encapsulate reusable code in Verilog, but they have some key differences:

// 1. Tasks can contain time-controlling statements like `#`, `@`, or `wait`, whereas functions cannot.
// 2. Functions must execute in zero simulation time, while tasks can take simulation time.
// 3. Functions return a single value and cannot have output or inout arguments, whereas tasks do not return a value but can have output and inout arguments.
// 4. Functions are typically used for combinational logic, while tasks are used for sequential logic or operations that require time delays.

// Example of a task
task my_task;
    // statements
endtask

// Example of a function
function my_function;
    // statements
    return value;
endfunction


```verilog
task my_task;
    // statements
endtask

function my_function;
    // statements
endfunction
```

## Operator Examples

```verilog
int x = 3 / 2;  // 3 >> 1
int y = -5 / 2; // 0000101  1111011 >>> 1  1111101
// 10100000 >> 1    01011111 + 1 01100000 = 96      orig =-96
// 01010000   LOGICAL shift right
// 11010000   ARITHMETIC shift right  00101111+1 = 00110000 = 48

int z = 10 / 4;
int w = 99 / 100;
