start:	
	lw x10, a
	lw x11, b
	lw x12, m
	
	add x12, x12, x10
	beq x11, x12, L1
	
	sub x12, x10, x11
	beq x0, x0, end
L1:
	sub x12, x11, x10
end:
	halt

a: .word 0xf
b: .word 0x7
m: .word 0x0



