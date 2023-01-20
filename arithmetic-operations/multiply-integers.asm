# Author: Fikernew Birhanu
# Date: 20/01/2023
# Description: Adds two integers stored in memory

.data
	int_1: .word 10
	int_2: .word 20
.text
	# section 1: load first integer
	lw $t0, int_1

	# section 2: load second integer
	lw $t1, int_2

	# section 3: multiply the two numbers
	mul $t2, $t0, $t1

	# section 4: print the solution
	move $a0, $t2
	li $v0, 1
	syscall
	
	# Section 5: exit
	li $v0, 10
	syscall