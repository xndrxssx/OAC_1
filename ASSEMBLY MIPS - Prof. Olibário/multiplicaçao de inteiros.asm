.text
	li $t0, 12
	 $t1, $zero, 10

	mul $s0, $t0, $t1

	li $v0, 1
	addi $a0, $s0, 0
	syscall
