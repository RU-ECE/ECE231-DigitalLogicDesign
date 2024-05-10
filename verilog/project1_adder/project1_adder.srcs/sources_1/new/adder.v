`timescale 1ns/1ns
//////////////////////////////////////////////////////////////////////////////////
// Author: Dov Kruger
// 
// Create Date: 10/31/2023 06:51:31 AM
// Design Name: Project1 (an adder)
// 
//////////////////////////////////////////////////////////////////////////////////

/*
a   b    c_in   s    c_out
0   0   0       0    0
0   0   1       1    0
0   1   0       1    0
0   1   1       0    1
1   0   0       1    0
1   0   1       0    1
1   1   0       0    1
1   1   1       1    1


*/
//good practice: always name module same as filename
module adder(
    input wire a,
    input wire b,
    input wire c_in,
    input wire clock,
    input wire reset_n,
    input wire enable,
    output reg c_out,
    output reg s,
    output reg data_valid
    );
    
    always @(posedge clock or negedge reset_n) begin
        if (!reset_n) begin         //always use begin..end defensively
            c_out <= 1'b0;       // note non-blocking assign!
            data_valid <= 1'b0;
            s <= 1'b0;
        end

        else begin
            data_valid <= 1'b0;
            if (enable)  begin
                s <= a ^ b ^ c_in;
                c_out <= ((a^b) & c_in) | (a&b);
                data_valid <= 1'b1;
            end
        end
    end
endmodule
