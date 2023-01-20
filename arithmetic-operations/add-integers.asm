# Author: Fikernew Birhanu
# Date: 20/01/2023
# Description: Adds two integers stored in memory

.data
	int_1: .word 10
	int_2: .word 20
	
.text
	# Section 1: load the first integer
	lw $t0, int_1($zero)
	
	# Section 2: load teh second integer
	lw $t1, int_2($zero)
	
	# Section 3: add the two integers in the registers
	add $t2, $t0, $t1 	# t2 = t0 + t1
	
	# Section 4: print the sum of the integers
	move $a0, $t2
	
	li $v0, 1
	syscall

	# Section 5: Exit the program
	li $v0, 10
	syscall