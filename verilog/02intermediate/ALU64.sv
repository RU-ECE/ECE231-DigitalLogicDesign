module ALU64(
    input wire[63:0] a,
    input wire[63:0] b,
    input wire[3:0] op,
    output reg[63:0] result,
    input wire clk
    );

    always @(posedge clk) begin
        case(op)
        4'h0: result = a + b;
        4'h1: result = 0;
        4'h2:result = 0;
        4'h3:result = 0;
        4'h4:result = 0;
        4'h5:result = 0;
        4'h6:result = 0;
        4'h7:result = 0;
        4'h8:result = 0;
        4'h9:result = 0;
        4'hA:result = 0;
        4'hB:result = 0;
        4'hC:result = 0;
        4'hD:result = 0;
        4'hE:result = 0;
        4'hF:result = 0;
        endcase
    end
endmodule
