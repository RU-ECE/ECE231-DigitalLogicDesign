# Verilog Summary

## Tool

We are using Vivado. It is

* Difficult to use, lots of controls, poorly designed menus
* Difficult to install (at least on many linux variants)
* Works on Windows and Linux (not Mac OSX)
* Takes hours to install
* In short, it's a beast, but it is definitely the leading tool
  * In other words, the alternatives are worse
  * It does really amazing things, and you need to learn it

You may use the computers in the lab on the first floor to do your homework,
but if you have a laptop running windows or linux you are strongly advised to
install vivado [Here is the link](https://www.xilinx.com/support/download.html)

Suggestions for installing vivado

* It's huge. Can take up to 150Gb of disk space. Limit this by installing
  * Only vivado, not all the tools
  * only one family of FPGA. By default it will install everything
    * All the data is enormous. You can keep the install under 75Gb
  * Downloading the installation file makes installation faster.
  * The installer appears to be poorly written, in Java, and uses multiple threads, gets your CPU quite hot. It's likely to work better on Windows, but it's slow everywhere.
  * Make sure your laptop is plugged in, and that you have 4 hours for the install.

## Background

Verilog is a Hardware Description Language (HDL)

* Derived from C family
* uses ; to end lines begin .. end to group
* IEEE Standard 1364

VHDL is another language (derived from Ada)

HDLs can be used for a number of purposes

* Design hardware and simulate it
* Program FPGA boards
    * Field Programmable Grid Array
    * FPGA are slower than pre-built circuits
    * FPGAs are popular on high end (RADAR)
    * low end (custom logic on traffic light)
      * You can build a custom circuit, but it's expensive to build
      * Also cannot change
    * Much lower power/compute ratio
* Custom ASIC (Application Specific Integrated Circuit)
  * built in factory
  * faster
  * much more expensive

* Bespoke Processing/Processors
  * build a processor

* RTL Register Transfer Level
  * The description of how signals get created and stored
  * Data is stored in registers (D type flip flops generally)
  * Data is manipulated with combinational logic and then stored again
  * We will cover flip flops more thoroughly soon

* There are many variants of verilog
  * Originally developed in 1984
  * 1990 aquired by Cadence
  * Became a public standard IEEE 1364-1995
  * standard 1364-2001 supported 2s complement (signed) numbers
  * Verilog 2005 (1364-2005)
  * 2009: System Verilog
  * We will use System verilog for the testbench certainly.
  
## Language Features

All languages derived from C share certain basic features. By learning the common rules you can benefit in both regular programming and verilog

Some of these features are common to even more programming languages

* Identifiers: names of things in your program
  * Most programming languages have variables which must be named
  * Verilog also defines modules which are equivalent to objects in C++ or Java and define circuits
  * Identifiers in verilog start with a letter
    * The standard does not say whether unicode is legal
    * Vivado
```cpp
abc
a
UPPERCASE
snake_case_is_legal
camelCaseIsLegal
```

* Keywords
  * Programming languages have list of words which have defined meanings and cannot be used as identifiers
  * Examples of keywords in verilog
```cpp
module input output wire reg 
```
  * For a complete list see [SystemVerilog keywords](system_verilog_keywords.txt)
  * keywords may be part of an identifier
  * Example:
  ```cpp
  module0 input_abc
  ```
    * just because this is legal does not make this a great name
    * names of identifiers should explain what you are doing
* Comments
  * A single line comment start with two slashes: // like C++
  * A multi-line comment starts with /* and ends with */ like C
  * Your homeworks must contain the following comment at the top
  ```cpp
  /*
    Author: your name(s) go here (up to 2 people may write code together)
    cite: any help you get
    You may get help from anyone but you must type the homework yourself
    and you must understand what you wrote if asked.
  */
  ```

* Modules
  * Unfortunately, module is used for two different purposes which is confusing
    * testbench: effectively a program that tests other modules
    * defining a circuit
  * A testbench is a module witha name and no parameters
    * It sets up an environment, creates other modules defined in other files
    * Testbenches are defined under the simulation branch
  * A regular module defines a circuit
    * has inputs and at least one output (otherwise why do it?)
    * generates gates
    * the testbench can use this module to create one or more circuits
  * Example of empty testbench:
  ```cpp
  module helloworld_tb();
   // not much going on here...
  endmodule
  ```
  * See the Verilog projects we did in class for examples

* Statements in verilog

* Operators in verilog. Assuming a and b are 4-bit variables
  ```cpp
  a = 4'b1011;
  b = 4'b0110;
  c = a & b;	// AND: 0010			
  c = a | b;    // OR:  1111
  c = a ^ b;    // XOR: 1101
  c = ~a;       // NOT: 0100


```