.text
.main:
	addi $s0, $zero, 10
	case10:
  		addi $t0, $zero, 10
  		bne $s0, $t0, case25
  		addi $s1, $zero, 10
  		j exit
	case25:
  		addi $t0, $zero, 25
  		bne $s0, $t0, default
  		addi $s1, $zero, 25
  		j exit
	default:  
  		add $s1, $zero, $zero
exit: