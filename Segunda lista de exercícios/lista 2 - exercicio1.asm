#imprimir o quadrado de um numero
main:
	addi $s0, $zero, 0
	add $s1, $zero, $zero
	addi $s2, $zero, 0
	
	loop:
	slt $t0, $s2, $s0
	beq $t0, $zero, exit
	add $s1, $s1, $s0
	addi $s2, $s2, 1
	j loop
exit: