`timescale  1ns/1ns
module hw02_tb;
    logic [7:0] a, b, out;
    logic [1:0] op;

    int fd;

    ALU_8bit uut(
        .a(a),
        .b(b),
        .op(op),
        .out(out)
    );

    initial begin
        fd = $fopen("hw02.txt", "r");

        for (int i = 0; i < 4; i++) begin
            void'($fscanf(fd, "%b\n", a));
            void'($fscanf(fd, "%b\n", b));
            void'($fscanf(fd, "%b\n", op));
            #1; $display("a=%b, b=%b, op=%b, out=%b", a, b, op, out);
        end
        $fclose(fd);
        $finish;
    end
endmodule
