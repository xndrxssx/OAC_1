.data
array:
.space 4 #aloca 1 espaços no array

.text
.main:
li $t0, 4 #inicia a variavel q vai parar o contador
li $t1, 0 #temp q vai guardar o valor
li $t2, 0 #contador 
addi $s0, $zero, 11 #valor fornecido para comparar

guardaValor:
lw $t1, array($t2) #carrega a primeira posiçao
addi $t1, $zero, 11 #soma em t1 o primeiro valor
sw $t1, array($t2) #guarda
addi $t2, $t2, 4 #soma no apontador pra ir pro prox endereço
slt $t3, $t2, $t0 #enquanto n chegar no ultimo endereço, continua
beq $t3, $zero, busca #se chegar no ultimo espaço pula p buscar
j guardaValor #se n, continua guardando

busca:
add $t2, $zero, $zero #zera o contador
lw $t1, array($t2) #carrega o valor na posiçao x
beq $t1, $s0, retorno1 #se esse valor for igual ao fornecido vai pra retorno1
addi $t2, $t2, 4 #se nao passa pro proximo
beq $t2, $t0, retorno2 #se o valor do contador chegar no mesmo do espaço é pq nao achou
j busca

retorno1:
la $a0, array #subtrai o valord o contador do endereço pra saber onde aponta o incio
add $a0, $a0, $t2
add $v0, $a0, $zero
j exit

retorno2:
addi $v0, $zero, -1
j exit

exit:
