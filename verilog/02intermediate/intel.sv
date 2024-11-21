module intel(
    input wire[3:0] read_addr1,
    input wire[3:0] read_addr2,
    input wire[3:0] write_addr,
    output logic[63:0] a,
    output logic[63:0] b,
    input wire[63:0]  writeback,
    input logic wren,
    input logic clk
);
  reg [63:0] R[3:0]; // general purpose registers
  initial begin
    for (int i = 0; i < 16; i++)
      R[i] = 0;

  end

  always @(posedge clk) begin
    a = R[read_addr1];
    b = R[read_addr2];
  end
/*
  always @(negedge clk) begin


  end
  */
endmodule