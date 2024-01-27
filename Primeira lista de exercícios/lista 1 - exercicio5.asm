.text
	.main:
		addi $s0, $zero, 5382
		jal invertePrimeiro
		jal inverteSegundo
		jal inverteTerceiro
		jal inverteQuarto
		jal printNumero
	
	invertePrimeiro:
		li $t0, 1000
		div $s0, $t0
		mflo $s1
		mfhi $s2
		add $s0, $zero, $s2
		jr $ra
		
	inverteSegundo:
		li $t0, 100
		li $t1, 10
		div $s0, $t0
		mflo $s2
		mfhi $s3
		mul $s2, $t1, $s2
		add $s0, $zero, $s3
		jr $ra
	
	inverteTerceiro:
		li $t0, 10
		li $t1, 100
		div $s0, $t0
		mflo $s3
		mfhi $s4
		mul $s3, $t1, $s3
		add $s0, $zero, $s4
		jr $ra
		
	inverteQuarto:
		li $t0, 1000
		mul $s0, $t0, $s0
		jr $ra
	
	printNumero:
		add $t0, $s0, $s1
		add $t1, $s2, $s3
		add $t0, $t0, $t1
	
	li $v0, 10
	syscall