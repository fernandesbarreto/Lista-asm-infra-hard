start:
	lw x10, a	
	lw x11, b
	xor x10, x10, x11

end:
	halt

a: .word b0001110010111000
b: .word b1111111111111111

# fazendo um XOR com um input
# todo positivo, temos um NOT

