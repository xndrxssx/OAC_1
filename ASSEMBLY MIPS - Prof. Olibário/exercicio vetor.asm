.data

array:
.align 2
.space 16 #aloca 4 espaços no array

.text
.main:
li $t0, 0
li $t1, 0
li $t2, 16

while:
beq $t0, $t2, exitWhile
sw $t1, array($t0)
addi $t0, $t0, 4
addi $t1, $t1, 1
j while

exitWhile:
addi $t0, $zero, 0

imprime:
beq $t0, $t2, exit
li $v0, 1
lw $a0, array($t0)
syscall
addi $t0, $t0, 4
j imprime

exit:
		
