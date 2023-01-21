.data
	n1: .word 10
	n2: .word 20
.text
	lw $s0, n1
	lw $s1, n2
	
	# Section 1: Add Integers
	li $v0, 1
	add $a0, $s0, $s1
	syscall
	
	# Section 2: Subtract Integers
	li $v0, 1
	sub $a0, $s0, $s1
	syscall
	
	# Section 3: Multiply Integers (mul)
	li $v0, 1
	mul $a0, $s0, $s1
	syscall
	
	# Section 4: Multiply Integers (mult)
	mult $s0, $s1
	
	mflo $s2
	
	li $v0, 1
	add $a0, $s2, $zero
	syscall
	
	# Section 5: Exit from the program
	li $v0, 10
	syscall