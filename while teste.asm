main:
	add $s1, $zero, $zero
	addi $t0, $zero, 2
	
	loop:
	beq $t0, $s1, exit
	addi $s1, $s1, 1
	j loop
exit: