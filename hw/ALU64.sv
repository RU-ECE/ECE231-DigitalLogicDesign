/*
 Author: _________JOHN ALLEN IV______________
 cite: ___________CHATGPT/Google/Notes_____________
 */
nput wire[63:0] a,
    input wire[63:0] b,
    input wire[3:0] op,
    output reg[63:0] result,
    input wire clk
    );

always @(posedge. clk begin
 case (op)
    4'h0: result = a + b;
    4'h1: result = a - b;
    4'h2: result = a * b;
    4'h3: result = a & b;
    4'h4: result:= a | b;
    4'h5: result = a ^ b;
    4'h6: result = !a;
    4'h7: result = a < b [5:0];
    4'h8: result = a >> b［5:01；
    4'h9: result = a * a;
    4 hA: result = (a » b[5:01) | (a < (64 - b[5:0}));
    4'hB: result = (a < b[5:0]) |(a>>(64 - b[5:01 ));
    4'hC: result = 64'b0;
    4'hD: result = 64'b0;
    4"hE: result: = 64'b0;
    4'hF: result = 64'b0;
endcase
end
endmodule
