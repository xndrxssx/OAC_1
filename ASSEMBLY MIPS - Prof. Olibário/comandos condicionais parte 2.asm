.data
	menor: .asciiz "O numero eh menor que zero"
	igual: .asciiz "O numero eh igual a zero"
	maior: .asciiz "O numero eh maior que zero"
.text
	li $v0, 5
	syscall
	
	addi $t0, $v0, 0
	
	beq $t0, $zero, imprimeIgual
	bgt $t0, $zero, imprimeMaior
	blt $t0, $zero, imprimeMenor
	
	
	imprimeIgual:
		li $v0, 4
		la $a0, igual
		syscall
		
		li $v0, 10
		syscall
		
		
	imprimeMaior:
		li $v0, 4
		la $a0, maior
		syscall
		
		li $v0, 10
		syscall
		
	imprimeMenor:
		li $v0, 4
		la $a0, menor
		syscall
		
		li $v0, 10
		syscall
		
	