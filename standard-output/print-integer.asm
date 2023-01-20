.data
	int: .word 23

.text 
	# integers are stored as words and printed using the code 1
	li $v0, 1
	lw $a0, int
	syscall
	
	# exit from the program
	li $v0, 10
	syscall