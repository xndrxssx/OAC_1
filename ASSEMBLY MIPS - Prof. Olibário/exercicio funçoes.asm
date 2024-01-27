.data
	par: .asciiz "eh par"
	impar: .asciiz "eh impar"
.text
	jal leInteiro
	
	addi $s0, $v0, 0
	li $t0, 2
	
	jal ehPar
	jal encerra
		
	
	ehPar:
		div $s0, $t0
		mfhi $t1
		beq $t1, $zero, printPar
		bne $t1, $zero, printImpar
		
	printImpar:
		li $v0, 4
		la $a0, impar
		syscall
		jal encerra
		
	printPar:
		li $v0, 4
		la $a0, par
		syscall
		jal encerra
		
	leInteiro:
		li $v0, 5
		syscall
		jr $ra
	
	encerra:
		li $v0, 10
		syscall