`timescale 1ns/1ns
//////////////////////////////////////////////////////////////////////////////////
// Author: Dov Kruger
// 
// Create Date: 10/31/2023 06:51:31 AM
// Design Name: Project1 (an adder)
// 
//////////////////////////////////////////////////////////////////////////////////

//good practice: always name module same as filename
module adder(
    input wire a, b, c_in, clock;
    output reg c_out;
    );
    
    always @(posedge clock or negedge reset_n) begin
    if (!reset_n) begin         //always use begin..end defensively
        c_out <= 1'h0;       // note non-blocking assign!
    end

    else begin
        data_valid <= 1'b0;
        if (enable)  begin
            output_c <= input_a ^ input_b;
            data_valid <= 1'b1;
        end
    end

endmodule
