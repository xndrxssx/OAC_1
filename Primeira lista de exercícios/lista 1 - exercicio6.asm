.text
.main:
	li $t0, 1
	li $t1, 1
	addi $sp, $sp, -8
	addi $s1, $zero, 2
	addi $s2, $zero, 9
	jal pilha
	
	
pilha:
	sw $t0, 0($sp)
	sw $t1, 4($sp)
	j fibo
	
fibo:
	add $s0, $t1, $zero
	add $s3, $t0, $t1
	add $t0, $s0, $zero
	add $t1, $s3, $zero
	jal while

while:
	addi $s1, $s1, 1
	beq $s1, $s2, printaFibo
	j pilha
	
printaFibo:
	li $v0, 1
	addi $a0, $s3, 0
	syscall
	addi $sp, $sp, 8
	j encerra
	
encerra:
	li $v0, 10
	syscall
		