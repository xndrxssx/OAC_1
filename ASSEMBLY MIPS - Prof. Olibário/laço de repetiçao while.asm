.text
	addi $t0, $zero, 0
	
	while:
		beq $t0, 10, saida
		addi $t0, $t0, 1
		j while
	saida:
		li $v0, 1
		addi $a0, $t0, 0
		syscall
	