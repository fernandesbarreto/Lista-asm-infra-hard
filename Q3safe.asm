start:
	lw x10, prim
	lw x11, seg

	addi x7, x0, 0x3f
	slli x7, x7, 11
	and x28, x10, x7
	slli x7, x11, 15

	xori x7, x7, -1
	and x11, x11, x7

	slli x28, x28, 15
	
	or x11, x11, x28
	
halt

prim: .word 0x00ff00ff00ff00ff
seg: .word 0xff00ff00ff00ff00




