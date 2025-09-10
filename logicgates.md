A	B	A+B		AB		A XOR B		A XNOR	B
0	0	0		0		0     		  	1
0	1	1		0		1			0
1	0	1		0		1			0
1	1	1		1		0			1


A	B	A NAND B
0	0	1
0	1	1
1	0	1
1	1	0

A	B	A NAND B (A=B)
0	0	1
1	1	0


A	B	C	OR(A,B,C)	AND(A,B,C)
0	0	0	0			0
0	0	1	1			0
0	1	0	1			0
0	1	1	1			0
1	0	0	1			0
1	0	1	1			0
1	1	0	1			0
1	1	1	1			1

1010111
1011001


A	B	A NAND B		(NOT A) AND (NOT B)
0	0	1      			1    
0	1	1				0
1	0	1				0
1	1	0				0


NOT((NOT A) AND (NOT B) ) = A OR B
NOT((NOT A) OR (NOT B) ) = A AND B

(NOT A) AND (NOT B) = A NOR B
(NOT A) OR (NOT B) = A NAND B


