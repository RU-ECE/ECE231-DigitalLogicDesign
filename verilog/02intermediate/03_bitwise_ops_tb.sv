module bitwise_ops_tb;
    reg [3:0] a = 4'b1010;
    reg [3:0] b = 4'b1100;
    
    initial begin
        $display("a & b = %b", a & b);
        $display("a | b = %b", a | b);
        $display("a ^ b = %b", a ^ b);
        $display("~a    = %b", ~a);
        $finish;
    end
endmodule
