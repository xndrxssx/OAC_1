.data
	asteristico: .asciiz "*"
	null: .word 10
.text
.main:
addi $s0, $zero, 1
addi $s1, $zero, 0

for1:
addi $t0, $zero, 11 
slt $t1, $s0, $t0 #verifica se i<11
bne $t1, $zero, for2 #enquanto i<11 vai pro for2
j encerra

for2:
slt $t2, $s1, $s0 #verifica se j<i
bne $t2, $zero, estrela #enquanto j<i vai pra estrela
j pula

estrela:
li $v0, 4
la $a0, asteristico
syscall #printa a estrela
addi $s1, $s1, 1 #incrementa o j
j for2


pula:
li $v0, 4
la $a0, null
syscall #pula linha
addi $s0, $s0, 1 #incrementa o i
add $s1, $zero, $zero #zera o j pra recomeçar a contagem
j for1

encerra:
li $v0, 10
syscall
