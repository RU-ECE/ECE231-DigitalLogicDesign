module mux2_8bit(
    input wire [7:0] a,
    input wire [7:0] b,
    input wire sel,
    output logic[7:0] y
);

always @(*) begin
    case (sel)
        2'b00: y = a;
        2'b01: y = b;
        default: y = 8'b0;
    endcase
end

endmodule