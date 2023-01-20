.data
	char: .byte 'b'


.text
	# a char is printed just like a string
	li $v0, 4
	la $a0, char
	syscall
	
	# exit from the program
	li $v0, 10
	syscall