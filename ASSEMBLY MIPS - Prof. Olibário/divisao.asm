.text
	li $t0, 32
	li $t1, 5

	div $t0, $t1

	mflo $s0 #quociente da divisao vai pra "lo", aqui movemos o valor em lo para a var s0
	mfhi $s1 #resto