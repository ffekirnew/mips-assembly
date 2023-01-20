.data
	prompt_1: .asciiz "Enter your weight: "
	prompt_2: .asciiz "Enter your height: "

.text
	# PSEUDOCODE
	# function bmi()
	# 	input weight: double
	#	input height: double
	#	print weight / height ** 2


	# accept weight
	li $v0, 4
	la $a0, prompt_1
	syscall
	# .....
	
	
	# accept height
	li $v0, 4
	la $a0, prompt_2
	syscall
	
	#  .....