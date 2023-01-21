.data
	string: .asciiz "This is a string."
	char: .byte 'A'
	integer: .word 21
	float: .float 3.14
	double: .double 7.072
	zero: .double 0.0
	
.text
	# Section 1: Print a String
	li $v0, 4
	la $a0, string
	syscall
	
	# Section 2: Print a Char
	li $v0, 4
	la $a0, char
	syscall
	
	# Section 3: Print an Int
	li $v0, 1
	lw $a0, integer
	syscall
	
	# Section 4: Print a float
	li $v0, 2
	lwc1 $f12, float
	syscall
	
	# Section 5: Print a double
	ldc1 $f2, double
	ldc1 $f0, zero
	
	li $v0, 3
	add.d $f12, $f2, $f0
	syscall
	
	# Section 6: Exit from the program
	li $v0, 10
	syscall