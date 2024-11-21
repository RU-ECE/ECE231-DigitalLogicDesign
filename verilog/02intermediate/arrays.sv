module arrays();

int x[16];
real y[4];
reg [7:0] y[3:0];

initial begin
  x[0] = 9;
  x[1] = 8'hFF;
  x[15] = 99;
end

endmodule