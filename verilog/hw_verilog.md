#Description of first verilog homework



1. Create a system verilog testbench
(our convention is filename_tb.sv  (but also please remember to set the type to system verilog)
2. Create one signal with your name, one with your partner's name.
If you are doing it solo, use your first and last name.
  Set one to 0, the other to 1
3. Create a clock that oscillates with a period of 20ns
4. create a circuit OR(AND(clock, name1), AND(NOT clock, name2))
5. after 100 ns, set name1 = 1
   after 200ns, set name2 = 0
submit the code
(no need to show the graph)


What you need to know:

=    	 blocking assignment (sequential)
&    	 AND
|	 OR
^	 XOR
~	 NOT (unary operator)
!	 logical not, only works with 1 bit
