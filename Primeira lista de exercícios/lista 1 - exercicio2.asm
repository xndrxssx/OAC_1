.text
	.main:
		add $s0, $zero, $zero
		addi $s1, $zero, 1
		addi $s2, $zero, 2

		slt $t0, $s0, $s1
		bne $t0, $zero, else
		add $s2, $zero, $s0
		
		else:
			add $s2, $zero, $s1