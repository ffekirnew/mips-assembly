################################################################
# add-two-numers.asm
# Computes the sum of two numbers and prints the result to
# standard output
################################################################

.text
.globl main

main:
	# read the first num
	li $v0, 4
	la $a0, p1
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	# read the second num
	li $v0, 4
	la $a0, p2
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	# add the nums
	add $a0, $t0, $t1
	
	# print the sum
	li $v0, 1
	syscall
	
	# exit from the program
	li $v0, 10
	syscall

.data
	p1: .asciiz "Enter the first num: "
	p2: .asciiz "Enter the second num: "