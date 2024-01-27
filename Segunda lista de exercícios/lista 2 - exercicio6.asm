.data
espaco: .asciiz " "
.text
.main:

jal leInteiro
add $s0, $v0, $zero
addi $s1, $zero, 1
jal print

while:
addi $s1, $s1, 1
jal print
beq $s0, $s1, encerra
j while

leInteiro:
li $v0, 5
syscall
jr $ra

print:
li $v0, 1
addi $a0, $s1, 0
syscall
li $v0, 4
la $a0, espaco
syscall
jr $ra

encerra:
li $v0, 10
syscall
