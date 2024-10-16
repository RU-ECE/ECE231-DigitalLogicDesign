`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Author: Dov Kruger
// cite: state any help you had. YOU MAY NOT COPY THE FILE
// 
//////////////////////////////////////////////////////////////////////////////////

module ALUbit_v1_tb();
    logic [2:0] operation;
    logic [7:0] a; // 8 bits   a[7] a[6] ... a[0]
    logic [7:0] b;
    logic [7:0] ans;
    
    ALU8bit_v1 alu1(
      .op_in(operation),
      .a_in(a),
      .b_in(b),
      .out(ans)
    );

    initial begin
      operation = 3'b000;  // add
      a = 0;
      b = 0;
      #1
        a = 8'hFC;
        b = 8'b10010111;
      #1 operation = 3'b001;
      a = 5; // 8'b00000101
      b = 4;
      #1 b = 5;
      a = 4;
      #1 operation = 3'b010;
      a = 8'ha5; // 10100101
      b = 8'hcc; //  11001100      
    end

endmodule
