.data
	fl: .asciiz "FL"
	ps: .asciiz "PS"
	cr: .asciiz "CR"
	dn: .asciiz "DN"
	hd: .asciiz "HD"
.text
.main:

jal leInteiro
add $s0, $zero, $v0

if:
addi $s1, $zero, 50
slt $t0, $s0, $s1
bne $t0, $zero, printFL
addi $s1, $zero, 65
slt $t0, $s0, $s1
bne $t0, $zero, printPS
addi $s1, $zero, 75
slt $t0, $s0, $s1
bne $t0, $zero, printCR
addi $s1, $zero, 85
slt $t0, $s0, $s1
bne $t0, $zero, printDN

printHD:
li $v0, 4
la $a0, hd
syscall
li $v0, 10
syscall

leInteiro:
li $v0, 5
syscall
jr $ra

printFL:
li $v0, 4
la $a0, fl
syscall
li $v0, 10
syscall

printPS:
li $v0, 4
la $a0, ps
syscall
li $v0, 10
syscall

printCR:
li $v0, 4
la $a0, cr
syscall
li $v0, 10
syscall

printDN:
li $v0, 4
la $a0, dn
syscall
li $v0, 10
syscall

