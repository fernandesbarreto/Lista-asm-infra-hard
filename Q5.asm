lw x5, v1
lw x6, v2
lw x7, v3
lw x8, v4
lw x9, v5
lw x12, v6
xor x11, x11, x11

loop:
	lb x10, 1025(x0)
	beq x10, x5, inc
	beq x10, x6, inc
	beq x10, x7, inc
	beq x10, x8, inc
	beq x10, x9, inc
	beq x10, x12, end
	jal x1, loop

inc:
	addi x11, x11, 1
	jal x1, loop

end:
	addi x11, x11, 48
	sb x11, 1024(x0)
	halt

v1: .word 'a'
v2: .word 'e'
v3: .word 'i'
v4: .word 'o'
v5: .word 'u'
v6: .word 0x20



