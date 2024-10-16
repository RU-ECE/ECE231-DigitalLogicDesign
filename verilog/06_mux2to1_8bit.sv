module mux2_8bit(
    input wire [7:0] a, // a[0] a[1] a[2] .. a[7]
    input wire [7:0] b,
    input wire sel,
    output logic[7:0] y
);

always @(*) begin
    case (sel)
        0: y = a;
        1: y = b;
        default: y = 8'b0;
    endcase
end

endmodule
