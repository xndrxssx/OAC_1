.text
.main:

jal leInteiro
addi $s0, $v0, 0
addi $s1, $zero, 1
li $t0, 1


for:
slt $t1, $s1, $s0
mul $t0, $t0, $s1
beq $t1, $zero, print
addi $s1, $s1, 1
j for

leInteiro:
	li $v0, 5
	syscall
	jr $ra
	
print:
	li $v0, 1
	addi $a0, $t0, 0
	syscall
	
	li $v0, 10
	syscall