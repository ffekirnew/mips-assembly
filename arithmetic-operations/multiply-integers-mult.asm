# Author: Fikernew Birhanu
# Date: 20/01/2023
# Description: Adds two integers stored in memory

.data
.text
	# a work around to store our numbers in the nearby registers
	addi $t0, $zero, 1000
	addi $t1, $zero, 2000
	
	# using the mult operation
	mult $t0, $t1	                   # this operation will store the first 32 bits in hi and the last in lo
	
	mflo $s0                           # moves the lower bits of the operation to $s0 from lo (move form lo - mflo)
	
	li $v0, 1
	add $a0, $s0, $zero
	syscall
	
	li $v0, 10
	syscall
	
	
