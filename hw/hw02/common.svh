/*
  Author: Dov Kruger
  This header file manages reading in files for simulations in homework.
  You don't have to edit this file, it's just included in hw so the testbench is shorter
*/
`ifndef MY_HEADER_SVH
`define MY_HEADER_SVH

// Array of 1024 8-bit numbers
  reg [7:0] data_array [0:1023];
  // Index for reading
  integer data_index;

  // Task to load a file into the array
  task load_file;
      input [8*256:1] filename;
      begin
          $readmemb(filename, data_array);
          data_index = 0; // reset index
      end
  endtask

  // Function to read one number and advance index
  function [7:0] read_8bit;
      begin
          read_8bit = data_array[data_index];
          data_index = data_index + 1;
      end
  endfunction

`endif
