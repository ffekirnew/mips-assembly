	.text
	.globl main
main:
	# accept input
	li $v0, 4	# display the input prompt
	la $a0, prompt	#....
	syscall		#....
	
	li $v0, 5	# accept the input
	syscall		#....
	
	add $t0, $zero, $v0	# $t0 now holds the value of the input
	
	# check if the number is even or not
	addi $t1, $zero, 2	# store 2
	
	div $t0, $t0, $t1	# divide the input by 2
	
	mfhi $s0		# store the remainder in $s0
	
	# print result prompt
	li $v0, 4	# display the result prompt
	la $a0, result	#...
	syscall		#...
	
	add $a0, $zero, $s0
	
	li $v0, 1
	syscall
	
	# exit from the program
	li $v0, 10
	syscall
	
	.data
prompt: .asciiz "Enter the number you want to check in here:	"
result: .asciiz "The number is odd if next is 1, and even if next is 0.\nNext = "