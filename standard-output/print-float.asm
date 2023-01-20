.data
	PI: .float 3.14

.text
	li $v0, 2        # since we are printing a floating number, the code we will use will be 2
	lwc1 $f12, PI    # since floating numbers are not originally handled, they'll have to be loaded to the FPU (load word to coprocessor 1)
	syscall          # the usual system call to execute the instructions
	
	# exit from the program
	li $v0, 10
	syscall
