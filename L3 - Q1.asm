.data
palavra: .asciiz "ascii"

.text
.main:

addi $t0, $zero, 0
addi $t1, $zero, 5

while:
beq $t0, $t1, printa
lb $s1, palavra($t0)
addi $s1, $s1, -32
sb $s1, palavra($t0)
addi $t0, $t0, 1
j while

printa:
li $v0, 4
la $a0, palavra
syscall
li $v0, 10
syscall