	.text
	.globl main
main:
	# load the datas
	la $s0, prompt
	la $s1, result
	
	# accept the number
	li $v0, 4
	move $a0, $s0
	syscall
	
	li $v0, 5
	syscall
	
	move $t1, $v0

	# do the not
	xor $t2, $zero, $t1
	
	# show the result
	li $v0, 4
	move $a0, $s1 # the result
	syscall
	
	move $a0, $t2
	
	li $v0, 1
	syscall

	# exit out of the program
	li $v0, 10
	syscall
	
	.data
prompt: .asciiz "Enter the number you want to do the not of: "
result: .asciiz "The result is: "