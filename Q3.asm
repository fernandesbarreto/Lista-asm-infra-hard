start:
	lw x5, prim
	lw x6, seg

	addi x7, x0, 0x3f
	slli x7, x7, 11
	and x10, x5, x7
	slli x7, x6, 15

	xori x7, x7, 0
	and x6, x6, x7

	slli x10, x10 15
	
	or x6, x6, x10
	
halt

prim: .word 0x0
seg: .word 0xffffffffffffffff




