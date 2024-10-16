`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Author: Dov Kruger
// cite: I received MASSIVE HELP from Elya Kapelian
// Create Date: 11/01/2023 05:36:32 PM
// 
//////////////////////////////////////////////////////////////////////////////////


module adder_tb();
    reg clock;
    reg reset_n;
    reg enable;
    reg a0, b0, carry_in;
    wire sum, carry_out, data_valid;
    // anything assigned within an initial or always block must be reg
    //anything outside, must bea  wire. This is confusing and unnecessary, so we now
    // switch to system verilog, a later version...    
    
    //Clock generation
    initial begin
    // = is blocking assignment
        clock = 1'b0;
        
        forever
          #5 clock = !clock;
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
        .a(a0),
        .b(b0),
        .c_in(carry_in),
        .s(sum),
        .c_out(carry_out),
        .data_valid(data_valid)
        );
endmodule
