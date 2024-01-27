.data
	espaco: .byte ' '
.text
	
	li $v0, 5 #recebe i
	syscall
	
	add $t0, $v0, $t0
	
	addi $t1, $t1, 0 #inicia j
	
	while:
		beq $t1, $t0, saida

		li $v0, 1
		add $a0, $t1, $zero
		syscall
		
		li $v0, 4
		la $a0, espaco
		syscall
		
		addi $t1, $t1, 1
		
		j while
		
	saida: 
		li $v0, 10
		syscall