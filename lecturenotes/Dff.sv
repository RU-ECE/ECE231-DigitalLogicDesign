module Dff(input wire D,
           input wire clk,
           output reg Q,
           output reg Qbar);

/*
always @(*) begin
  if (clk) begin
    Q = D;
    Qbar = ~D;  
  end
end


always @(posedge clk) begin
    Q = D;
    Qbar = ~D;  
end


end



endmodule