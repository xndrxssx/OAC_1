.data
	
	msg: .asciiz "Ola mundo!"

.text
	li $v0, 4
	la $a0, msg
	syscall