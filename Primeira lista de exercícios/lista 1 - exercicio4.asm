.text
	.main:
	
	addi $s0, $zero, 1
	addi $s1, $zero, 8
	
	while:
		beq $s0, $s1, exit
		addi $s0, $s0, 1
		j while
		
	exit: