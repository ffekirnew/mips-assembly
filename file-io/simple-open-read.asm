	.data
fin: .asciiz "output.txt"
buffer: .space 14
buffer_length: .word 14

	.text
main:
# open the file
	li $v0, 13		# syscall service number for open file
	la $a0, fin		# load the file name for output
	li $a1, 0		# load the file open method (0: read, 1: write)
	li $a2, 0		# load the mode for writing
	syscall			
	move $s0, $v0		# store the file descriptor to $s0
	
# read from file just opened
	li $v0, 14		# syscall service number for write
	move $a0, $s0		# attain the file descriptor
	
	la $a1, buffer		# load the file to buffer
	la $a2, buffer_length	# load the buffer length
	syscall

# print the string
	li $v0, 4
	la $a0, buffer
	syscall
	

# close the file
	li $v0, 16		# syscall service num for close file
	move $a0, $s0		# attain the file descriptor
	syscall

# close the program
	li $v0, 10
	syscall