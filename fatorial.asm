main:
	add $v0, $zero, 5 #chama o func ler
	syscall
	add $t0, $v0, $zero  #add em $t0 o valor lido n
	addi $t1, $zero, 1 #int fac = 1
	addi $t2, $zero, 1 # i = 1
j for

for:
		beq $t2, $t0, exit # i == n
		addi $a1, $zero, 0 # inicializo o contador do fatorial
		add $t3, $t1, $zero #salvando o valor de fac antigo
		j fatorial
		continua2:
			addi $t2, $t2, 1
			j for

fatorial:
	#fac = fac * i;
	#multiplicar é somar esse numero fac, i vezes;
	bne $a1, $t2, operacao
	j continua2
	
operacao:
	add $t1, $t1, $t3 #adiciona em fac o valor de fac antigo
	addi $a1, $a1, 1 #adiciono 1 ao contador
	j fatorial

exit:
	addi $v0, $zero, 1
	add $a0, $zero,  $t1
	syscall