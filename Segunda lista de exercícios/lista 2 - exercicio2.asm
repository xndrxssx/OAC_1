.data

espaco: .asciiz " "

.text
.main:

	addi $s0, $zero, 24
	addi $s1, $zero, 3
	li $t0, 42

for:
	slt $t1, $s0, $t0
	beq $t1, $zero, exit
	add $s0, $s0, $s1
	j print
	
print:
	li $v0, 1
	add $a0, $zero, $s0
	syscall
	li $v0, 4
	la $a0, espaco
	syscall
	j for
	
exit:
	li $v0, 10
	syscall