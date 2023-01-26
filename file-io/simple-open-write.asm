	.data
fout: .asciiz "output.txt"
buffer: .asciiz "Hello, world!\n"
buffer_length: .word 14

	.text
main:
# open the file
	li $v0, 13		# syscall service number for open file
	la $a0, fout		# load the file name for output
	li $a1, 1		# load the file open method (0: read, 1: write)
	li $a2, 0		# load the mode for writing
	syscall			
	move $s0, $v0		# store the file descriptor to $s0
	
# write to file just opened
	li $v0, 15		# syscall service number for write
	move $a0, $s0		# attain the file descriptor
	la $a1, buffer		# load the buffer
	lw $a2, buffer_length	# load the buffer length
	syscall
	

# close the file
	li $v0, 16		# syscall service num for close file
	move $a0, $s0		# attain the file descriptor
	syscall

# close the program
	li $v0, 10
	syscall