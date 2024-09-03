# Karnaugh Maps and State Machines

Today's session
1. Go over Karnaugh map problems
 a. How to use to optimize digital logic solutions

KarnaughMap1a: A'B'C' + A'B'C + AB'C' + AB'C
	       A'B'(C'+C) + AB'(C'+C)
	              1          1
		      A'B' + A'B' = B'(A+A') = B'(1) = B'
		      B'
KarnaughMap1b:
	A'B'C' + A'B'C + ABC' + AB'C'
	Term 1: A'B + AC'

KarnaughMap1c:
	A'B'C' + A'B'C + A'BC + ...

	
	A'B' + C + A

	A + B' + C

KarnaughMap1d:
	A'B' + AB + AB'
	A'B' + A
	A + B'

KarnaughMap2:
	A'C' + CB'


State Machine2
create a state machine that will turn on an LED when it detects 101 OR 110.
The patterns may overlap. For example, the carets show where the state machine should turn on the light.

00010010010011111100010110
                  ^    ^ ^

We create a state machine with 2 D-type flip flops

Q1 	  Q0	  X	  D0   	D1
0	  0	  0	  0	0
0	  0	  1	  1	0
0	  1	  0	  0	1
0	  1	  1	  1	1
1	  0	  0	  0	0
1	  0	  1	  1	0
1	  1	  0	  0	1
1	  1	  1	  1	1
