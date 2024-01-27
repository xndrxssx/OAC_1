.data
	espaco: .asciiz " "
.text
.main:
addi $s0, $zero, 1 #n=1
jal leInteiro
add $s1, $v0, $zero #how_many
addi $s1, $s1, 1 #incrementa +1 em how_many

while1:
slt $t0, $s0, $s1 #n<how_many
add $s2, $zero, $zero #total=0
addi $s3, $zero, 1 #j=1
bne $t0, $zero, while2
j exit

while2:
add $t1, $s0, 1 #n+=1
slt $t2, $s3, $t1 #j<n?
addi $s4, $zero, 1 #i=1
bne $t2, $zero, while3
j printa

incrj:
add $s3, $s3, 1 #j=j+1
j while2

while3:
addi $t3, $s3, 1 #j+=1
slt $t4, $s4, $t3 #i<j
beq $t4, $zero, incrj #caso i>j, incrementa o j
add $s2, $s2, $s4 #total=total+i
addi $s4, $s4, 1 #i=i+1
j while3

leInteiro:
li $v0, 5
syscall #le inteiro
jr $ra

printa:
li $v0, 1
add $a0, $s2, $zero #printa total
syscall
li $v0, 4
la $a0, espaco
syscall
addi $s0, $s0, 1
j while1

exit: