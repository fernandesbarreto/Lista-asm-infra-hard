start:	
	#carrega as variaveis

	lw x10, varA
	lw x11, varB
	lw x12, varC
	lw x13, varX
	
	#define os valores fixos para que
	#possamos compara-los nos branches

	lw x14, varX
	addi x14, x14, 32
	lw x15, varX
	addi x15, x15, 25

	#checa as condições e termina se
	#alguma for diferente do exigido
	#no enunciado
	
	blt x10, x0, L1
	bge x11, x14, L1
	bge x15, x12, L1

	addi x13, x13, 1
	 
L1:
	halt

varA: .word 0x1
varB: .word 0x000
varC: .word 0x1000
varX: .word 0x0







