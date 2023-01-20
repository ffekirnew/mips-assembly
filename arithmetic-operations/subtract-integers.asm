.data
	int_1: .word 20
	int_2: .word 10

.text
	# Section 1: load first integer
	lw $s0, int_1

	# Section 2: load second integer
	lw $s1, int_2

	# Section 3: subtract the numbrs
	sub $t0, $s0, $s1
	add $a0, $zero, $t0
	
	# Section 4: print the solution
	li $v0, 1
	syscall

	# section 5: Exit out of the program
	li $v0, 10
	syscall 