`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Author: Dov Kruger
// cite: I received MASSIVE HELP from Elya Kapelian
// Create Date: 11/01/2023 05:36:32 PM
// 
//////////////////////////////////////////////////////////////////////////////////


module adder_tb();
    logic clock;
    logic reset_n;
    logic enable;
    logic a0, b0, carry_in;
    logic sum, carry_out, data_valid;
    
    //Clock generation
    initial begin
    // = is blocking assignment
        clock = 1'b0;
        
        forever begin
          #5 clock = !clock;
	end
    end
    

    initial begin
        reset_n <= 1'b0;
        enable <= 1'b0;
        
        #20 reset_n <= 1'b1;
        #10 a0 <= 1'b0;
        b0 <= 1'b0;
        carry_in <= 1'b0;
        
        #10 enable <= 1'b1;
        a0  <= 1'b1;
        b0  <= 1'b0;
        carry_in    <= 1'b0;
        
        #10 enable <= 1'b0;
    end
    
    adder // entity name
    DUT // designed under test
      (
        .clock(clock),          //wire up each input and output
        .reset_n(reset_n),
        .enable(enable),
        .a(a0),
        .b(b0),
        .c_in(carry_in),
        .s(sum),
        .c_out(carry_out),
        .data_valid(data_valid)
        );
endmodule
