if (a < 5 && x[a] == 92) // short-circuiting and


if (a < 5 || b > 9) // short-circuiting or
if (! (a < 5)) // short-circuiting not

int done = 19; // 00010011
if (!done) begin
    // statements
end

// one equal sign is assignment
if (a = 3) begin


int x = 32'h12345678;
int y = 32'h9abcdef0;
x &= y; // x = x & y;



```verilog
initial begin
  int x = 0;
  while (x < 10) begin
    $display("%d", x);
    x++;
  end
  $display("x=%d, x);
  for (int j = 0; j < 10; j = j + 1) begin
    $display("%d", j);
  end
  for (int j = 0; j < 10; j = j + 1) begin
    $display("%d", j);
  end
//ILLEGAL, j does not exist here  $display("%d", j);
  for (x = 0; x < 10; x = x + 1) begin
    $display("%d", x);
  end
end
```

```verilog
int x = 0;
int y;
x = x + 1; // x = 1
y = x++; // y = 1, x = 2
y = ++x; // y = 3, x = 3
x += 1;
```

```verilog
int a = 1, b = 2, c = 3;
a += b += c += 2; // a = 8, b = 7, c = 5
```


```verilog
int i = 10;
while (i < 10) begin
    $display("%d", i);
    i++;
end

i = 10;
do begin
    $display("%d", i);
    i++;
end while (i < 10);
```

```verilog
   for (int i = 0; i < $size(test_ops); i++) begin

   for (int i = 0; i < $size(test_input1); i++) begin
     for (int j = 0; j < $size(test_input2); j++) begin
        a = test_input1[i];
        b = test_input2[j];
        op = test_ops[j];
     end
   end
```