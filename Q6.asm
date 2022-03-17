xor x11, x11, x11
xor x12, x12, x12
xor x13, x13, x13

loop:
	lb x10, 1025(x0)

	lw x5, A
	beq x10, x5, um
	lw x5, E
	beq x10, x5, um
	lw x5, I
	beq x10, x5, um
	lw x5, O
	beq x10, x5, um
	lw x5, U
	beq x10, x5, um
	
	lw x5, D
	beq x10, x5, dois
	lw x5, G
	beq x10, x5, dois
	lw x5, T
	beq x10, x5, dois

	lw x5, B
	beq x10, x5, tres
	lw x5, C
	beq x10, x5, tres
	lw x5, M
	beq x10, x5, tres
	lw x5, N
	beq x10, x5, tres
	lw x5, P
	beq x10, x5, tres

	
	lw x5, F
	beq x10, x5, quatro
	lw x5, H
	beq x10, x5, quatro
	lw x5, V
	beq x10, x5, quatro
	lw x5, W
	beq x10, x5, quatro
	lw x5, Y
	beq x10, x5, quatro

	lw x5, K
	beq x10, x5, cinco
	lw x5, R
	beq x10, x5, cinco
	lw x5, S
	beq x10, x5, cinco

	lw x5, J
	beq x10, x5, oito
	lw x5, L
	beq x10, x5, oito
	lw x5, X
	beq x10, x5, oito


	lw x5, Q
	beq x10, x5, dez
	lw x5, Z
	beq x10, x5, dez
	
	jal x1, end

um:
	addi x11, x11, 1
	jal x1, loop

dois:
	addi x11, x11, 2
	jal x1, loop

tres:
	addi x11, x11, 3
	jal x1, loop

quatro: 
	addi x11, x11, 4
	jal x1, loop

cinco:
	addi x11, x11, 5
	jal x1, loop

oito:
	addi x11, x11, 8
	jal x1, loop

dez: 
	addi x11, x11, 10
	jal x1, loop

end:
	blt x0, x12, pont
	addi x12, x12,5
	add x13, x13, x11
	xor x11, x11, x11
	jal x1, loop
	
pont:
	blt x13, x11, doisGanha
	bne x13, x11, umGanha
	lw x11, E
	jal x1, print

umGanha:
	lw x11, Z
	addi x11, x11, 0
	jal x1, print

doisGanha:
	lw x11, A
	addi x11, x11 , 0
	jal x1, print

print:
	sb x11, 1024(x0)
	halt

A: .word 'A'
E: .word 'E'
I: .word 'I'
O: .word 'O'
U: .word 'U'
D: .word 'D'
G: .word 'G'
T: .word 'T'
B: .word 'B'
C: .word 'C'
M: .word 'M'
N: .word 'N'
P: .word 'P'
F: .word 'F'
H: .word 'H'
V: .word 'V'
W: .word 'W'
Y: .word 'Y'
K: .word 'K'
R: .word 'R'
S: .word 'S'
J: .word 'J'
L: .word 'L'
X: .word 'X'
Q: .word 'Q'
Z: .word 'Z'






