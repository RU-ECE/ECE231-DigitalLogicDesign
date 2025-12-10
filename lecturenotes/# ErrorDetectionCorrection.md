# Error Detection and Correction

## odd parity
sent=10100111   P=0 
recv=10100110   P=0

## even parity
sent=10100111   P=1
recv=10100110   P=1
=============

## odd parity
sent=10100111   P=0
recv=01100111   P=0
looks ok, but 2 errors were undetected

## odd parity
sent=10100111   P=0
recv=10000011   P=0

===============


Checksum

H  e   l  l   o
48 65  6c 6c  6f   ED

checksum  = 48 + 65 + 6c + 6c + 6f = 237 in hex = ED in decimal
14*16+13 = 237


47 66  6c 6c  6f   ED right checksum, wrong message

Cyclic Redundancy Check (CRC)

CRC-32 can detect any errors up to 32 bits.

https://en.wikipedia.org/wiki/Computation_of_cyclic_redundancy_checks#CRC-32_example

