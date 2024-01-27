main:
addi $sp, $sp, -4
la $a0, $sp
add $t2, $a0, $zero
addi $t0, $zero, 4
add $t2, $zero, $zero #?????????????????????
addi $s0, $zero, 22

guardaValor:
lw $t1, 0($t2) #carrega a primeira posiçao
addi $t1, $zero, 22 #soma em t1 o primeiro valor
sw $t1, 0($t2) #guarda
addi $t2, $t2, 4 #soma no apontador pra ir pro prox endereço
slt $t3, $t2, $t0 #enquanto n chegar no ultimo endereço, continua
beq $t3, $zero, busca #se chegar no ultimo espaço pula p buscar
j guardaValor #se n, continua guardando

busca:
add $t2, $zero, $zero #zera o contador
lw $t1, 0($t2) #carrega o valor na posiçao x
beq $t1, $s0, retorno1 #se esse valor for igual ao fornecido vai pra retorno1
addi $t2, $t2, 4 #se nao passa pro proximo
beq $t2, $t0, retorno2 #se o valor do contador chegar no mesmo do espaço é pq nao achou
j busca

retorno1:
sub $v0, $sp, $t2
j exit

retorno2:
addi $v0, $zero, -1
j exit

exit: